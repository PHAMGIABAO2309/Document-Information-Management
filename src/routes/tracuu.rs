use actix_web::{get, web, Responder, HttpResponse};
use tera::{Tera, Context};

#[get("/tracuu")]
pub async fn get_tracuu(
    tmpl: web::Data<Tera>,
) -> impl Responder {
    let ctx = Context::new();
    match tmpl.render("vanbanmoi/tracuu.html", &ctx) {
        Ok(html) => HttpResponse::Ok().body(html),
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi render template: {}", e)),
    }
}
