use actix_web::{get, web, HttpResponse, Result, Error};
use tera::{Tera, Context};
#[get("/login")]
async fn get_login(tmpl: web::Data<Tera>) -> Result<HttpResponse, Error> {
    let html = tmpl.render("auth/login.html", &Context::new()).map_err(|e| actix_web::error::ErrorInternalServerError(e))?;
    Ok(HttpResponse::Ok().body(html))
}