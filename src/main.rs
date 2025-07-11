use kholuutruvanban_lib::routes; // Nhúng module routes

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    
    routes::main::start_server().await
}
