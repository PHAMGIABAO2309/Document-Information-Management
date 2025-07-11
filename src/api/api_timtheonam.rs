use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;
#[derive(Deserialize)]
struct QueryParams {
    filecatalog: Option<String>,
}
#[get("/api/search_filecatalog")]
pub async fn get_search_filecatalog_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let search_query = format!("%{}%", query.filecatalog.as_deref().unwrap_or(""));
    let query_result = sqlx::query!(
        "SELECT f.FileCode, f.Title, f.StartDate, f.dateupdate, doc.FileCatalog
        FROM files f
        JOIN infomation_documents_out doc  ON f.FileCode = doc.FileCode
        WHERE doc.FileCatalog LIKE ?",
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
                   "filecatalog" : &record.FileCatalog
                })
            }).collect();
            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}