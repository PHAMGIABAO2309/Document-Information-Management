use actix_web::{post, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use serde_json::json;
use crate::{db::login::GET_ACCOUNT_SQL, models::login::{LoginRequest, LoginForm}};

#[post("/api/login")]
pub async fn post_login(
    db_pool: web::Data<Pool<MySql>>, 
    form: web::Json<LoginRequest>
) -> impl Responder {
    match sqlx::query_as::<_, LoginForm>(GET_ACCOUNT_SQL)
        .bind(&form.email_or_phone)
        .bind(&form.email_or_phone)
        .bind(&form.password)
        .fetch_optional(db_pool.get_ref())
        .await 
    {
        Ok(Some(user)) => HttpResponse::Ok().json(json!({
            "status": "success",
            "user": {
                "id": user.id,
                "fullname": user.full_name,
                "email": user.email,
                "phone": user.phone
            }
        })),
        Ok(None) => HttpResponse::Unauthorized().json(json!({
            "status": "error",
            "message": "Email/Số điện thoại hoặc mật khẩu không đúng."
        })),
        Err(e) => {
            eprintln!("DB error: {}", e);
            HttpResponse::InternalServerError().body("Lỗi truy vấn database")
        }
    }
}
