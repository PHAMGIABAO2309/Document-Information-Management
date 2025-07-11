use sqlx::{MySql,  Row, FromRow, Transaction};
use serde::{Deserialize, Serialize};
use chrono::NaiveDate;

#[derive(Debug, Serialize, Deserialize, FromRow)]
pub struct AddFiles {
    pub title: Option<String>,
    pub start_date: Option<NaiveDate>,
    pub oran_id: Option<String>,
    pub file_no_nation: Option<String>,
    pub type_id: Option<String>,
    pub date_update: Option<NaiveDate>,

    pub file_catalog: Option<String>,
    pub subject: Option<String>,
    pub code_number: Option<String>,
    pub lan_id: Option<String>,
    pub receives: Option<String>,
    pub validity_status: Option<String>,
    pub code_notation: Option<String>,
    pub pos_id: Option<String>,

    pub subject_en: Option<String>,
}

pub fn gen_code(prefix: &str, last: Option<String>) -> String {
    last.and_then(|s| s.strip_prefix(prefix)?.parse::<u32>().ok())
        .map_or(format!("{}01", prefix), |n| format!("{}{:02}", prefix, n + 1))
}
pub async fn get_new_code( tx: &mut Transaction<'_, MySql>, sql: &str, column: &str, prefix: &str,
) -> String {
    let last_code = sqlx::query(sql)
        .fetch_optional(&mut **tx).await.ok().flatten()
        .and_then(|row| row.try_get::<String, _>(column).ok());
    gen_code(prefix, last_code)
}