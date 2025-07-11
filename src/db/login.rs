pub const GET_ACCOUNT_SQL: &str = "
    SELECT ID, FullName, Password, Email, PhoneNumber FROM account WHERE (Email = ? OR PhoneNumber = ?) AND Password = ?
";