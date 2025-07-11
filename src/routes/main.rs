use actix_web::{web, App, HttpServer};
use actix_files::Files;
use crate::db::connection::establish_connection; 
use crate::api::api_nghidinh::get_document_json; 
use crate::api::api_trangchu::get_listfiles_json; 
use crate::api::api_goiytimkiem::get_search_suggest_json; 
use crate::api::api_tomtat::get_tomtat_json; 
use crate::api::api_admin_danhsachvanban::get_danhsachvanban_json; 

use crate::routes::admin::get_admin; 
use crate::routes::admin_loaivanban::get_admin_loaivanban;
use crate::routes::trangchu::get_trangchu; 
use crate::routes::tracuu::get_tracuu;
use crate::routes::taive::generate_pdf;
use crate::routes::hienphap1980::get_hienphap1980; 
use crate::routes::hienphap2013::get_hienphap2013; 
use crate::routes::document::get_document;
use crate::routes::login::get_login;
use crate::routes::register::get_register;
use crate::routes::admin_nguoidung::get_admin_nguoidung;
use crate::routes::admin_coquan::get_admin_coquan;
use crate::routes::admin_vanbanden::get_admin_vanbanden;
use crate::routes::dinhkemfile::get_dinhkemfile;
use crate::routes::quenmatkhau::get_quenmatkhau;
use crate::routes::xacnhanmatkhau::get_xacnhanmatkhau;
use crate::routes::admin_trangchinh::get_admin_trangchinh;
use crate::routes::admin_thongke::get_admin_thongke;
use crate::routes::ocr_quanlyvanban::get_ocr_quanlyvanban;

use crate::api::api_admin_article::get_admin_article_data;
use crate::api::api_admin_themvanbanmoi::post_admin_themvanbanmoi;
use crate::api::api_thuoctinhvanban::get_thuoctinhvanban_json; 
use crate::api::api_timtheocoquan::get_search_organization_json; 
use crate::api::api_timtheoloaivanban::get_search_typedocuments_json;
use crate::api::api_timtheolinhvuc::get_search_fields_json;
use crate::api::api_admin_list_typedocuments::{get_listtype_json, post_admin_add_typedocuments, check_typedocuments_typeid, check_typedocuments_typename, update_typedocument, delete_typedocument};
use crate::api::api_register::post_register;
use crate::api::api_login::post_login;
use crate::api::api_admin_account::{get_account_json, update_account, delete_account};
use crate::api::api_admin_organization::{get_organization_json, post_admin_add_organization, get_new_organization_code, check_organization_name, update_organization, delete_organization };
use crate::api::api_timtheonam::get_search_filecatalog_json;
use crate::api::api_admin_themvanbanden::{post_admin_themvanbanden, delete_vanbanden, update_vanbanden};
use crate::api::api_dinhkemfile::get_dinhkemfile_json;
use crate::api::api_quenmatkhau::post_quenmatkhau;
use crate::api::api_xacnhanmatkhau::update_password;
use crate::api::api_admin_thongke::{get_thongke_json, get_thongketaikhoan_json, get_thongkeloaivanban_json, get_thongkecoquan_json};


pub async fn start_server() -> std::io::Result<()> {
    let (pool, tera, bind_address) = establish_connection().await;
    HttpServer::new(move || {
        App::new()
            .app_data(web::Data::new(pool.clone()))
            .app_data(web::Data::new(tera.clone()))
            .service(get_document_json) 
            .service(get_admin) 
            .service(get_listfiles_json) 
            .service(get_trangchu)
            .service(get_search_suggest_json)
            .service(get_tracuu) 
            .service(generate_pdf) 
            .service(get_tomtat_json) 
            .service(get_hienphap1980) 
            .service(get_hienphap2013)
            .service(get_document)
            .service(get_danhsachvanban_json)
            .service(get_admin_article_data)
            .service(post_admin_themvanbanmoi) 
            .service(get_thuoctinhvanban_json) 
            .service(get_search_organization_json) 
            .service(get_search_typedocuments_json)
            .service(get_search_fields_json)
            .service(get_admin_loaivanban) 
            .service(get_listtype_json)
            .service(get_login)
            .service(get_register)
            .service(post_register)
            .service(post_login)
            .service(get_admin_nguoidung)
            .service(get_account_json)
            .service(update_account)
            .service(delete_account)
            .service(get_admin_coquan)
            .service(get_organization_json)
            .service(post_admin_add_organization)
            .service(get_new_organization_code)
            .service(check_organization_name)
            .service(update_organization)
            .service(delete_organization)
            .service(post_admin_add_typedocuments)
            .service(check_typedocuments_typeid)
            .service(check_typedocuments_typename)
            .service(update_typedocument)
            .service(delete_typedocument)
            .service(get_search_filecatalog_json)
            .service(get_admin_vanbanden)
            .service(post_admin_themvanbanden)
            .service(get_dinhkemfile_json)
            .service(get_dinhkemfile)
            .service(delete_vanbanden)
            .service(update_vanbanden)
            .service(get_quenmatkhau)
            .service(get_xacnhanmatkhau)
            .service(post_quenmatkhau)
            .service(update_password)
            .service(get_admin_trangchinh)
            .service(get_admin_thongke)
            .service(get_thongke_json)
            .service(get_thongketaikhoan_json)
            .service(get_thongkeloaivanban_json)
            .service(get_thongkecoquan_json)
            .service(get_ocr_quanlyvanban)
            .service(Files::new("/static", "./static").show_files_listing())
            .service(Files::new("/luutrufile", "./static/luutrufile")
            .use_last_modified(true)
            .prefer_utf8(true))
    })
    .bind(&bind_address)?
    .run() 
    .await
}
