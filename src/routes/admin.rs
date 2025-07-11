use actix_web::{get, web, Responder, HttpResponse};
use tera::{Tera, Context};

#[get("/adminn")]
pub async fn get_admin(
    tmpl: web::Data<Tera>,
) -> impl Responder {
    let ctx = Context::new();
    match tmpl.render("admin/admin.html", &ctx) {
        Ok(html) => HttpResponse::Ok().body(html),
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi render template: {}", e)),
    }
}
