use actix_web::{get, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use serde::Deserialize;
use chrono::NaiveDate;
#[derive(Deserialize)]
pub struct QueryParams {
    // Nếu bạn có tham số truy vấn, thêm vào đây
}
#[get("/api/list_files")]
pub async fn get_listfiles_json(
    db_pool: web::Data<Pool<MySql>>,
   
) -> impl Responder {
    let query_result = sqlx::query!(
        "SELECT FileCode, Title, StartDate, dateupdate, path 
FROM files 
ORDER BY CAST(SUBSTRING(FileCode, 3) AS UNSIGNED) DESC;

"
    )
    .fetch_all(db_pool.get_ref())
    .await;

    match query_result {
        Ok(records) => {
            let list_title: Vec<_> = records.into_iter()
                .map(|row| {
                    json!({
                        "Title": row.Title,
                        "path": row.path,
                        "filecode": row.FileCode,
                        "startdate": row.StartDate.map(|d: NaiveDate| d.to_string()).unwrap_or("N/A".to_string()),
                        "dateupdate": row.dateupdate.map(|d: NaiveDate| d.to_string()).unwrap_or("N/A".to_string()),
                    })
                })
                .collect();
            HttpResponse::Ok().json(list_title)
        }
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi truy vấn database: {}", e)),
    }
}
