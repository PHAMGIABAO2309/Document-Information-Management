use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;
#[derive(Deserialize)]
struct QueryParams {
    titles: Option<String>,
}
#[get("/api/search_suggest")]
pub async fn get_search_suggest_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let search_query = format!("%{}%", query.titles.as_deref().unwrap_or("HS01"));
    
    let query_result = sqlx::query!(
        "SELECT FileCode, Title, StartDate, dateupdate, path FROM files WHERE Title LIKE ?",
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
                    "path": &record.path,
                    "startdate": &record.StartDate.map(|d: NaiveDate| d.to_string()).unwrap_or("N/A".to_string()),
                    "dateupdate": &record.dateupdate.map(|d: NaiveDate| d.to_string()).unwrap_or("N/A".to_string()),
                    
                })
            }).collect();
            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}