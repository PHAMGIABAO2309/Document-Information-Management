use actix_web::{get, web, Responder, HttpResponse, HttpRequest};
use tera::{Tera, Context};
use sqlx::{MySql, Pool};
use crate::models::document::Document;

#[get("/documents/{file_code}")]
pub async fn get_document(
    tmpl: web::Data<Tera>,
    db_pool: web::Data<Pool<MySql>>,
    path: web::Path<String>,
    req: HttpRequest,
) -> impl Responder {
    let file_code = path.into_inner();

    // Truy vấn cơ sở dữ liệu
    let result = sqlx::query_as::<_, Document>(
        r#"
        SELECT 
            CodeNumber as code_number,
            FileCatalog as file_catalog,
            Receives as receives,
            ido.Subject as subject,
            ValidityStatus as validitystatus,
            Title as title,
            f.StartDate as start_date,
            de.SubjectEN as subject_en,
            f.FileNoNation as file_no_nation,
            f.FileCode as file_code
        FROM infomation_documents_out ido
        JOIN files f ON ido.FileCode = f.FileCode
        JOIN documents_eng de ON ido.InfoId = de.InfoId
        WHERE f.FileCode = ?
        "#,
    )
    .bind(&file_code)
    .fetch_optional(db_pool.get_ref())
    .await;

    match result {
        Ok(Some(document)) => {
            let accept_header = req
                .headers()
                .get("Accept")
                .and_then(|v| v.to_str().ok())
                .unwrap_or("");

            // Nếu client yêu cầu JSON
            if accept_header.contains("application/json") {
                // Nếu muốn: trả luôn cả JSON và HTML bên trong object
                let mut ctx = Context::new();
                ctx.insert("document", &document);

                match tmpl.render("document.html", &ctx) {
                    Ok(html) => {
                        let full_response = serde_json::json!({
                            "data": document,
                            "html": html
                        });
                        HttpResponse::Ok().json(full_response)
                    }
                    Err(e) => HttpResponse::InternalServerError()
                        .body(format!("Lỗi render template: {}", e)),
                }
            } else {
                // Trả về HTML khi không phải JSON
                let mut ctx = Context::new();
                ctx.insert("document", &document);

                match tmpl.render("document.html", &ctx) {
                    Ok(html) => HttpResponse::Ok().content_type("text/html").body(html),
                    Err(e) => HttpResponse::InternalServerError()
                        .body(format!("Lỗi render template: {}", e)),
                }
            }
        }
        Ok(None) => HttpResponse::NotFound().body("Không tìm thấy văn bản"),
        Err(e) => HttpResponse::InternalServerError()
            .body(format!("Lỗi truy vấn database: {}", e)),
    }
}
