use actix_web::{post, web, Responder, HttpResponse};
use sqlx::{MySql, Pool};
use crate::db::themvanbanmoi::{INSERT_FILES_SQL, INSERT_IDO_SQL, INSERT_DOCUMENTS_EN_SQL, GET_LAST_FILECODE_SQL, GET_LAST_INFOID_SQL};
use crate::models::themvanbanmoi::{AddFiles, get_new_code};

#[post("/api/admin/themvanbanmoi")]
pub async fn post_admin_themvanbanmoi(
    db_pool: web::Data<Pool<MySql>>,
    form: web::Json<AddFiles>,
) -> impl Responder {
    match handle_insert(db_pool, form).await {
        Ok(_) => HttpResponse::Ok().body("Thêm văn bản và thông tin thành công"),
        Err(e) => HttpResponse::InternalServerError().body(format!("Lỗi: {}", e)),
    }
}

async fn handle_insert(
    db_pool: web::Data<Pool<MySql>>,
    form: web::Json<AddFiles>,
) -> Result<(), Box<dyn std::error::Error>> {
    let mut tx = db_pool.begin().await?;

    let new_file_code = get_new_code(&mut tx, GET_LAST_FILECODE_SQL, "FileCode", "HS").await;
    let new_info_id = get_new_code(&mut tx, GET_LAST_INFOID_SQL, "InfoId", "TT").await;

    sqlx::query(INSERT_FILES_SQL)
        .bind(&new_file_code)
        .bind(&form.title)
        .bind(&form.start_date)
        .bind(&form.oran_id)
        .bind(&form.file_no_nation)
        .bind(&form.type_id)
        .bind(&form.date_update)
        .execute(&mut *tx).await?;

    sqlx::query(INSERT_IDO_SQL)
        .bind(&new_info_id)
        .bind(&form.file_catalog)
        .bind(&form.subject)
        .bind(&form.code_number)
        .bind(&form.type_id)
        .bind(&form.receives)
        .bind(&new_file_code)
        .bind(&form.validity_status)
        .bind(&form.code_notation)
        .bind(&form.pos_id)
        .execute(&mut *tx).await?;

    sqlx::query(INSERT_DOCUMENTS_EN_SQL)
        .bind(&form.subject_en)
        .bind(&new_info_id)
        .execute(&mut *tx).await?;

    tx.commit().await?;
    Ok(())
}
