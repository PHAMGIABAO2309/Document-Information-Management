use actix_web::{get, web, Responder, HttpResponse};
use tera::{Tera, Context};

#[get("/trangchu")]
pub async fn get_trangchu(
    tmpl: web::Data<Tera>,
) -> impl Responder {
    let ctx = Context::new();
    match tmpl.render("vanbanmoi/trangchu.html", &ctx) {
        Ok(html) => HttpResponse::Ok().body(html),
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi render template: {}", e)),
    }
}
