use actix_web::{get, web, HttpResponse, Result, Error};
use tera::{Tera, Context};
#[get("/admin_vbden")]
async fn get_admin_vanbanden(tmpl: web::Data<Tera>) -> Result<HttpResponse, Error> {
    match tmpl.render("admin/admin_vanbanden.html", &Context::new()) {
        Ok(html) => Ok(HttpResponse::Ok().content_type("text/html").body(html)),
        Err(e) => {
            println!("Render error: {:?}", e); // log lỗi tại đây
            Err(actix_web::error::ErrorInternalServerError(e))
        }
    }
}
