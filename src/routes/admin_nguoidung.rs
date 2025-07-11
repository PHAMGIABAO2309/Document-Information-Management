use actix_web::{get, web, HttpResponse, Result, Error};
use tera::{Tera, Context};
#[get("/admin_nguoidung")]
async fn get_admin_nguoidung(tmpl: web::Data<Tera>) -> Result<HttpResponse, Error> {
    let html = tmpl.render("admin/admin_nguoidung.html", &Context::new()).map_err(|e| actix_web::error::ErrorInternalServerError(e))?;
    Ok(HttpResponse::Ok().body(html))
}