use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;
#[derive(Deserialize)]
struct QueryParams {
    fieldname: Option<String>,
}
#[get("/api/search_fields")]
pub async fn get_search_fields_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let search_query = format!("%{}%", query.fieldname.as_deref().unwrap_or(""));
    let query_result = sqlx::query!(
        "SELECT f.FileCode, f.Title, f.StartDate, f.dateupdate, fi.FieldName
        FROM files f
        JOIN infomation_documents_out ido ON f.FileCode = ido.FileCode
        JOIN field fi ON fi.FieldCode = ido.FieldCode
        WHERE fi.FieldName LIKE  ?",
        search_query
    )
    .fetch_all(db_pool.get_ref())
    .await;
    match query_result {
        Ok(records) => {
            let documents: Vec<_> = records.iter().map(|record| {
                json!({
                    "Title": &record.Title,
                    "filecode": &record.FileCode,
                    "startdate": &record.StartDate.map(|d: NaiveDate| d.to_string()).unwrap_or("N/A".to_string()),
                    "dateupdate": &record.dateupdate.map(|d: NaiveDate| d.to_string()).unwrap_or("N/A".to_string()),
                    "FieldName": &record.FieldName,
                })
            }).collect();
            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}