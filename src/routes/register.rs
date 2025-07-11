use actix_web::{get, web, HttpResponse, Result, Error};
use tera::{Tera, Context};
#[get("/register")]
async fn get_register(tmpl: web::Data<Tera>) -> Result<HttpResponse, Error> {
    let html = tmpl.render("auth/register.html", &Context::new()).map_err(|e| actix_web::error::ErrorInternalServerError(e))?;
    Ok(HttpResponse::Ok().body(html))
}