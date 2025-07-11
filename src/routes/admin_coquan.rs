use actix_web::{get, web, HttpResponse, Result, Error};
use tera::{Tera, Context};
#[get("/admin_coquan")]
async fn get_admin_coquan(tmpl: web::Data<Tera>) -> Result<HttpResponse, Error> {
    let html = tmpl.render("admin/admin_coquan.html", &Context::new()).map_err(|e| actix_web::error::ErrorInternalServerError(e))?;
    Ok(HttpResponse::Ok().body(html))
}