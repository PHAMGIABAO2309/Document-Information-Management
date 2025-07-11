use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;
#[derive(Deserialize)]
struct QueryParams {
    typename: Option<String>,
}
#[get("/api/search_typedocuments")]
pub async fn get_search_typedocuments_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let search_query = format!("%{}%", query.typename.as_deref().unwrap_or(""));
    let query_result = sqlx::query!(
        "SELECT f.FileCode, f.Title, f.StartDate, f.dateupdate, t.TypeName
        FROM files f
        JOIN type_documents t ON f.TypeId = t.TypeId
        WHERE t.TypeName LIKE  ?",
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
                   "TypeName": &record.TypeName,
                })
            }).collect();
            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}