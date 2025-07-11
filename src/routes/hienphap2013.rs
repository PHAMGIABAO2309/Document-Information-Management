use actix_web::{get, web, Responder, HttpResponse};
use tera::{Tera, Context};

#[get("/hienphap_nam2013")]
pub async fn get_hienphap2013(
    tmpl: web::Data<Tera>,
) -> impl Responder {
    let ctx = Context::new();
    match tmpl.render("hienphap/hienphap2013.html", &ctx) {
        Ok(html) => HttpResponse::Ok().body(html),
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi render template: {}", e)),
    }
}
