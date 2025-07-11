use actix_web::{get, web, Responder, HttpResponse};
use tera::{Tera, Context};

#[get("/hienphap_nam1980")]
pub async fn get_hienphap1980(
    tmpl: web::Data<Tera>,
) -> impl Responder {
    let ctx = Context::new();
    match tmpl.render("hienphap/hienphap1980.html", &ctx) {
        Ok(html) => HttpResponse::Ok().body(html),
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi render template: {}", e)),
    }
}

