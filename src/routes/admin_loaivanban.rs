use actix_web::{get, web, HttpResponse, Result, Error};
use tera::{Tera, Context};
#[get("/admin_loaivanban")]
async fn get_admin_loaivanban(tmpl: web::Data<Tera>) -> Result<HttpResponse, Error> {
    let html = tmpl.render("admin/admin_loaivanban.html", &Context::new()).map_err(|e| actix_web::error::ErrorInternalServerError(e))?;
    Ok(HttpResponse::Ok().body(html))
}