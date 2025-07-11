use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;

#[derive(Deserialize)]
pub struct QueryParams {
    pub file_code: Option<String>,
}

#[get("/api/document")]
pub async fn get_document_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let file_code = query.file_code.as_deref().unwrap_or("HS01");

    let query_result = sqlx::query!(
        "SELECT f.FileCode, CodeNumber, FileCatalog, Receives, ido.Subject, ValidityStatus, Title, f.StartDate, de.SubjectEN, f.FileNoNation
        FROM infomation_documents_out ido, files f, documents_eng de
        WHERE ido.FileCode = f.FileCode
        AND ido.InfoId = de.InfoId
        AND f.FileCode = ?;",
        file_code
    )
    .fetch_all(db_pool.get_ref())
    .await;

    match query_result {
        Ok(records) => {
            let documents: Vec<_> = records.iter().map(|record| {
                json!({
                    "FileCode": &record.FileCode,
                    "CodeNumber": &record.CodeNumber,
                    "FileCatalog": &record.FileCatalog,
                    "Receives": &record.Receives,
                    "Subject": &record.Subject,
                    "ValidityStatus": &record.ValidityStatus,
                    "Title": &record.Title,
                    "StartDate": &record.StartDate.map(|d: NaiveDate| d.to_string()).unwrap_or("N/A".to_string()),
                    "SubjectEN": &record.SubjectEN,
                    "FileNoNation": &record.FileNoNation,
                })
            }).collect();
            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}
