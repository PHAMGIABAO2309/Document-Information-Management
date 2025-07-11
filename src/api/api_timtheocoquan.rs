use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;
#[derive(Deserialize)]
struct QueryParams {
    oranname: Option<String>,
}
#[get("/api/search_organization")]
pub async fn get_search_organization_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let search_query = format!("%{}%", query.oranname.as_deref().unwrap_or(""));
    let query_result = sqlx::query!(
        "SELECT f.FileCode, f.Title, f.StartDate, f.dateupdate, org.OranName
        FROM files f
        JOIN organization org ON f.OranId = org.OranId
        WHERE org.OranName LIKE ?",
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
                    "OranName": &record.OranName,
                })
            }).collect();
            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}