use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool, Row};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;

#[derive(Deserialize)]
struct QueryParams {
    file_code: Option<String>,
}

#[get("/api/tomtat")]
pub async fn get_tomtat_json(
    db_pool: web::Data<Pool<MySql>>,
    query: web::Query<QueryParams>,
) -> impl Responder {
    let file_code = query.file_code.as_deref().unwrap_or("HS01");

    let query_result = sqlx::query(
        r#"
        SELECT 
    org.OranName, typeDoc.TypeName, 
    p.SingerInfo, 
    f.StartDate,  f.EndDate,  f.FileNoNation,  f.Title, 
    doc.PosId, 
    fi.FieldName
FROM 
    organization org
    JOIN Files f ON f.OranId = org.OranId
    JOIN infomation_documents_out doc ON doc.FileCode = f.FileCode
    JOIN type_documents typeDoc ON doc.TypeId = typeDoc.TypeId
    JOIN positions p ON  p.PosId = doc.PosId
    LEFT JOIN field fi ON doc.FieldCode = fi.FieldCode 
WHERE 
    doc.FileCode = ?
        "#
    )
    .bind(file_code)
    .fetch_all(db_pool.get_ref())
    .await;

    match query_result {
        Ok(records) => {
            let documents: Vec<_> = records.iter().map(|record| {
                json!({
                    "OranName": record.try_get::<String, _>("OranName").unwrap_or_default(),
                    "TypeName": record.try_get::<String, _>("TypeName").unwrap_or_default(),
                    "SingerInfo": record.try_get::<String, _>("SingerInfo").unwrap_or_default(),
                    "StartDate": record.try_get::<NaiveDate, _>("StartDate").map(|d| d.to_string()).unwrap_or("N/A".to_string()),
                    "EndDate": record.try_get::<NaiveDate, _>("EndDate").map(|d| d.to_string()).unwrap_or("N/A".to_string()),
                    "FileNoNation": record.try_get::<String, _>("FileNoNation").unwrap_or_default(),
                    "Title": record.try_get::<String, _>("Title").unwrap_or_default(),
                    "PosId": record.try_get::<i32, _>("PosId").unwrap_or_default(),
                    "FieldName": record.try_get::<String, _>("FieldName").unwrap_or_default(),
                })
            }).collect();

            HttpResponse::Ok().json(documents)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}
