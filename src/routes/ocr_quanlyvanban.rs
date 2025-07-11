use actix_web::{get, web, HttpResponse, Result, Error};
use tera::{Tera, Context};
#[get("/ocr/quanlyvanban")]
async fn get_ocr_quanlyvanban(tmpl: web::Data<Tera>) -> Result<HttpResponse, Error> {
    match tmpl.render("ocr/quanlyvanbanocr.html", &Context::new()) {
        Ok(html) => Ok(HttpResponse::Ok().content_type("text/html").body(html)),
        Err(e) => {
            println!("Render error: {:?}", e); // log lỗi tại đây
            Err(actix_web::error::ErrorInternalServerError(e))
        }
    }
}
