use actix_web::{post, web, HttpResponse};
use serde::Deserialize;
use std::process::Command;
use std::fs;
use std::env;
#[derive(Deserialize)]
struct HtmlPayload {
    html: String,
}
#[post("/generate-pdf")]
async fn generate_pdf(payload: web::Json<HtmlPayload>) -> HttpResponse {
    let html_content = &payload.html; 
    let mut filename = env::temp_dir();
    filename.push(format!("{}.html", uuid::Uuid::new_v4()));
    let pdfname = filename.with_extension("pdf"); // đổi thành .pdf


    // Ghi nội dung HTML vào file tạm
    if let Err(err) = fs::write(&filename, html_content) {
        return HttpResponse::InternalServerError().body(format!("Lỗi ghi file HTML: {}", err));
    }

    // Dùng wkhtmltopdf để chuyển HTML sang PDF
    let output = Command::new("wkhtmltopdf")
        .arg(&filename)
        .arg(&pdfname)
        .output();

    match output {
        Ok(out) if out.status.success() => {
            let pdf_bytes = fs::read(&pdfname).unwrap_or_default();
            // Xoá file tạm
            let _ = fs::remove_file(&filename);
            let _ = fs::remove_file(&pdfname);

            HttpResponse::Ok()
            .content_type("application/pdf")
            .append_header(("Content-Disposition", "attachment; filename=nghi-dinh.pdf"))
            .body(pdf_bytes)
        
        }
        Ok(out) => {
            HttpResponse::InternalServerError().body(format!("Lỗi tạo PDF: {}", String::from_utf8_lossy(&out.stderr)))
        }
        Err(err) => {
            HttpResponse::InternalServerError().body(format!("Lỗi chạy wkhtmltopdf: {}", err))
        }
    }
}


