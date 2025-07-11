use dotenvy::dotenv;
use sqlx::{MySql, Pool};
use std::env;
use tera::Tera;

pub async fn establish_connection() -> (Pool<MySql>, Tera, String) {
    dotenv().ok();
    let database_url = env::var("DATABASE_URL").expect("Không tìm thấy DATABASE_URL trong .env");
    let host = env::var("HOST").unwrap_or_else(|_| "127.0.0.1".to_string());
    let port = env::var("PORT").unwrap_or_else(|_| "3000".to_string());
    let bind_address = format!("{}:{}", host, port);
    let pool = Pool::<MySql>::connect(&database_url).await.expect("Kết nối MySQL thất bại");
    let tera = Tera::new("templates/**/*").expect("Không thể load templates");
    println!("✅ Kết nối MySQL thành công!!");
    println!("🌍 Server chạy tại http://{}/trangchu", bind_address);
    (pool, tera, bind_address)
    
}
