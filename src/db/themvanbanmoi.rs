pub const GET_LAST_FILECODE_SQL: &str = "SELECT FileCode FROM files ORDER BY FileCode DESC LIMIT 1";

pub const GET_LAST_INFOID_SQL: &str = "SELECT InfoId FROM infomation_documents_out ORDER BY InfoId DESC LIMIT 1";

pub const INSERT_FILES_SQL: &str = "INSERT INTO files (FileCode, Title, StartDate, OranId, FileNoNation, TypeId, dateupdate) 
VALUES (?, ?, ?, ?, ?, ?, ?)";

pub const INSERT_IDO_SQL: &str = "INSERT INTO infomation_documents_out (InfoId, FileCatalog, Subject, CodeNumber, LanId, TypeId, Receives, FileCode, ValidityStatus, CodeNotation, PosId) 
VALUES (?, ?, ?, ?, 'VN', ?, ?, ?, ?, ?, ?)";

pub const INSERT_DOCUMENTS_EN_SQL: &str = "INSERT INTO documents_eng (LanId, SubjectEN, InfoId) 
VALUES ('EN', ?, ?)";