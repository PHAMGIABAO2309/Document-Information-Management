use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;

#[derive(Deserialize)]
pub struct QueryParams {
    pub file_code: Option<String>,
}
#[get("/api/dinhkemfile")]
pub async fn get_dinhkemfile_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let file_code = query.file_code.as_deref().unwrap_or("HS01");

    let query_result = sqlx::query!(
        "SELECT FileCode, Title, path FROM `files` WHERE FileCode =  ?;",
        file_code
    )
    .fetch_all(db_pool.get_ref())
    .await;

    match query_result {
        Ok(records) => {
            let documents: Vec<_> = records.iter().map(|record| {
                json!({
                    "FileCode": &record.FileCode,
                    "Title": &record.Title,
                    "path": &record.path,
                })
            }).collect();
            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}
