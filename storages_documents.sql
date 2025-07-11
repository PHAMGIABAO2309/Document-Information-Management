-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2025 lúc 11:32 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `storages_documents`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `ID` varchar(30) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`ID`, `FullName`, `Password`, `Email`, `PhoneNumber`) VALUES
('Admin', 'Admin', '123', 'admin@storage.com', NULL),
('TK001', 'Nguyễn Văn An', '123456', 'nguyenvanan001@gmail.com', '0902345678'),
('TK002', 'Trần Thị Bích', '123456', 'tranthibich002@gmail.com', '0913456789'),
('TK003', 'Lê Văn Cường', '123456', 'levancuong003@gmail.com', '0984567890'),
('TK004', 'Phạm Thị Đào', '123456', 'phamthidao004@gmail.com', '0935678901'),
('TK005', 'Hoàng Minh Đức', '123456', 'hoangminhduc005@gmail.com', '0926789012'),
('TK006', 'Đoàn Thị Giang', '123456', 'doanthigiang006@gmail.com', '0947890123'),
('TK007', 'Bùi Văn Hải', '123456', 'buivanhai007@gmail.com', '0978901234'),
('TK008', 'Đặng Thị Huệ', '123456', 'dangthihue008@gmail.com', '0969012345'),
('TK009', 'Nguyễn Văn Khoa', '123456', 'nguyenvankhoa009@gmail.com', '0950123456'),
('TK01', 'Phạm Gia Bảo', '123', 'bao0@gmail.com', '08923482384'),
('TK010', 'Trần Minh Long', '123456', 'tranminhlong010@gmail.com', '0931234567'),
('TK011', 'Nguyễn Thị Mai', '123456', 'nguyenthimai011@gmail.com', '0902345678'),
('TK012', 'Lê Hoàng Nam', '123456', 'lehoangnam012@gmail.com', '0913456789'),
('TK013', 'Phạm Văn Tiến', '123456', 'phamvantien013@gmail.com', '0984567890'),
('TK014', 'Trần Thanh Tâm', '123456', 'tranthanhtam014@gmail.com', '0935678901'),
('TK015', 'Đặng Văn Sơn', '123456', 'dangvanson015@gmail.com', '0926789012'),
('TK016', 'Bùi Thị Thu', '123456', 'buithithu016@gmail.com', '0947890123'),
('TK017', 'Hoàng Văn Bảo', '123456', 'hoangvanbao017@gmail.com', '0978901234'),
('TK018', 'Nguyễn Tuấn Anh', '123456', 'nguyentuananh018@gmail.com', '0969012345'),
('TK019', 'Lê Thị Hồng', '123456', 'lethihong019@gmail.com', '0950123456'),
('TK020', 'Trần Văn Linh', '123456', 'tranvanlinh020@gmail.com', '0931234567'),
('TK021', 'Nguyễn Văn Bình', '123456', 'nguyenvanbinh021@gmail.com', '0902345678'),
('TK022', 'Trần Thị Dung', '123456', 'tranthidung022@gmail.com', '0913456789'),
('TK023', 'Lê Văn Hùng', '123456', 'levanhung023@gmail.com', '0984567890'),
('TK024', 'Phạm Thị Hoa', '123456', 'phamthihoa024@gmail.com', '0935678901'),
('TK025', 'Hoàng Minh Quang', '123456', 'hoangminhquang025@gmail.com', '0926789012'),
('TK026', 'Đoàn Thị Lan', '123456', 'doanthilan026@gmail.com', '0947890123'),
('TK027', 'Bùi Văn Phúc', '123456', 'buivanphuc027@gmail.com', '0978901234'),
('TK028', 'Đặng Thị Hạnh', '123456', 'dangthihanh028@gmail.com', '0969012345'),
('TK029', 'Nguyễn Văn Sơn', '123456', 'nguyenvanson029@gmail.com', '0950123456'),
('TK030', 'Trần Minh Hải', '123456', 'tranminhhai030@gmail.com', '0931234567'),
('TK031', 'Nguyễn Thị Thu', '123456', 'nguyenthithu031@gmail.com', '0902345678'),
('TK032', 'Lê Hoàng Phương', '123456', 'lehoangphuong032@gmail.com', '0913456789'),
('TK033', 'Phạm Văn Bình', '123456', 'phamvanbinh033@gmail.com', '0984567890'),
('TK034', 'Trần Thanh Sơn', '123456', 'tranthanhnson034@gmail.com', '0935678901'),
('TK035', 'Đặng Văn Hòa', '123456', 'dangvanhoa035@gmail.com', '0926789012'),
('TK036', 'Bùi Thị Hương', '123456', 'buithihuong036@gmail.com', '0947890123'),
('TK037', 'Hoàng Văn Nam', '123456', 'hoangvannam037@gmail.com', '0978901234'),
('TK038', 'Nguyễn Tuấn Minh', '123456', 'nguyentuanminh038@gmail.com', '0969012345'),
('TK039', 'Lê Thị Lan', '123456', 'lethilan039@gmail.com', '0950123456'),
('TK040', 'Trần Văn Phúc', '123456', 'tranvanphuc040@gmail.com', '0931234567'),
('TK041', 'Nguyễn Văn Hùng', '123456', 'nguyenvanhung041@gmail.com', '0902345678'),
('TK042', 'Trần Thị Thảo', '123456', 'tranthithao042@gmail.com', '0913456789'),
('TK043', 'Lê Văn Dũng', '123456', 'levandung043@gmail.com', '0984567890'),
('TK044', 'Phạm Thị Lan', '123456', 'phamthilan044@gmail.com', '0935678901'),
('TK045', 'Hoàng Minh Tâm', '123456', 'hoangminhtam045@gmail.com', '0926789012'),
('TK046', 'Đoàn Thị Hương', '123456', 'doanthihuong046@gmail.com', '0947890123'),
('TK047', 'Bùi Văn Long', '123456', 'buivanlong047@gmail.com', '0978901234'),
('TK048', 'Đặng Thị Hạnh', '123456', 'dangthihanh048@gmail.com', '0969012345'),
('TK049', 'Nguyễn Văn Dũng', '123456', 'nguyenvandung049@gmail.com', '0950123456'),
('TK050', 'Trần Minh Phúc', '123456', 'tranminhphuc050@gmail.com', '0931234567'),
('TK051', 'Nguyễn Văn Quang', '123456', 'nguyenvanquang051@gmail.com', '0901234567'),
('TK052', 'Trần Thị Hạnh', '123456', 'tranthihanh052@gmail.com', '0912345678'),
('TK053', 'Lê Văn Phúc', '123456', 'levanphuc053@gmail.com', '0983456789'),
('TK054', 'Phạm Thị Lan', '123456', 'phamthilan054@gmail.com', '0934567890'),
('TK055', 'Hoàng Minh Tuấn', '123456', 'hoangminhtuan055@gmail.com', '0925678901'),
('TK056', 'Đoàn Thị Mai', '123456', 'doanthimai056@gmail.com', '0946789012'),
('TK057', 'Bùi Văn Sơn', '123456', 'buivanson057@gmail.com', '0977890123'),
('TK058', 'Đặng Thị Hoa', '123456', 'dangthihoa058@gmail.com', '0968901234'),
('TK059', 'Nguyễn Văn Phúc', '123456', 'nguyenvanphuc059@gmail.com', '0959012345'),
('TK060', 'Trần Minh Hùng', '123456', 'tranminhhung060@gmail.com', '0930123456'),
('TK061', 'Nguyễn Thị Lan', '123456', 'nguyenthilan061@gmail.com', '0901234567'),
('TK062', 'Lê Hoàng Nam', '123456', 'lehoangnam062@gmail.com', '0912345678'),
('TK063', 'Phạm Văn Bình', '123456', 'phamvanbinh063@gmail.com', '0983456789'),
('TK064', 'Trần Thanh Tâm', '123456', 'tranthanhtam064@gmail.com', '0934567890'),
('TK065', 'Đặng Văn Hùng', '123456', 'dangvanhung065@gmail.com', '0925678901'),
('TK066', 'Bùi Thị Hoa', '123456', 'buithihoa066@gmail.com', '0946789012'),
('TK067', 'Hoàng Văn Sơn', '123456', 'hoangvanson067@gmail.com', '0977890123'),
('TK068', 'Nguyễn Tuấn Minh', '123456', 'nguyentuanminh068@gmail.com', '0968901234'),
('TK069', 'Lê Thị Hồng', '123456', 'lethihong069@gmail.com', '0959012345'),
('TK070', 'Trần Văn Long', '123456', 'tranvanlong070@gmail.com', '0930123456'),
('TK071', 'Nguyễn Văn Bình', '123456', 'nguyenvanbinh071@gmail.com', '0901234567'),
('TK072', 'Trần Thị Dung', '123456', 'tranthidung072@gmail.com', '0912345678'),
('TK073', 'Lê Văn Hùng', '123456', 'levanhung073@gmail.com', '0983456789'),
('TK074', 'Phạm Thị Hoa', '123456', 'phamthihoa074@gmail.com', '0934567890'),
('TK075', 'Hoàng Minh Quang', '123456', 'hoangminhquang075@gmail.com', '0925678901'),
('TK076', 'Đoàn Thị Lan', '123456', 'doanthilan076@gmail.com', '0946789012'),
('TK077', 'Bùi Văn Phúc', '123456', 'buivanphuc077@gmail.com', '0977890123'),
('TK078', 'Đặng Thị Hạnh', '123456', 'dangthihanh078@gmail.com', '0968901234'),
('TK079', 'Nguyễn Văn Sơn', '123456', 'nguyenvanson079@gmail.com', '0959012345'),
('TK080', 'Trần Minh Hải', '123456', 'tranminhhai080@gmail.com', '0930123456'),
('TK081', 'Nguyễn Thị Thu', '123456', 'nguyenthithu081@gmail.com', '0901234567'),
('TK082', 'Lê Hoàng Phương', '123456', 'lehoangphuong082@gmail.com', '0912345678'),
('TK083', 'Phạm Văn Bình', '123456', 'phamvanbinh083@gmail.com', '0983456789'),
('TK084', 'Trần Thanh Sơn', '123456', 'tranthanhnson084@gmail.com', '0934567890'),
('TK085', 'Đặng Văn Hòa', '123456', 'dangvanhoa085@gmail.com', '0925678901'),
('TK086', 'Bùi Thị Hương', '123456', 'buithihuong086@gmail.com', '0946789012'),
('TK087', 'Hoàng Văn Nam', '123456', 'hoangvannam087@gmail.com', '0977890123'),
('TK088', 'Nguyễn Tuấn Minh', '123456', 'nguyentuanminh088@gmail.com', '0968901234'),
('TK089', 'Lê Thị Lan', '123456', 'lethilan089@gmail.com', '0959012345'),
('TK090', 'Trần Văn Phúc', '123456', 'tranvanphuc090@gmail.com', '0930123456'),
('TK091', 'Nguyễn Văn Hùng', '123456', 'nguyenvanhung091@gmail.com', '0901234567'),
('TK092', 'Trần Thị Thảo', '123456', 'tranthithao092@gmail.com', '0912345678'),
('TK093', 'Lê Văn Dũng', '123456', 'levandung093@gmail.com', '0983456789'),
('TK094', 'Phạm Thị Lan', '123456', 'phamthilan094@gmail.com', '0934567890'),
('TK095', 'Hoàng Minh Tâm', '123456', 'hoangminhtam095@gmail.com', '0925678901'),
('TK096', 'Đoàn Thị Hương', '123456', 'doanthihuong096@gmail.com', '0946789012'),
('TK097', 'Bùi Văn Long', '123456', 'buivanlong097@gmail.com', '0977890123'),
('TK098', 'Đặng Thị Hạnh', '123456', 'dangthihanh098@gmail.com', '0968901234'),
('TK099', 'Nguyễn Văn Dũng', '123456', 'nguyenvandung099@gmail.com', '0959012345'),
('TK100', 'Trần Minh Phúc', '123456', 'tranminhphuc100@gmail.com', '0930123456'),
('TK101', 'Nguyễn Văn Kiên', '123456', 'nguyenvankien101@gmail.com', '0901234567'),
('TK102', 'Trần Thị Hương', '123456', 'tranthihuong102@gmail.com', '0912345678'),
('TK103', 'Lê Văn Bình', '123456', 'levanbinh103@gmail.com', '0983456789'),
('TK104', 'Phạm Thị Mai', '123456', 'phamthimai104@gmail.com', '0934567890'),
('TK105', 'Hoàng Minh Hùng', '123456', 'hoangminhhung105@gmail.com', '0925678901'),
('TK106', 'Đoàn Thị Thanh', '123456', 'doanthithanh106@gmail.com', '0946789012'),
('TK107', 'Bùi Văn Nam', '123456', 'buivannam107@gmail.com', '0977890123'),
('TK108', 'Đặng Thị Thu', '123456', 'dangthithu108@gmail.com', '0968901234'),
('TK109', 'Nguyễn Văn Lâm', '123456', 'nguyenvanlam109@gmail.com', '0959012345'),
('TK110', 'Trần Minh Quang', '123456', 'tranminhquang110@gmail.com', '0930123456'),
('TK111', 'Nguyễn Thị Hồng', '123456', 'nguyenthihong111@gmail.com', '0901234567'),
('TK112', 'Lê Hoàng Sơn', '123456', 'lehoangson112@gmail.com', '0912345678'),
('TK113', 'Phạm Văn Hùng', '123456', 'phamvanhung113@gmail.com', '0983456789'),
('TK114', 'Trần Thanh Bình', '123456', 'tranthanbinh114@gmail.com', '0934567890'),
('TK115', 'Đặng Văn Tâm', '123456', 'dangvantam115@gmail.com', '0925678901'),
('TK116', 'Bùi Thị Mai', '123456', 'buithimai116@gmail.com', '0946789012'),
('TK117', 'Hoàng Văn Quang', '123456', 'hoangvanquang117@gmail.com', '0977890123'),
('TK118', 'Nguyễn Tuấn Anh', '123456', 'nguyentuananh118@gmail.com', '0968901234'),
('TK119', 'Lê Thị Hương', '123456', 'lethihuong119@gmail.com', '0959012345'),
('TK120', 'Trần Văn Nam', '123456', 'tranvannam120@gmail.com', '0930123456'),
('TK121', 'Nguyễn Văn Phúc', '123456', 'nguyenvanphuc121@gmail.com', '0901234567'),
('TK122', 'Trần Thị Hạnh', '123456', 'tranthihanh122@gmail.com', '0912345678'),
('TK123', 'Lê Văn Quang', '123456', 'levanquang123@gmail.com', '0983456789'),
('TK124', 'Phạm Thị Mai', '123456', 'phamthimai124@gmail.com', '0934567890'),
('TK125', 'Hoàng Minh Sơn', '123456', 'hoangminhson125@gmail.com', '0925678901'),
('TK126', 'Đoàn Thị Hồng', '123456', 'doanthihong126@gmail.com', '0946789012'),
('TK127', 'Bùi Văn Hùng', '123456', 'buivanhung127@gmail.com', '0977890123'),
('TK128', 'Đặng Thị Lan', '123456', 'dangthilan128@gmail.com', '0968901234'),
('TK129', 'Nguyễn Văn Sơn', '123456', 'nguyenvanson129@gmail.com', '0959012345'),
('TK130', 'Trần Minh Tâm', '123456', 'tranminhtam130@gmail.com', '0930123456'),
('TK131', 'Nguyễn Thị Thu', '123456', 'nguyenthithu131@gmail.com', '0901234567'),
('TK132', 'Lê Hoàng Nam', '123456', 'lehoangnam132@gmail.com', '0912345678'),
('TK133', 'Phạm Văn Bình', '123456', 'phamvanbinh133@gmail.com', '0983456789'),
('TK134', 'Trần Thanh Hùng', '123456', 'tranthanhhung134@gmail.com', '0934567890'),
('TK135', 'Đặng Văn Long', '123456', 'dangvanlong135@gmail.com', '0925678901'),
('TK136', 'Bùi Thị Mai', '123456', 'buithimai136@gmail.com', '0946789012'),
('TK137', 'Hoàng Văn Sơn', '123456', 'hoangvanson137@gmail.com', '0977890123'),
('TK138', 'Nguyễn Tuấn Minh', '123456', 'nguyentuanminh138@gmail.com', '0968901234'),
('TK139', 'Lê Thị Hồng', '123456', 'lethihong139@gmail.com', '0959012345'),
('TK140', 'Trần Văn Quang', '123456', 'tranvanquang140@gmail.com', '0930123456'),
('TK141', 'Nguyễn Văn Bình', '123456', 'nguyenvanbinh141@gmail.com', '0901234567'),
('TK142', 'Trần Thị Hoa', '123456', 'tranthihoa142@gmail.com', '0912345678'),
('TK143', 'Lê Văn Hùng', '123456', 'levanhung143@gmail.com', '0983456789'),
('TK144', 'Phạm Thị Mai', '123456', 'phamthimai144@gmail.com', '0934567890'),
('TK145', 'Hoàng Minh Tâm', '123456', 'hoangminhtam145@gmail.com', '0925678901'),
('TK146', 'Đoàn Thị Hương', '123456', 'doanthihuong146@gmail.com', '0946789012'),
('TK147', 'Bùi Văn Sơn', '123456', 'buivanson147@gmail.com', '0977890123'),
('TK148', 'Đặng Thị Lan', '123456', 'dangthilan148@gmail.com', '0968901234'),
('TK149', 'Nguyễn Văn Quang', '123456', 'nguyenvanquang149@gmail.com', '0959012345'),
('TK150', 'Trần Minh Hùng', '123456', 'tranminhhung150@gmail.com', '0930123456'),
('TK151', 'Nguyễn Thị Thu', '123456', 'nguyenthithu151@gmail.com', '0901234567'),
('TK152', 'Lê Văn Nam', '123456', 'levannam152@gmail.com', '0912345678'),
('TK153', 'Phạm Thị Hoa', '123456', 'phamthihoa153@gmail.com', '0983456789'),
('TK154', 'Trần Văn Sơn', '123456', 'tranvanson154@gmail.com', '0934567890'),
('TK155', 'Đặng Thị Mai', '123456', 'dangthimai155@gmail.com', '0925678901'),
('TK156', 'Bùi Văn Hùng', '123456', 'buivanhung156@gmail.com', '0946789012'),
('TK157', 'Hoàng Thị Lan', '123456', 'hoangthilan157@gmail.com', '0977890123'),
('TK158', 'Nguyễn Tuấn Anh', '123456', 'nguyentuananh158@gmail.com', '0968901234'),
('TK159', 'Lê Thị Hương', '123456', 'lethihuong159@gmail.com', '0959012345'),
('TK160', 'Trần Văn Nam', '123456', 'tranvannam160@gmail.com', '0930123456'),
('TK161', 'Nguyễn Văn Phúc', '123456', 'nguyenvanphuc161@gmail.com', '0901234567'),
('TK162', 'Trần Thị Hạnh', '123456', 'tranthihanh162@gmail.com', '0912345678'),
('TK163', 'Lê Văn Quang', '123456', 'levanquang163@gmail.com', '0983456789'),
('TK164', 'Phạm Thị Mai', '123456', 'phamthimai164@gmail.com', '0934567890'),
('TK165', 'Hoàng Minh Sơn', '123456', 'hoangminhson165@gmail.com', '0925678901'),
('TK166', 'Đoàn Thị Hồng', '123456', 'doanthihong166@gmail.com', '0946789012'),
('TK167', 'Bùi Văn Hùng', '123456', 'buivanhung167@gmail.com', '0977890123'),
('TK168', 'Đặng Thị Lan', '123456', 'dangthilan168@gmail.com', '0968901234'),
('TK169', 'Nguyễn Văn Sơn', '123456', 'nguyenvanson169@gmail.com', '0959012345'),
('TK170', 'Trần Minh Tâm', '123456', 'tranminhtam170@gmail.com', '0930123456'),
('TK171', 'Nguyễn Thị Thu', '123456', 'nguyenthithu171@gmail.com', '0901234567'),
('TK172', 'Lê Hoàng Nam', '123456', 'lehoangnam172@gmail.com', '0912345678'),
('TK173', 'Phạm Văn Bình', '123456', 'phamvanbinh173@gmail.com', '0983456789'),
('TK174', 'Trần Thanh Hùng', '123456', 'tranthanhhung174@gmail.com', '0934567890'),
('TK175', 'Đặng Văn Long', '123456', 'dangvanlong175@gmail.com', '0925678901'),
('TK176', 'Bùi Thị Mai', '123456', 'buithimai176@gmail.com', '0946789012'),
('TK177', 'Hoàng Văn Sơn', '123456', 'hoangvanson177@gmail.com', '0977890123'),
('TK178', 'Nguyễn Tuấn Minh', '123456', 'nguyentuanminh178@gmail.com', '0968901234'),
('TK179', 'Lê Thị Hồng', '123456', 'lethihong179@gmail.com', '0959012345'),
('TK180', 'Trần Văn Quang', '123456', 'tranvanquang180@gmail.com', '0930123456'),
('TK181', 'Nguyễn Văn Bình', '123456', 'nguyenvanbinh181@gmail.com', '0901234567'),
('TK182', 'Trần Thị Hoa', '123456', 'tranthihoa182@gmail.com', '0912345678'),
('TK183', 'Lê Văn Hùng', '123456', 'levanhung183@gmail.com', '0983456789'),
('TK184', 'Phạm Thị Mai', '123456', 'phamthimai184@gmail.com', '0934567890'),
('TK185', 'Hoàng Minh Tâm', '123456', 'hoangminhtam185@gmail.com', '0925678901'),
('TK186', 'Đoàn Thị Hương', '123456', 'doanthihuong186@gmail.com', '0946789012'),
('TK187', 'Bùi Văn Sơn', '123456', 'buivanson187@gmail.com', '0977890123'),
('TK188', 'Đặng Thị Lan', '123456', 'dangthilan188@gmail.com', '0968901234'),
('TK189', 'Nguyễn Văn Quang', '123456', 'nguyenvanquang189@gmail.com', '0959012345'),
('TK190', 'Trần Minh Hùng', '123456', 'tranminhhung190@gmail.com', '0930123456'),
('TK191', 'Nguyễn Thị Thu', '123456', 'nguyenthithu191@gmail.com', '0901234567'),
('TK192', 'Lê Văn Nam', '123456', 'levannam192@gmail.com', '0912345678'),
('TK193', 'Phạm Thị Hoa', '123456', 'phamthihoa193@gmail.com', '0983456789'),
('TK194', 'Trần Văn Sơn', '123456', 'tranvanson194@gmail.com', '0934567890'),
('TK195', 'Đặng Thị Mai', '123456', 'dangthimai195@gmail.com', '0925678901'),
('TK196', 'Bùi Văn Hùng', '123456', 'buivanhung196@gmail.com', '0946789012'),
('TK197', 'Hoàng Thị Lan', '123456', 'hoangthilan197@gmail.com', '0977890123'),
('TK198', 'Nguyễn Tuấn Anh', '123456', 'nguyentuananh198@gmail.com', '0968901234'),
('TK199', 'Lê Thị Hương', '123456', 'lethihuong199@gmail.com', '0959012345'),
('TK200', 'Trần Văn Nam', '123456', 'tranvannam200@gmail.com', '0930123456'),
('TK201', 'Nguyễn Văn Phúc', '123456', 'nguyenvanphuc201@gmail.com', '0901234567'),
('TK202', 'Trần Thị Hạnh', '123456', 'tranthihanh202@gmail.com', '0912345678'),
('TK203', 'Lê Văn Quang', '123456', 'levanquang203@gmail.com', '0983456789'),
('TK204', 'Phạm Thị Mai', '123456', 'phamthimai204@gmail.com', '0934567890'),
('TK205', 'Hoàng Minh Sơn', '123456', 'hoangminhson205@gmail.com', '0925678901'),
('TK206', 'Đoàn Thị Hồng', '123456', 'doanthihong206@gmail.com', '0946789012'),
('TK207', 'Bùi Văn Hùng', '123456', 'buivanhung207@gmail.com', '0977890123'),
('TK208', 'Đặng Thị Lan', '123456', 'dangthilan208@gmail.com', '0968901234'),
('TK209', 'Nguyễn Văn Sơn', '123456', 'nguyenvanson209@gmail.com', '0959012345'),
('TK210', 'Trần Minh Tâm', '123456', 'tranminhtam210@gmail.com', '0930123456'),
('TK211', 'Nguyễn Thị Thu', '123456', 'nguyenthithu211@gmail.com', '0901234567'),
('TK212', 'Lê Hoàng Nam', '123456', 'lehoangnam212@gmail.com', '0912345678'),
('TK213', 'Phạm Văn Bình', '123456', 'phamvanbinh213@gmail.com', '0983456789'),
('TK214', 'Trần Thanh Hùng', '123456', 'tranthanhhung214@gmail.com', '0934567890'),
('TK215', 'Đặng Văn Long', '123456', 'dangvanlong215@gmail.com', '0925678901'),
('TK216', 'Bùi Thị Mai', '123456', 'buithimai216@gmail.com', '0946789012'),
('TK217', 'Hoàng Văn Sơn', '123456', 'hoangvanson217@gmail.com', '0977890123'),
('TK218', 'Nguyễn Tuấn Minh', '123456', 'nguyentuanminh218@gmail.com', '0968901234'),
('TK219', 'Lê Thị Hồng', '123456', 'lethihong219@gmail.com', '0959012345'),
('TK220', 'Trần Văn Quang', '123456', 'tranvanquang220@gmail.com', '0930123456'),
('TK221', 'Nguyễn Văn Bình', '123456', 'nguyenvanbinh221@gmail.com', '0901234567'),
('TK222', 'Trần Thị Hoa', '123456', 'tranthihoa222@gmail.com', '0912345678'),
('TK223', 'Lê Văn Hùng', '123456', 'levanhung223@gmail.com', '0983456789'),
('TK224', 'Phạm Thị Mai', '123456', 'phamthimai224@gmail.com', '0934567890'),
('TK225', 'Hoàng Minh Tâm', '123456', 'hoangminhtam225@gmail.com', '0925678901'),
('TK226', 'Đoàn Thị Hương', '123456', 'doanthihuong226@gmail.com', '0946789012'),
('TK227', 'Bùi Văn Sơn', '123456', 'buivanson227@gmail.com', '0977890123'),
('TK228', 'Đặng Thị Lan', '123456', 'dangthilan228@gmail.com', '0968901234'),
('TK229', 'Nguyễn Văn Quang', '123456', 'nguyenvanquang229@gmail.com', '0959012345'),
('TK230', 'Trần Minh Hùng', '123456', 'tranminhhung230@gmail.com', '0930123456'),
('TK231', 'Nguyễn Thị Thu', '123456', 'nguyenthithu231@gmail.com', '0901234567'),
('TK232', 'Lê Văn Nam', '123456', 'levannam232@gmail.com', '0912345678'),
('TK233', 'Phạm Thị Hoa', '123456', 'phamthihoa233@gmail.com', '0983456789'),
('TK234', 'Trần Văn Sơn', '123456', 'tranvanson234@gmail.com', '0934567890'),
('TK235', 'Đặng Thị Mai', '123456', 'dangthimai235@gmail.com', '0925678901'),
('TK236', 'Bùi Văn Hùng', '123456', 'buivanhung236@gmail.com', '0946789012'),
('TK237', 'Hoàng Thị Lan', '123456', 'hoangthilan237@gmail.com', '0977890123'),
('TK238', 'Nguyễn Tuấn Anh', '123456', 'nguyentuananh238@gmail.com', '0968901234'),
('TK239', 'Lê Thị Hương', '123456', 'lethihuong239@gmail.com', '0959012345'),
('TK240', 'Trần Văn Nam', '123456', 'tranvannam240@gmail.com', '0930123456'),
('TK241', 'Nguyễn Văn Phúc', '123456', 'nguyenvanphuc241@gmail.com', '0901234567'),
('TK242', 'Trần Thị Hạnh', '123456', 'tranthihanh242@gmail.com', '0912345678'),
('TK243', 'Lê Văn Quang', '123456', 'levanquang243@gmail.com', '0983456789'),
('TK244', 'Phạm Thị Mai', '123456', 'phamthimai244@gmail.com', '0934567890'),
('TK245', 'Hoàng Minh Sơn', '123456', 'hoangminhson245@gmail.com', '0925678901'),
('TK246', 'Đoàn Thị Hồng', '123456', 'doanthihong246@gmail.com', '0946789012'),
('TK247', 'Bùi Văn Hùng', '123456', 'buivanhung247@gmail.com', '0977890123'),
('TK248', 'Đặng Thị Lan', '123456', 'dangthilan248@gmail.com', '0968901234'),
('TK249', 'Nguyễn Văn Sơn', '123456', 'nguyenvanson249@gmail.com', '0959012345'),
('TK250', 'Trần Minh Tâm', '123456', 'tranminhtam250@gmail.com', '0930123456'),
('TK251', 'Nguyễn Thị Thu', '123456', 'nguyenthithu251@gmail.com', '0901234567'),
('TK252', 'Lê Hoàng Nam', '123456', 'lehoangnam252@gmail.com', '0912345678'),
('TK253', 'Phạm Văn Huy', '123456', 'phamvanhuy253@gmail.com', '0981234567'),
('TK254', 'Hoàng Thị Lan', '123456', 'hoangthilan254@gmail.com', '0972345678'),
('TK255', 'Đặng Minh Tuấn', '123456', 'dangminhtuan255@gmail.com', '0963456789'),
('TK256', 'Bùi Thị Hồng', '123456', 'buithihong256@gmail.com', '0954567890'),
('TK257', 'Nguyễn Văn Sơn', '123456', 'nguyenvanson257@gmail.com', '0945678901'),
('TK258', 'Trần Minh Hùng', '123456', 'tranminhhung258@gmail.com', '0936789012'),
('TK259', 'Lê Thị Thu', '123456', 'lethithu259@gmail.com', '0927890123'),
('TK260', 'Phạm Văn Nam', '123456', 'phamvannam260@gmail.com', '0918901234'),
('TK261', 'Hoàng Minh Tâm', '123456', 'hoangminhtam261@gmail.com', '0909012345'),
('TK262', 'Đoàn Thị Hạnh', '123456', 'doanthihanh262@gmail.com', '0980123456'),
('TK263', 'Bùi Văn Quang', '123456', 'buivanquang263@gmail.com', '0971234567'),
('TK264', 'Đặng Thị Mai', '123456', 'dangthimai264@gmail.com', '0962345678'),
('TK265', 'Nguyễn Văn Hùng', '123456', 'nguyenvanhung265@gmail.com', '0953456789'),
('TK266', 'Trần Thị Lan', '123456', 'tranthilan266@gmail.com', '0944567890'),
('TK267', 'Lê Văn Bình', '123456', 'levanbinh267@gmail.com', '0935678901'),
('TK268', 'Phạm Thị Hương', '123456', 'phamthihuong268@gmail.com', '0926789012'),
('TK269', 'Hoàng Văn Sơn', '123456', 'hoangvanson269@gmail.com', '0917890123'),
('TK270', 'Đoàn Minh Tâm', '123456', 'doanminhtam270@gmail.com', '0908901234'),
('TK271', 'Bùi Thị Hồng', '123456', 'buithihong271@gmail.com', '0989012345'),
('TK272', 'Đặng Văn Quang', '123456', 'dangvanquang272@gmail.com', '0970123456'),
('TK273', 'Nguyễn Thị Mai', '123456', 'nguyenthimai273@gmail.com', '0961234567'),
('TK274', 'Trần Văn Hùng', '123456', 'tranvanhung274@gmail.com', '0952345678'),
('TK275', 'Lê Thị Lan', '123456', 'lethilan275@gmail.com', '0943456789'),
('TK276', 'Phạm Văn Sơn', '123456', 'phamvanson276@gmail.com', '0934567890'),
('TK277', 'Hoàng Minh Hùng', '123456', 'hoangminhhung277@gmail.com', '0925678901'),
('TK278', 'Đoàn Thị Hương', '123456', 'doanthihuong278@gmail.com', '0916789012'),
('TK279', 'Bùi Văn Nam', '123456', 'buivannan279@gmail.com', '0907890123'),
('TK280', 'Đặng Thị Hoa', '123456', 'dangthihoa280@gmail.com', '0988901234'),
('TK281', 'Nguyễn Văn Tâm', '123456', 'nguyenvantam281@gmail.com', '0979012345'),
('TK282', 'Trần Minh Hùng', '123456', 'tranminhhung282@gmail.com', '0960123456'),
('TK283', 'Lê Thị Hạnh', '123456', 'lethihanh283@gmail.com', '0951234567'),
('TK284', 'Phạm Văn Bình', '123456', 'phamvanbinh284@gmail.com', '0942345678'),
('TK285', 'Hoàng Thị Thu', '123456', 'hoangthithu285@gmail.com', '0933456789'),
('TK286', 'Đoàn Văn Sơn', '123456', 'doanvanson286@gmail.com', '0924567890'),
('TK287', 'Bùi Thị Mai', '123456', 'buithimai287@gmail.com', '0915678901'),
('TK288', 'Đặng Minh Hùng', '123456', 'dangminhhung288@gmail.com', '0906789012'),
('TK289', 'Nguyễn Văn Lan', '123456', 'nguyenvanlan289@gmail.com', '0987890123'),
('TK290', 'Trần Thị Hương', '123456', 'tranthihuong290@gmail.com', '0978901234'),
('TK291', 'Lê Văn Tâm', '123456', 'levantam291@gmail.com', '0969012345'),
('TK292', 'Phạm Thị Thu', '123456', 'phamthithu292@gmail.com', '0950123456'),
('TK293', 'Hoàng Minh Nam', '123456', 'hoangminhnam293@gmail.com', '0941234567'),
('TK294', 'Đoàn Thị Hồng', '123456', 'doanthihong294@gmail.com', '0932345678'),
('TK295', 'Bùi Văn Quang', '123456', 'buivanquang295@gmail.com', '0923456789'),
('TK296', 'Đặng Thị Mai', '123456', 'dangthimai296@gmail.com', '0914567890'),
('TK297', 'Nguyễn Văn Hùng', '123456', 'nguyenvanhung297@gmail.com', '0905678901'),
('TK298', 'Trần Thị Lan', '123456', 'tranthilan298@gmail.com', '0986789012'),
('TK299', 'Lê Văn Bình', '123456', 'levanbinh299@gmail.com', '0977890123'),
('TK300', 'Phạm Thị Hương', '123456', 'phamthihuong300@gmail.com', '0968901234'),
('TK301', 'Hoàng Văn Sơn', '123456', 'hoangvanson301@gmail.com', '0959012345'),
('TK302', 'Đoàn Minh Tâm', '123456', 'doanminhtam302@gmail.com', '0940123456'),
('TK303', 'Bùi Thị Hồng', '123456', 'buithihong303@gmail.com', '0931234567'),
('TK304', 'Đặng Văn Quang', '123456', 'dangvanquang304@gmail.com', '0922345678'),
('TK305', 'Nguyễn Thị Mai', '123456', 'nguyenthimai305@gmail.com', '0913456789'),
('TK306', 'Trần Văn Hùng', '123456', 'tranvanhung306@gmail.com', '0904567890'),
('TK307', 'Lê Thị Lan', '123456', 'lethilan307@gmail.com', '0985678901'),
('TK308', 'Phạm Văn Sơn', '123456', 'phamvanson308@gmail.com', '0976789012'),
('TK309', 'Hoàng Minh Hùng', '123456', 'hoangminhhung309@gmail.com', '0967890123'),
('TK310', 'Đoàn Thị Hương', '123456', 'doanthihuong310@gmail.com', '0958901234'),
('TK311', 'Bùi Văn Nam', '123456', 'buivannan311@gmail.com', '0949012345'),
('TK312', 'Đặng Thị Hoa', '123456', 'dangthihoa312@gmail.com', '0930123456'),
('TK313', 'Nguyễn Văn Tâm', '123456', 'nguyenvantam313@gmail.com', '0921234567'),
('TK314', 'Trần Minh Hùng', '123456', 'tranminhhung314@gmail.com', '0912345678'),
('TK315', 'Lê Thị Hạnh', '123456', 'lethihanh315@gmail.com', '0903456789'),
('TK316', 'Phạm Văn Bình', '123456', 'phamvanbinh316@gmail.com', '0984567890'),
('TK317', 'Hoàng Thị Thu', '123456', 'hoangthithu317@gmail.com', '0975678901'),
('TK318', 'Đoàn Văn Sơn', '123456', 'doanvanson318@gmail.com', '0966789012'),
('TK319', 'Bùi Thị Mai', '123456', 'buithimai319@gmail.com', '0957890123'),
('TK320', 'Đặng Minh Hùng', '123456', 'dangminhhung320@gmail.com', '0948901234'),
('TK321', 'Nguyễn Văn Lan', '123456', 'nguyenvanlan321@gmail.com', '0939012345'),
('TK322', 'Trần Thị Hương', '123456', 'tranthihuong322@gmail.com', '0920123456'),
('TK323', 'Lê Văn Tâm', '123456', 'levantam323@gmail.com', '0911234567'),
('TK324', 'Phạm Thị Thu', '123456', 'phamthithu324@gmail.com', '0902345678'),
('TK325', 'Hoàng Minh Nam', '123456', 'hoangminhnam325@gmail.com', '0983456789'),
('TK326', 'Đoàn Thị Hồng', '123456', 'doanthihong326@gmail.com', '0974567890'),
('TK327', 'Bùi Văn Quang', '123456', 'buivanquang327@gmail.com', '0965678901');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents_eng`
--

CREATE TABLE `documents_eng` (
  `LanId` varchar(10) DEFAULT NULL,
  `SubjectEN` text DEFAULT NULL,
  `InfoId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `documents_eng`
--

INSERT INTO `documents_eng` (`LanId`, `SubjectEN`, `InfoId`) VALUES
('EN', 'DECREE\r\n\r\nOn clerical work[1]\r\n\r\nPursuant to the June 19, 2015 Law on Organization of the Government;\r\n\r\nAt the proposal of the Minister of Home Affairs;\r\n\r\nThe Government promulgates the Decree on clerical work.', 'TT01'),
('EN', 'DECREE\r\n\r\nRegulations on recruitment, employment and management of civil servants\r\n\r\n__________\r\n\r\nPursuant to the Law on Organization of the Government dated June 19, 2015;\r\n\r\nPursuant to the Law amending and supplementing a number of articles of the Law on Organization of the Government and the Law on Organization of Local Government dated November 22, 2019;', 'TT02'),
('EN', 'DECREE On job positions and number of employees in public service units', 'TT03'),
('EN', 'CONSTITUTION\r\n\r\nSOCIALIST REPUBLIC OF VIETNAM 1980', 'TT04'),
('EN', 'CONSTITUTION\r\n\r\nSOCIALIST REPUBLIC OF VIETNAM 2013', 'TT05'),
('EN', 'LAW Social Insurance', 'TT06'),
('EN', 'Pursuant to the Law on Organization of the Government dated June 19, 2015;\r\n\r\nPursuant to the Law on Cadres and Civil Servants dated November 13, 2008;\r\n\r\nPursuant to the Law on Public Employees dated November 15, 2010;\r\n\r\nPursuant to the Law on amendments and supplements to a number of articles of the Law on Cadres and Civil Servants and the Law on Public Employees dated November 25, 2019;\r\n\r\nAt the request of the Minister of Home Affairs;\r\n\r\nThe Government promulgates a Decree on pricing and classifying types of management quality, civil servants and public employees.', 'TT07'),
('EN', 'Pursuant to the Law on Organization of the Government dated June 19, 2015;\r\n\r\nPursuant to the Law on Handling of Administrative Violations dated June 20, 2012;\r\n\r\nPursuant to the Law on Road Traffic dated November 13, 2008;\r\n\r\nPursuant to the Law on Railways dated June 16, 2017;\r\n\r\nAt the request of the Minister of Transport;\r\n\r\nThe Government promulgates a Decree regulating administrative sanctions in the field of road and railway traffic.', 'TT08'),
('EN', 'my name', 'TT09'),
('EN', 'what are you today', 'TT10'),
('EN', 'DECREE\r\n\r\nREGULATIONS ON SANCTIONS FOR ADMINISTRATIVE VIOLATIONS\r\n\r\nIN THE FIELD OF ROAD AND RAIL TRAFFIC\r\n\r\nInstructions\r\n\r\nFor details, please upgrade to a Standard or Premium account. You need to upgrade to continue using this premium feature.\r\nBuy Daily Package - 68,000 VND\r\nAccess 24 hours - unlimited premium features\r\nBuy Weekly Package - 99,000 VND\r\nAccess 7 days - unlimited premium features\r\nBuy Monthly Package - 186,000 VND\r\nUnlimited premium features in a month\r\nPursuant to the Law on Organization of the Government dated June 19, 2015;\r\n\r\nPursuant to the Law on Handling of Administrative Violations dated June 20, 2012;\r\n\r\nPursuant to the Law on Road Traffic dated November 13, 2008;\r\n\r\nPursuant to the Law on Railways dated June 14, 2005;\r\n\r\nAt the request of the Minister of Transport;\r\n\r\nThe Government promulgates a Decree regulating the handling of administrative violations in the field of road and railway traffic.', 'TT11'),
('EN', NULL, 'TT12'),
('EN', NULL, 'TT13'),
('EN', NULL, 'TT14'),
('EN', NULL, 'TT15'),
('EN', NULL, 'TT16'),
('EN', NULL, 'TT17'),
('EN', NULL, 'TT18'),
('EN', NULL, 'TT19'),
('EN', NULL, 'TT20'),
('EN', NULL, 'TT21'),
('EN', NULL, 'TT22'),
('EN', NULL, 'TT23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `field`
--

CREATE TABLE `field` (
  `FieldCode` varchar(20) NOT NULL,
  `FieldName` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `field`
--

INSERT INTO `field` (`FieldCode`, `FieldName`) VALUES
('LV01', 'Hành chính'),
('LV02', 'Cán bộ-Công chức-Viên chức'),
('LV03', 'Hành chính, Cán bộ-Công chức-Viên chức'),
('LV04', 'Vi phạm hành chính, Giao thông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
--

CREATE TABLE `files` (
  `FileCode` varchar(50) NOT NULL,
  `Title` text DEFAULT NULL,
  `Maintenance` varchar(30) DEFAULT NULL,
  `Rights` varchar(30) DEFAULT NULL,
  `Creator` varchar(3) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `DocToTal` decimal(10,0) DEFAULT NULL,
  `PageTotal` decimal(10,0) DEFAULT NULL,
  `OranId` varchar(13) DEFAULT NULL,
  `FileNoNation` varchar(20) DEFAULT NULL,
  `TypeId` varchar(10) DEFAULT NULL,
  `dateupdate` date DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `InfoId` varchar(50) DEFAULT NULL,
  `ID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `files`
--

INSERT INTO `files` (`FileCode`, `Title`, `Maintenance`, `Rights`, `Creator`, `StartDate`, `EndDate`, `DocToTal`, `PageTotal`, `OranId`, `FileNoNation`, `TypeId`, `dateupdate`, `path`, `InfoId`, `ID`) VALUES
('HS01', 'Nghị định 30/2020/NĐ-CP về công tác văn thư', NULL, NULL, NULL, '2020-03-05', NULL, NULL, NULL, 'CQ01', '30/2020/NĐ-CP', 'ND', '2025-03-24', '/nghidinh30_nam2020', NULL, NULL),
('HS02', 'Nghị định 138/2020/NĐ-CP về tuyển dụng, sử dụng và quản lý công chức', NULL, NULL, NULL, '2020-11-27', NULL, NULL, NULL, 'CQ01', '138/2020/NĐ-CP', 'ND', '2020-11-27', '/nghidinh138_nam2020', NULL, NULL),
('HS03', 'Nghị định 106/2020/NĐ-CP về vị trí việc làm và số lượng viên chức', NULL, NULL, NULL, '2020-09-10', NULL, NULL, NULL, 'CQ01', '106/2020/NĐ-CP', 'ND', '2025-03-28', '/nghidinh106_nam2020', NULL, NULL),
('HS04', 'Nghị định 90/2020/NĐ-CP đánh giá, xếp loại chất lượng cán bộ, công chức, viên chức', NULL, NULL, NULL, '2020-08-13', NULL, NULL, NULL, 'CQ01', '90/2020/NĐ-CP', 'ND', '2025-03-30', '/nghidinh90_nam2020', NULL, NULL),
('HS05', 'Nghị định 100/2019/NĐ-CP xử phạt vi phạm giao thông đường bộ và đường sắt', NULL, NULL, NULL, '2019-12-30', NULL, NULL, NULL, 'CQ01', '100/2019/NĐ-CP', 'ND', '2025-03-30', '/nghidinh100_nam2019', NULL, NULL),
('HS06', 'Nghị định 46/2016/NĐ-CP xử phạt VPHC lĩnh vực giao thông', NULL, NULL, NULL, '2016-05-26', NULL, NULL, NULL, 'CQ01', '46/2016/NĐ-CP', 'ND', '2025-03-30', '/nghidinh46_nam2016', NULL, NULL),
('HS07', 'Hiến pháp năm 1980', NULL, NULL, NULL, '1980-12-19', NULL, NULL, NULL, 'CQ02', '248-LCT', 'HP', '2025-04-07', '/hienphap_nam1980', NULL, NULL),
('HS08', 'Hiến pháp năm 2013', NULL, NULL, NULL, '2013-11-28', NULL, NULL, NULL, 'CQ02', '18/2013/L-CTN', 'HP', '2025-04-07', '/hienphap_nam2013', NULL, NULL),
('HS09', 'Luật Bảo hiểm xã hội 2024, số 41/2024/QH15', NULL, NULL, NULL, '2024-06-29', NULL, NULL, NULL, 'CQ02', '41/2024/QH15', 'LAW', '2025-04-08', '/luatbaohiemxahoi', NULL, NULL),
('HS10', 'nghi dinh thu', NULL, NULL, NULL, '2025-03-30', NULL, NULL, NULL, 'CQ01', '20/tt', 'LAW', '2025-03-31', NULL, NULL, NULL),
('HS100', 'Quyết định 57/QĐ-BYT về chương trình phòng chống dịch bệnh COVID-19', NULL, NULL, NULL, '2025-04-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS101', 'Quyết định 150/QĐ-TTg về phát triển công nghiệp hỗ trợ', NULL, NULL, NULL, '2025-04-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS102', 'Nghị định 105/2025/NĐ-CP về quản lý và sử dụng đất đai', NULL, NULL, NULL, '2025-03-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS103', 'Thông tư 22/2025/TT-BNN hướng dẫn phát triển thủy sản bền vững', NULL, NULL, NULL, '2025-03-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS104', 'Quyết định 320/QĐ-BGTVT về phát triển giao thông đường bộ', NULL, NULL, NULL, '2025-03-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS105', 'Nghị quyết 45/NQ-CP về phát triển kinh tế biển', NULL, NULL, NULL, '2025-03-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS106', 'Thông tư 9/2025/TT-BLĐTBXH hướng dẫn chính sách lao động và việc làm', NULL, NULL, NULL, '2025-03-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS107', 'Quyết định 400/QĐ-UBND về quy hoạch phát triển đô thị', NULL, NULL, NULL, '2025-03-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS108', 'Nghị định 60/2025/NĐ-CP về bảo vệ môi trường trong nông nghiệp', NULL, NULL, NULL, '2025-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS109', 'Thông tư 14/2025/TT-BYT về hướng dẫn phòng chống dịch bệnh', NULL, NULL, NULL, '2025-03-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS11', 'Kho luu tru', NULL, NULL, NULL, '2025-03-31', NULL, NULL, NULL, 'CQ02', '30/ND_ND', 'HP', '2025-04-19', NULL, NULL, NULL),
('HS110', 'Quyết định 88/QĐ-TTg về chiến lược phát triển công nghệ thông tin', NULL, NULL, NULL, '2025-03-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS111', 'Nghị định 77/2025/NĐ-CP về quản lý tài nguyên nước', NULL, NULL, NULL, '2025-03-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS112', 'Thông tư 11/2025/TT-BCA về bảo đảm an ninh quốc gia', NULL, NULL, NULL, '2025-03-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS113', 'Quyết định 210/QĐ-BGDĐT về phát triển giáo dục nghề nghiệp', NULL, NULL, NULL, '2025-03-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS114', 'Nghị quyết 50/NQ-CP về phát triển kinh tế vùng Tây Nguyên', NULL, NULL, NULL, '2025-03-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS115', 'Thông tư 17/2025/TT-BNNPTNT hướng dẫn quản lý rừng', NULL, NULL, NULL, '2025-03-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS116', 'Quyết định 299/QĐ-UBND về phát triển kinh tế địa phương', NULL, NULL, NULL, '2025-03-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS117', 'Nghị định 48/2025/NĐ-CP về phát triển công nghiệp năng lượng sạch', NULL, NULL, NULL, '2025-03-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS118', 'Thông tư 13/2025/TT-BTC hướng dẫn quản lý ngân sách nhà nước', NULL, NULL, NULL, '2025-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS119', 'Quyết định 55/QĐ-BYT về chương trình phòng chống dịch bệnh truyền nhiễm', NULL, NULL, NULL, '2025-03-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS12', 'Công văn 3206/UBND-KGVX Đắk Nông tăng cường công tác phòng chống dịch COVID-19', NULL, NULL, NULL, '2025-05-20', '0000-00-00', NULL, NULL, 'CQ04', '3206/UBND-KGVX', NULL, '2025-05-20', 'luutrufile/Công văn-3206-UBND-KGVX.pdf', NULL, NULL),
('HS120', 'Nghị định 95/2025/NĐ-CP về phát triển giáo dục phổ thông', NULL, NULL, NULL, '2025-03-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS121', 'Quyết định 170/QĐ-UBND về phát triển ngành thủy sản', NULL, NULL, NULL, '2025-03-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS122', 'Nghị định 110/2025/NĐ-CP về chính sách hỗ trợ doanh nghiệp nhỏ', NULL, NULL, NULL, '2025-03-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS123', 'Thông tư 23/2025/TT-BNNPTNT về quản lý bảo vệ rừng đặc dụng', NULL, NULL, NULL, '2025-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS124', 'Quyết định 325/QĐ-BGTVT về phát triển hạ tầng giao thông ven biển', NULL, NULL, NULL, '2025-03-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS125', 'Nghị quyết 55/NQ-CP về phát triển kinh tế vùng đồng bằng sông Cửu Long', NULL, NULL, NULL, '2025-03-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS126', 'Thông tư 10/2025/TT-BLĐTBXH hướng dẫn chính sách bảo hiểm xã hội', NULL, NULL, NULL, '2025-03-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS127', 'Quyết định 410/QĐ-TTg về chiến lược phát triển năng lượng tái tạo', NULL, NULL, NULL, '2025-03-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS128', 'Nghị định 65/2025/NĐ-CP về bảo vệ môi trường trong khu công nghiệp', NULL, NULL, NULL, '2025-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS129', 'Thông tư 16/2025/TT-BYT về phòng chống dịch bệnh mùa hè', NULL, NULL, NULL, '2025-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS13', 'Lệnh 30/2024/L-CTN công bố Luật Tư pháp người chưa thành niên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Luật-30-L-CTN.docx', NULL, NULL),
('HS130', 'Quyết định 90/QĐ-TTg về phát triển công nghệ số', NULL, NULL, NULL, '2025-03-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS131', 'Nghị định 82/2025/NĐ-CP về quản lý tài nguyên rừng', NULL, NULL, NULL, '2025-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS132', 'Thông tư 12/2025/TT-BCA về đảm bảo an ninh mạng quốc gia', NULL, NULL, NULL, '2025-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS133', 'Quyết định 215/QĐ-BGDĐT về phát triển giáo dục đại học', NULL, NULL, NULL, '2025-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS134', 'Nghị quyết 52/NQ-CP về phát triển kinh tế vùng núi phía Bắc', NULL, NULL, NULL, '2025-02-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS135', 'Thông tư 18/2025/TT-BNNPTNT về quản lý nông nghiệp bền vững', NULL, NULL, NULL, '2025-02-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS136', 'Quyết định 305/QĐ-UBND về phát triển kinh tế địa phương', NULL, NULL, NULL, '2025-02-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS137', 'Nghị định 50/2025/NĐ-CP về phát triển công nghiệp hỗ trợ', NULL, NULL, NULL, '2025-02-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS138', 'Thông tư 14/2025/TT-BTC hướng dẫn quản lý tài chính công', NULL, NULL, NULL, '2025-02-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS139', 'Quyết định 60/QĐ-BYT về chương trình phòng chống dịch bệnh truyền nhiễm', NULL, NULL, NULL, '2025-02-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS14', 'Luật Công đoàn 2024, số 50/2024/QH15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Luật-50-2024-QH15.docx', NULL, NULL),
('HS140', 'Nghị định 98/2025/NĐ-CP về phát triển giáo dục nghề nghiệp', NULL, NULL, NULL, '2025-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS141', 'Quyết định 172/QĐ-TTg về phát triển ngành công nghiệp điện tử', NULL, NULL, NULL, '2025-02-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS142', 'Nghị định 112/2025/NĐ-CP về quản lý đất đai đô thị', NULL, NULL, NULL, '2025-02-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS143', 'Thông tư 24/2025/TT-BNN về phát triển thủy sản', NULL, NULL, NULL, '2025-02-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS144', 'Quyết định 330/QĐ-BGTVT về phát triển giao thông đường thủy', NULL, NULL, NULL, '2025-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS145', 'Nghị quyết 60/NQ-CP về phát triển kinh tế vùng duyên hải miền Trung', NULL, NULL, NULL, '2025-02-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS146', 'Thông tư 11/2025/TT-BLĐTBXH về chính sách lao động và việc làm', NULL, NULL, NULL, '2025-02-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS147', 'Quyết định 405/QĐ-UBND về quy hoạch phát triển đô thị', NULL, NULL, NULL, '2025-02-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS148', 'Nghị định 62/2025/NĐ-CP về bảo vệ môi trường nông thôn', NULL, NULL, NULL, '2025-02-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS149', 'Thông tư 13/2025/TT-BYT về phòng chống dịch bệnh', NULL, NULL, NULL, '2025-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS15', 'Nghị định 133/2020/NĐ-CP hướng dẫn Luật Thi hành án hình sự', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Nghị định-133-2020-NĐ-CP.docx', NULL, NULL),
('HS150', 'Quyết định 85/QĐ-TTg về chiến lược phát triển công nghệ thông tin', NULL, NULL, NULL, '2025-02-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS151', 'Quyết định 180/QĐ-TTg về phát triển ngành nông nghiệp công nghệ cao', NULL, NULL, NULL, '2025-02-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS152', 'Nghị định 115/2025/NĐ-CP về chính sách phát triển doanh nghiệp vừa và nhỏ', NULL, NULL, NULL, '2025-02-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS153', 'Thông tư 25/2025/TT-BNNPTNT hướng dẫn quản lý rừng phòng hộ', NULL, NULL, NULL, '2025-02-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS154', 'Quyết định 335/QĐ-BGTVT về phát triển hệ thống đường bộ cao tốc', NULL, NULL, NULL, '2025-02-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS155', 'Nghị quyết 65/NQ-CP về phát triển kinh tế vùng Tây Bắc', NULL, NULL, NULL, '2025-02-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS156', 'Thông tư 15/2025/TT-BLĐTBXH hướng dẫn chính sách bảo hiểm thất nghiệp', NULL, NULL, NULL, '2025-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS157', 'Quyết định 420/QĐ-TTg về chiến lược phát triển năng lượng mặt trời', NULL, NULL, NULL, '2025-02-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS158', 'Nghị định 70/2025/NĐ-CP về bảo vệ môi trường trong ngành sản xuất công nghiệp', NULL, NULL, NULL, '2025-02-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS159', 'Thông tư 20/2025/TT-BYT về phòng chống dịch bệnh COVID-19', NULL, NULL, NULL, '2025-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS16', 'Nghị định 70/2025/NĐ-CP sửa đổi, bổ sung Nghị định 123/2020 về hóa đơn, chứng từ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Nghị định-70-2025-NĐ-CP.pdf', NULL, NULL),
('HS160', 'Quyết định 95/QĐ-TTg về phát triển công nghệ thông tin và truyền thông', NULL, NULL, NULL, '2025-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS161', 'Nghị định 85/2025/NĐ-CP về quản lý tài nguyên biển và hải đảo', NULL, NULL, NULL, '2025-01-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS162', 'Thông tư 18/2025/TT-BCA về bảo đảm an ninh thông tin', NULL, NULL, NULL, '2025-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS163', 'Quyết định 220/QĐ-BGDĐT về phát triển giáo dục tiểu học', NULL, NULL, NULL, '2025-01-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS164', 'Nghị quyết 55/NQ-CP về phát triển kinh tế vùng duyên hải Nam Trung Bộ', NULL, NULL, NULL, '2025-01-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS165', 'Thông tư 19/2025/TT-BNNPTNT về quản lý chăn nuôi', NULL, NULL, NULL, '2025-01-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS166', 'Quyết định 310/QĐ-UBND về phát triển kinh tế địa phương', NULL, NULL, NULL, '2025-01-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS167', 'Nghị định 55/2025/NĐ-CP về phát triển công nghiệp chế biến', NULL, NULL, NULL, '2025-01-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS168', 'Thông tư 16/2025/TT-BTC hướng dẫn quản lý ngân sách địa phương', NULL, NULL, NULL, '2025-01-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS169', 'Quyết định 65/QĐ-BYT về chương trình phòng chống dịch bệnh sốt xuất huyết', NULL, NULL, NULL, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS17', 'Kế hoạch 144/KH-UBND Hà Nội 2025 triển khai hồ sơ bệnh án điện tử tại các bệnh viện', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Kế hoạch-144-KH-UBND.pdf', NULL, NULL),
('HS170', 'Nghị định 100/2025/NĐ-CP về phát triển giáo dục trung học', NULL, NULL, NULL, '2025-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS171', 'Quyết định 175/QĐ-TTg về phát triển ngành công nghiệp chế tạo', NULL, NULL, NULL, '2025-01-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS172', 'Nghị định 118/2025/NĐ-CP về quản lý đất đai nông thôn', NULL, NULL, NULL, '2025-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS173', 'Thông tư 26/2025/TT-BNN về phát triển thủy lợi', NULL, NULL, NULL, '2025-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS174', 'Quyết định 335/QĐ-BGTVT về phát triển giao thông công cộng', NULL, NULL, NULL, '2025-01-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS175', 'Nghị quyết 70/NQ-CP về phát triển kinh tế vùng đồng bằng Bắc Bộ', NULL, NULL, NULL, '2025-01-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS176', 'Thông tư 12/2025/TT-BLĐTBXH về chính sách hỗ trợ người lao động', NULL, NULL, NULL, '2025-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS177', 'Quyết định 410/QĐ-UBND về quy hoạch phát triển đô thị', NULL, NULL, NULL, '2025-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS178', 'Nghị định 64/2025/NĐ-CP về bảo vệ môi trường công nghiệp', NULL, NULL, NULL, '2025-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS179', 'Thông tư 14/2025/TT-BYT về phòng chống dịch bệnh truyền nhiễm', NULL, NULL, NULL, '2025-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS18', 'Quyết định 917/QĐ-UBND Thái Bình 2025 duyệt điều chỉnh kế hoạch sử dụng đất TP Thái Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Quyết định-917-QĐ-UBND.pdf', NULL, NULL),
('HS180', 'Quyết định 87/QĐ-TTg về chiến lược phát triển công nghệ cao', NULL, NULL, NULL, '2025-01-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS181', 'Nghị định 96/2025/NĐ-CP về phát triển giáo dục đại học', NULL, NULL, NULL, '2025-01-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS182', 'Quyết định 174/QĐ-TTg về phát triển ngành công nghiệp ô tô', NULL, NULL, NULL, '2025-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS183', 'Nghị định 113/2025/NĐ-CP về quản lý tài nguyên khoáng sản', NULL, NULL, NULL, '2025-01-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS184', 'Thông tư 25/2025/TT-BCA về đảm bảo an ninh quốc gia', NULL, NULL, NULL, '2025-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS185', 'Quyết định 225/QĐ-BGDĐT về phát triển giáo dục trung học cơ sở', NULL, NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS186', 'Nghị quyết 57/NQ-CP về phát triển kinh tế vùng núi phía Nam', NULL, NULL, NULL, '2025-01-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS187', 'Thông tư 21/2025/TT-BNNPTNT về quản lý nông nghiệp bền vững', NULL, NULL, NULL, '2025-01-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS188', 'Quyết định 315/QĐ-UBND về phát triển kinh tế địa phương', NULL, NULL, NULL, '2025-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS189', 'Nghị định 51/2025/NĐ-CP về phát triển công nghiệp dệt may', NULL, NULL, NULL, '2025-01-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS19', 'Quyết định 1415/QĐ-UBND Nghệ An 2025 Kế hoạch quản lý chất lượng môi trường không khí 2026-2030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Quyết định-1415-QĐ-UBND.pdf', NULL, NULL),
('HS190', 'Thông tư 17/2025/TT-BTC hướng dẫn quản lý tài chính công', NULL, NULL, NULL, '2025-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS191', 'Quyết định 62/QĐ-BYT về chương trình phòng chống dịch bệnh cúm', NULL, NULL, NULL, '2025-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS192', 'Nghị định 99/2025/NĐ-CP về phát triển giáo dục mầm non', NULL, NULL, NULL, '2024-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS193', 'Quyết định 180/QĐ-TTg về phát triển ngành công nghiệp phần mềm', NULL, NULL, NULL, '2024-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS194', 'Nghị định 114/2025/NĐ-CP về quản lý đất đai đô thị', NULL, NULL, NULL, '2024-12-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS195', 'Thông tư 27/2025/TT-BNN về phát triển thủy sản', NULL, NULL, NULL, '2024-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS196', 'Quyết định 340/QĐ-BGTVT về phát triển giao thông đường sắt', NULL, NULL, NULL, '2024-12-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS197', 'Nghị quyết 62/NQ-CP về phát triển kinh tế vùng ven biển', NULL, NULL, NULL, '2024-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS198', 'Thông tư 13/2025/TT-BLĐTBXH về chính sách lao động và việc làm', NULL, NULL, NULL, '2024-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS199', 'Quyết định 415/QĐ-UBND về quy hoạch phát triển đô thị', NULL, NULL, NULL, '2024-12-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS20', 'Thông tư 12/2025/TT-BYT quy định đăng ký lưu hành thuốc và nguyên liệu làm thuốc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Thông tư-12-2025-TT-BYT.docx', NULL, NULL),
('HS200', 'Nghị định 68/2025/NĐ-CP về bảo vệ môi trường đô thị', NULL, NULL, NULL, '2024-12-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS201', 'Quyết định 145/QĐ-TTg về phê duyệt kế hoạch phát triển kinh tế xã hội năm 2024', NULL, NULL, NULL, '2024-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS202', 'Nghị định 88/2024/NĐ-CP về quản lý nhà nước trong lĩnh vực bảo vệ môi trường', NULL, NULL, NULL, '2024-08-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS203', 'Thông tư 30/2024/TT-BNNPTNT về hướng dẫn phát triển nông nghiệp bền vững', NULL, NULL, NULL, '2024-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS204', 'Quyết định 120/QĐ-BGTVT về đầu tư xây dựng hạ tầng giao thông đô thị', NULL, NULL, NULL, '2024-07-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS205', 'Nghị quyết 45/NQ-CP về chính sách hỗ trợ doanh nghiệp nhỏ và vừa', NULL, NULL, NULL, '2024-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS206', 'Thông tư 27/2024/TT-BLĐTBXH về quy định chính sách an sinh xã hội', NULL, NULL, NULL, '2024-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS207', 'Quyết định 390/QĐ-TTg về phát triển ngành năng lượng tái tạo', NULL, NULL, NULL, '2024-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS208', 'Nghị định 76/2024/NĐ-CP về quản lý khai thác tài nguyên khoáng sản', NULL, NULL, NULL, '2024-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS209', 'Thông tư 23/2024/TT-BYT về phòng chống dịch bệnh truyền nhiễm', NULL, NULL, NULL, '2024-06-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS21', 'Chỉ thị 5/CT-UBND Yên Bái 2025 tăng cường an toàn công trình đê điều, thủy lợi mùa mưa lũ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Chỉ thị-5-CT-UBND.pdf', NULL, NULL),
('HS210', 'Quyết định 95/QĐ-TTg về phát triển công nghiệp hỗ trợ', NULL, NULL, NULL, '2024-06-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS211', 'Nghị định 80/2024/NĐ-CP về bảo vệ môi trường trong lĩnh vực sản xuất', NULL, NULL, NULL, '2024-06-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS212', 'Thông tư 18/2024/TT-BCA về đảm bảo an ninh mạng', NULL, NULL, NULL, '2024-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS213', 'Quyết định 200/QĐ-BGDĐT về phát triển giáo dục phổ thông', NULL, NULL, NULL, '2024-06-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS214', 'Nghị quyết 50/NQ-CP về phát triển kinh tế vùng trung du và miền núi', NULL, NULL, NULL, '2024-05-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS215', 'Thông tư 21/2024/TT-BNNPTNT về quản lý và phát triển chăn nuôi', NULL, NULL, NULL, '2024-05-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS216', 'Quyết định 310/QĐ-UBND về phát triển kinh tế địa phương', NULL, NULL, NULL, '2024-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS217', 'Nghị định 56/2024/NĐ-CP về phát triển công nghiệp chế biến nông sản', NULL, NULL, NULL, '2024-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS218', 'Thông tư 19/2024/TT-BTC về hướng dẫn quản lý ngân sách', NULL, NULL, NULL, '2024-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS219', 'Quyết định 70/QĐ-BYT về chương trình phòng chống dịch bệnh sốt xuất huyết', NULL, NULL, NULL, '2024-05-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS22', 'Nghị định 104/2025/NĐ-CP quy định chi tiết thi hành Luật Công chứng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Nghị định-104-2025-NĐ-CP.pdf', NULL, NULL),
('HS220', 'Nghị định 105/2024/NĐ-CP về phát triển giáo dục nghề nghiệp', NULL, NULL, NULL, '2024-04-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS221', 'Quyết định 180/QĐ-TTg về phát triển ngành công nghiệp chế tạo', NULL, NULL, NULL, '2024-04-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS222', 'Nghị định 120/2024/NĐ-CP về quản lý đất đai nông thôn', NULL, NULL, NULL, '2024-04-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS223', 'Thông tư 28/2024/TT-BNN về phát triển thủy lợi', NULL, NULL, NULL, '2024-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS224', 'Quyết định 340/QĐ-BGTVT về phát triển giao thông công cộng', NULL, NULL, NULL, '2024-04-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS225', 'Nghị quyết 75/NQ-CP về phát triển kinh tế vùng đồng bằng sông Hồng', NULL, NULL, NULL, '2024-04-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS226', 'Thông tư 15/2024/TT-BLĐTBXH về chính sách hỗ trợ người lao động', NULL, NULL, NULL, '2024-04-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS227', 'Quyết định 420/QĐ-UBND về quy hoạch phát triển đô thị', NULL, NULL, NULL, '2024-03-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS228', 'Nghị định 68/2024/NĐ-CP về bảo vệ môi trường công nghiệp', NULL, NULL, NULL, '2024-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS229', 'Thông tư 14/2024/TT-BYT về phòng chống dịch bệnh truyền nhiễm', NULL, NULL, NULL, '2024-03-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS23', 'Quyết định 1469/QĐ-BVHTTDL 2025 về việc thành lập Hội đồng Sáng kiến Bộ Văn hóa, Thể thao và Du lịch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luutrufile/Quyết định-1469-QĐ-BVHTTDL.pdf', NULL, NULL),
('HS230', 'Quyết định 88/QĐ-TTg về chiến lược phát triển công nghệ cao', NULL, NULL, NULL, '2024-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS231', 'Nghị định 97/2024/NĐ-CP về phát triển giáo dục đại học', NULL, NULL, NULL, '2024-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS232', 'Quyết định 175/QĐ-TTg về phát triển ngành công nghiệp ô tô', NULL, NULL, NULL, '2024-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS233', 'Nghị định 110/2024/NĐ-CP về quản lý tài nguyên khoáng sản', NULL, NULL, NULL, '2024-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS234', 'Thông tư 25/2024/TT-BCA về đảm bảo an ninh quốc gia', NULL, NULL, NULL, '2024-02-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS235', 'Quyết định 230/QĐ-BGDĐT về phát triển giáo dục trung học cơ sở', NULL, NULL, NULL, '2024-02-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS236', 'Nghị quyết 60/NQ-CP về phát triển kinh tế vùng núi phía Bắc', NULL, NULL, NULL, '2024-02-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS237', 'Thông tư 22/2024/TT-BNNPTNT về quản lý nông nghiệp bền vững', NULL, NULL, NULL, '2024-02-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS238', 'Quyết định 320/QĐ-UBND về phát triển kinh tế địa phương', NULL, NULL, NULL, '2024-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS239', 'Nghị định 52/2024/NĐ-CP về phát triển công nghiệp dệt may', NULL, NULL, NULL, '2024-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS24', 'Nghị định về giáo dục', NULL, NULL, NULL, '2025-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS240', 'Thông tư 18/2024/TT-BTC hướng dẫn quản lý tài chính công', NULL, NULL, NULL, '2024-01-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS241', 'Quyết định 65/QĐ-BYT về chương trình phòng chống dịch bệnh cúm', NULL, NULL, NULL, '2024-01-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS242', 'Nghị định 98/2024/NĐ-CP về phát triển giáo dục mầm non', NULL, NULL, NULL, '2024-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS243', 'Quyết định 185/QĐ-TTg về phát triển ngành công nghiệp phần mềm', NULL, NULL, NULL, '2024-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS244', 'Nghị định 115/2024/NĐ-CP về quản lý đất đai đô thị', NULL, NULL, NULL, '2024-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS245', 'Thông tư 29/2024/TT-BNN về phát triển thủy sản', NULL, NULL, NULL, '2024-01-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS246', 'Quyết định 350/QĐ-BGTVT về phát triển giao thông đường sắt', NULL, NULL, NULL, '2023-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS247', 'Nghị quyết 65/NQ-CP về phát triển kinh tế vùng ven biển', NULL, NULL, NULL, '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS248', 'Thông tư 16/2024/TT-BLĐTBXH về chính sách lao động và việc làm', NULL, NULL, NULL, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS249', 'Quyết định 425/QĐ-UBND về quy hoạch phát triển đô thị', NULL, NULL, NULL, '2023-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS25', 'Thông tư hướng dẫn thuế GTGT', NULL, NULL, NULL, '2025-02-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS250', 'Nghị định 70/2024/NĐ-CP về bảo vệ môi trường đô thị', NULL, NULL, NULL, '2023-12-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS26', 'Quyết định ban hành chương trình y tế', NULL, NULL, NULL, '2025-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS27', 'Chỉ thị về an toàn lao động', NULL, NULL, NULL, '2025-03-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS28', 'Thông báo tuyển sinh 2025', NULL, NULL, NULL, '2025-04-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS29', 'Nghị quyết về cải cách hành chính', NULL, NULL, NULL, '2025-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS30', 'Kế hoạch bảo vệ môi trường quốc gia', NULL, NULL, NULL, '2025-05-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS31', 'Quyết định 2570/QĐ-UBND của UBND TP Hà Nội về điều chỉnh Kế hoạch sử dụng đất năm 2025 huyện Quốc Oai', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS32', 'Kế hoạch 1022/KH-UBND của UBND tỉnh Quảng Bình về nâng cao chất lượng dịch vụ công trực tuyến giai đoạn 2025-2026', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS33', 'Quyết định 687/QĐ-UBND của UBND tỉnh Đắk Nông về ủy quyền cấp giấy phép hoạt động điện lực', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS34', 'Quyết định 1553/QĐ-UBND của UBND tỉnh Thanh Hóa về điều chỉnh quy hoạch chi tiết Tổ hợp thương mại Melinh Plaza Thanh Hóa', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS35', 'Quyết định 1550/QĐ-UBND của UBND tỉnh Thanh Hóa về điều chỉnh quy hoạch chung thị trấn Quán Lào đến năm 2035', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS36', 'Quyết định 1199/QĐ-UBND của UBND tỉnh Hòa Bình về công bố danh mục thủ tục hành chính lĩnh vực lao động', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS37', 'Kế hoạch 374/KH-UBND của UBND tỉnh Nghệ An về đổi mới giáo dục và đào tạo gắn với chuyển đổi số', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS38', 'Quyết định 1273/QĐ-UBND của UBND TP Cần Thơ về công bố danh mục thủ tục hành chính cấp xã', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS39', 'Quyết định 1548/QĐ-UBND của UBND tỉnh Thanh Hóa về công bố danh mục thủ tục hành chính lĩnh vực đường sắt', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS40', 'Quyết định 31/2025/QĐ-UBND của UBND tỉnh Điện Biên về quy định dạy thêm, học thêm trên địa bàn tỉnh', NULL, NULL, NULL, '2025-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS41', 'Quyết định 2570/QĐ-UBND của UBND TP Hà Nội về điều chỉnh Kế hoạch sử dụng đất năm 2025 huyện Quốc Oai', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS42', 'Kế hoạch 1022/KH-UBND của UBND tỉnh Quảng Bình về nâng cao chất lượng dịch vụ công trực tuyến giai đoạn 2025-2026', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS43', 'Quyết định 687/QĐ-UBND của UBND tỉnh Đắk Nông về ủy quyền cấp giấy phép hoạt động điện lực', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS44', 'Quyết định 1553/QĐ-UBND của UBND tỉnh Thanh Hóa về điều chỉnh quy hoạch chi tiết Tổ hợp thương mại Melinh Plaza Thanh Hóa', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS45', 'Quyết định 1550/QĐ-UBND của UBND tỉnh Thanh Hóa về điều chỉnh quy hoạch chung thị trấn Quán Lào đến năm 2035', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS46', 'Quyết định 1199/QĐ-UBND của UBND tỉnh Hòa Bình về công bố danh mục thủ tục hành chính lĩnh vực lao động', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS47', 'Kế hoạch 374/KH-UBND của UBND tỉnh Nghệ An về đổi mới giáo dục và đào tạo gắn với chuyển đổi số', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS48', 'Quyết định 1273/QĐ-UBND của UBND TP Cần Thơ về công bố danh mục thủ tục hành chính cấp xã', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS49', 'Quyết định 1548/QĐ-UBND của UBND tỉnh Thanh Hóa về công bố danh mục thủ tục hành chính lĩnh vực đường sắt', NULL, NULL, NULL, '2025-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS50', 'Quyết định 31/2025/QĐ-UBND của UBND tỉnh Điện Biên về quy định dạy thêm, học thêm trên địa bàn tỉnh', NULL, NULL, NULL, '2025-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS51', 'Nghị quyết 45/NQ-CP về kế hoạch phát triển kinh tế xã hội năm 2025', NULL, NULL, NULL, '2025-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS52', 'Quyết định 789/QĐ-TTg phê duyệt đề án phát triển năng lượng tái tạo', NULL, NULL, NULL, '2025-05-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS53', 'Thông tư 12/2025/TT-BTC hướng dẫn thuế thu nhập doanh nghiệp', NULL, NULL, NULL, '2025-05-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS54', 'Quyết định 456/QĐ-UBND về quy hoạch xây dựng vùng ven biển', NULL, NULL, NULL, '2025-05-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS55', 'Nghị định 101/2025/NĐ-CP quy định về quản lý đất đai', NULL, NULL, NULL, '2025-05-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS56', 'Thông tư 35/2025/TT-BNNPTNT hướng dẫn kỹ thuật trồng cây công nghiệp', NULL, NULL, NULL, '2025-05-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS57', 'Quyết định 88/QĐ-BGTVT về phát triển giao thông vận tải', NULL, NULL, NULL, '2025-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS58', 'Nghị quyết 22/NQ-TW về phát triển kinh tế nông thôn', NULL, NULL, NULL, '2025-05-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS59', 'Quyết định 377/QĐ-BNN về chương trình hỗ trợ phát triển nông nghiệp', NULL, NULL, NULL, '2025-05-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS60', 'Thông tư 9/2025/TT-BXD về quy chuẩn kỹ thuật xây dựng', NULL, NULL, NULL, '2025-05-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS61', 'Quyết định 120/QĐ-TTg về kế hoạch phát triển nguồn nhân lực năm 2025', NULL, NULL, NULL, '2025-05-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS62', 'Nghị định 2025/NĐ-CP về quản lý tài nguyên nước', NULL, NULL, NULL, '2025-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS63', 'Thông tư 22/2025/TT-BCA quy định về an ninh mạng', NULL, NULL, NULL, '2025-05-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS64', 'Quyết định 330/QĐ-BGDĐT về chương trình giáo dục phổ thông mới', NULL, NULL, NULL, '2025-05-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS65', 'Nghị quyết 31/NQ-CP về chính sách phát triển công nghệ thông tin', NULL, NULL, NULL, '2025-05-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS66', 'Thông tư 14/2025/TT-BLĐTBXH hướng dẫn chính sách lao động', NULL, NULL, NULL, '2025-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS67', 'Quyết định 88/QĐ-UBND về kế hoạch phát triển kinh tế địa phương', NULL, NULL, NULL, '2025-05-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS68', 'Nghị định 76/2025/NĐ-CP về bảo vệ môi trường', NULL, NULL, NULL, '2025-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS69', 'Thông tư 10/2025/TT-BNNPTNT về kỹ thuật trồng trọt', NULL, NULL, NULL, '2025-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS70', 'Quyết định 55/QĐ-BYT về chương trình phòng chống dịch bệnh', NULL, NULL, NULL, '2025-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS71', 'Quyết định 112/QĐ-TTg phê duyệt kế hoạch phát triển năng lượng sạch', NULL, NULL, NULL, '2025-05-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS72', 'Nghị định 44/2025/NĐ-CP về quản lý chất thải công nghiệp', NULL, NULL, NULL, '2025-04-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS73', 'Thông tư 17/2025/TT-BYT hướng dẫn phòng chống dịch bệnh truyền nhiễm', NULL, NULL, NULL, '2025-04-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS74', 'Quyết định 221/QĐ-BGTVT về phát triển hệ thống giao thông đô thị', NULL, NULL, NULL, '2025-04-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS75', 'Nghị quyết 12/NQ-CP về phát triển kinh tế số', NULL, NULL, NULL, '2025-04-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS76', 'Thông tư 8/2025/TT-BNN hướng dẫn kỹ thuật nuôi trồng thủy sản', NULL, NULL, NULL, '2025-04-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS77', 'Quyết định 303/QĐ-UBND về quy hoạch phát triển công nghiệp địa phương', NULL, NULL, NULL, '2025-04-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS78', 'Nghị định 55/2025/NĐ-CP về quản lý tài nguyên khoáng sản', NULL, NULL, NULL, '2025-04-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS79', 'Thông tư 13/2025/TT-BCA về quy định bảo đảm an ninh trật tự', NULL, NULL, NULL, '2025-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS80', 'Quyết định 99/QĐ-BGDĐT về chương trình đào tạo nghề nghiệp', NULL, NULL, NULL, '2025-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS81', 'Nghị quyết 54/NQ-CP về tăng cường phát triển kinh tế vùng Tây Bắc', NULL, NULL, NULL, '2025-04-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS82', 'Quyết định 130/QĐ-BCA về kế hoạch đảm bảo an ninh mạng quốc gia', NULL, NULL, NULL, '2025-04-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS83', 'Thông tư 21/2025/TT-BNNPTNT hướng dẫn quản lý bảo vệ rừng', NULL, NULL, NULL, '2025-04-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS84', 'Nghị định 67/2025/NĐ-CP về chính sách hỗ trợ doanh nghiệp nhỏ và vừa', NULL, NULL, NULL, '2025-04-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS85', 'Quyết định 415/QĐ-TTg về phát triển hạ tầng giao thông nông thôn', NULL, NULL, NULL, '2025-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS86', 'Thông tư 6/2025/TT-BLĐTBXH về chính sách bảo hiểm xã hội', NULL, NULL, NULL, '2025-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS87', 'Nghị quyết 29/NQ-TW về nâng cao chất lượng giáo dục phổ thông', NULL, NULL, NULL, '2025-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS88', 'Quyết định 210/QĐ-BYT về chương trình tiêm chủng mở rộng', NULL, NULL, NULL, '2025-04-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS89', 'Thông tư 19/2025/TT-BGTVT hướng dẫn quản lý vận tải hành khách', NULL, NULL, NULL, '2025-04-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS90', 'Nghị định 73/2025/NĐ-CP về bảo vệ môi trường biển', NULL, NULL, NULL, '2025-04-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS91', 'Quyết định 101/QĐ-UBND về phát triển đô thị bền vững', NULL, NULL, NULL, '2025-04-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS92', 'Thông tư 15/2025/TT-BTC hướng dẫn quản lý ngân sách nhà nước', NULL, NULL, NULL, '2025-04-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS93', 'Nghị định 92/2025/NĐ-CP về phát triển nguồn nhân lực chất lượng cao', NULL, NULL, NULL, '2025-04-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS94', 'Quyết định 312/QĐ-BNN về phát triển nông nghiệp ứng dụng công nghệ cao', NULL, NULL, NULL, '2025-04-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS95', 'Thông tư 7/2025/TT-BLĐTBXH về chính sách hỗ trợ người lao động', NULL, NULL, NULL, '2025-04-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS96', 'Nghị quyết 33/NQ-CP về tăng cường quản lý tài nguyên khoáng sản', NULL, NULL, NULL, '2025-04-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS97', 'Quyết định 244/QĐ-TTg về phát triển hệ thống giáo dục nghề nghiệp', NULL, NULL, NULL, '2025-04-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS98', 'Thông tư 18/2025/TT-BGTVT về quản lý vận tải hàng hóa', NULL, NULL, NULL, '2025-04-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HS99', 'Nghị định 80/2025/NĐ-CP về bảo vệ môi trường trong công nghiệp', NULL, NULL, NULL, '2025-04-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infomation_documents_arrival`
--

CREATE TABLE `infomation_documents_arrival` (
  `InfoId` varchar(50) NOT NULL,
  `ArrivalDate` date DEFAULT NULL,
  `ArrivalNumber` decimal(10,0) DEFAULT NULL,
  `TraceHeaderList` text DEFAULT NULL,
  `FileCode` varchar(50) DEFAULT NULL,
  `TypeId` varchar(10) DEFAULT NULL,
  `LanId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infomation_documents_out`
--

CREATE TABLE `infomation_documents_out` (
  `InfoId` varchar(50) NOT NULL,
  `FileCatalog` varchar(4) DEFAULT NULL,
  `Subject` text DEFAULT NULL,
  `CodeNumber` varchar(11) DEFAULT NULL,
  `LanId` varchar(10) DEFAULT NULL,
  `TypeId` varchar(10) DEFAULT NULL,
  `PageAmount` decimal(10,0) DEFAULT NULL,
  `Receives` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `FileCode` varchar(50) DEFAULT NULL,
  `ValidityStatus` varchar(20) DEFAULT NULL,
  `CodeNotation` varchar(30) DEFAULT NULL,
  `PosId` varchar(20) DEFAULT NULL,
  `FieldCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `infomation_documents_out`
--

INSERT INTO `infomation_documents_out` (`InfoId`, `FileCatalog`, `Subject`, `CodeNumber`, `LanId`, `TypeId`, `PageAmount`, `Receives`, `Description`, `DueDate`, `FileCode`, `ValidityStatus`, `CodeNotation`, `PosId`, `FieldCode`) VALUES
('TT01', '2020', 'NGHỊ ĐỊNH Về công tác văn thư \r\nCăn cứ Luật Tổ chức Chính phủ ngày 19 tháng 6 năm 2015;\r\nTheo đề nghị của Bộ trưởng Bộ Nội vụ;\r\nChính phủ ban hành Nghị định về công tác văn thư.\r\n\r\n', '30', 'VN', 'ND', NULL, 'Hà Nội', NULL, NULL, 'HS01', 'Đã biết', 'NĐ-CP', 'CV01', 'LV01'),
('TT02', '2020', 'NGHỊ ĐỊNH\r\n\r\nQuy định về tuyển dụng, sử dụng và quản lý công chức\r\n\r\n__________\r\n\r\nCăn cứ Luật Tổ chức Chính phủ ngày 19 tháng 6 năm 2015;\r\n\r\nCăn cứ Luật sửa đổi, bổ sung một số điều của Luật Tổ chức Chính phủ và Luật Tổ chức Chính quyền địa phương ngày 22 tháng 11 năm 2019;\r\n\r\nCăn cứ Luật Cán bộ, công chức ngày 13 tháng 11 năm 2008;\r\n\r\nCăn cứ Luật sửa đổi, bổ sung một số điều của Luật Cán bộ, công chức và Luật Viên chức ngày 25 tháng 11 năm 2019;\r\n\r\nTheo đề nghị của Bộ trưởng Bộ Nội vụ;\r\n\r\nChính phủ ban hành Nghị định quy định về tuyển dụng, sử dụng và quản lý công chức.', '138', 'VN', 'ND', NULL, 'Hà Nội', NULL, NULL, 'HS02', 'Đã biết', 'NĐ-CP', 'CV01', 'LV02'),
('TT03', '2020', 'Nghị định 106/2020/NĐ-CP về vị trí việc làm và số lượng viên chức', '106', 'VN', 'ND', NULL, 'Hà Nội', NULL, NULL, 'HS03', 'Đã biết', 'NĐ-CP', 'CV01', 'LV03'),
('TT04', '1980', 'HIẾN PHÁP\r\n\r\nNƯỚC CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM NĂM 1980', '248', 'VN', 'HP', NULL, '', NULL, NULL, 'HS07', 'Đã biết', 'LCT', 'CV02', NULL),
('TT05', '2013', 'HIẾN PHÁP\r\n\r\nNƯỚC CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM NĂM 2013', '18', 'VN', 'HP', NULL, '', NULL, NULL, 'HS08', 'Đã biết', 'L-CTN', 'CV03', NULL),
('TT06', '2024', 'LUẬT Bảo hiểm xã hội', '41', 'VN', 'LAW', NULL, '', NULL, NULL, 'HS09', 'Đã biết', 'QH15', 'CV04', NULL),
('TT07', '2020', 'Căn cứ Luật Tổ chức Chính phủ ngày 19 tháng 6 năm 2015;\r\n\r\nCăn cứ Luật Cán bộ, công chức ngày 13 tháng 11 năm 2008;\r\n\r\nCăn cứ Luật Viên chức ngày 15 tháng 11 năm 2010;\r\n\r\nCăn cứ Luật sửa đổi, bổ sung một số điều của Luật Cán bộ, công chức và Luật Viên chức ngày 25 tháng 11 năm 2019;\r\n\r\nTheo đề nghị của Bộ trưởng Bộ Nội vụ;\r\n\r\nChính phủ ban hành Nghị định về đánh giá, xếp loại chất lượng cán bộ, công chức, viên chức.', '90', 'VN', 'ND', NULL, 'Hà Nội', NULL, NULL, 'HS04', 'Đã biết', NULL, 'CV01', 'LV03'),
('TT08', '2019', 'Căn cứ Luật Tổ chức Chính phủ ngày 19 tháng 6 năm 2015;\r\n\r\nCăn cứ Luật Xử lý vi phạm hành chính ngày 20 tháng 6 năm 2012;\r\n\r\nCăn cứ Luật Giao thông đường bộ ngày 13 tháng 11 năm 2008;\r\n\r\nCăn cứ Luật Đường sắt ngày 16 tháng 6 năm 2017;\r\n\r\nTheo đề nghị của Bộ trưởng Bộ Giao thông vận tải;\r\n\r\nChính phủ ban hành Nghị định quy định xử phạt vi phạm hành chính trong lĩnh vực giao thông đường bộ và đường sắt.', '100', 'VN', 'ND', NULL, 'Hà Nội', NULL, NULL, 'HS05', 'Đã biết', NULL, 'CV01', 'LV04'),
('TT09', '2020', 'tên của tôi', '20', 'VN', 'LAW', NULL, 'Bến Tre', NULL, NULL, 'HS10', 'Chưa xác nhận', 'tt', 'CV02', NULL),
('TT10', '2021', 'hôm nay bạn làm gì', '30', 'VN', 'HP', NULL, 'Hà Giang', NULL, NULL, 'HS11', 'Đang hoạt động', 'ND_ND', 'CV04', NULL),
('TT100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS100', NULL, NULL, NULL, NULL),
('TT101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS101', NULL, NULL, NULL, NULL),
('TT102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS102', NULL, NULL, NULL, NULL),
('TT103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS103', NULL, NULL, NULL, NULL),
('TT104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS104', NULL, NULL, NULL, NULL),
('TT105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS105', NULL, NULL, NULL, NULL),
('TT106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS106', NULL, NULL, NULL, NULL),
('TT107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS107', NULL, NULL, NULL, NULL),
('TT108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS108', NULL, NULL, NULL, NULL),
('TT109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS109', NULL, NULL, NULL, NULL),
('TT11', '2016', 'NGHỊ ĐỊNH\r\n\r\nQUY ĐỊNH XỬ PHẠT VI PHẠM HÀNH CHÍNH\r\n\r\nTRONG LĨNH VỰC GIAO THÔNG ĐƯỜNG BỘ VÀ ĐƯỜNG SẮT\r\n\r\nNội dung được hướng dẫn\r\n\r\nĐể xem chi tiết, vui lòng nâng cấp tài khoản gói Tiêu chuẩn hoặc Nâng cao.Bạn cần nâng cấp để tiếp tục sử dụng tính năng nâng cao này.\r\nMua Gói Ngày - 68.000đ\r\nTruy cập 24h - không giới hạn các tính năng nâng cao\r\nMua Gói Tuần - 99.000đ\r\nTruy cập 7 ngày - không giới hạn các tính năng nâng cao\r\nMua Gói Tháng - 186.000đ\r\nKhông giới hạn các tính năng nâng cao trong tháng\r\nCăn cứ Luật Tổ chức Chính phủ ngày 19 tháng 6 năm 2015;\r\n\r\nCăn cứ Luật Xử lý vi phạm hành chính ngày 20 tháng 6 năm 2012;\r\n\r\nCăn cứ Luật Giao thông đường bộ ngày 13 tháng 11 năm 2008;\r\n\r\nCăn cứ Luật Đường sắt ngày 14 tháng 6 năm 2005;\r\n\r\nTheo đề nghị của Bộ trưởng Bộ Giao thông vận tải;\r\n\r\nChính phủ ban hành Nghị định quy định xử phạt vi phạm hành chính trong lĩnh vực giao thông đường bộ và đường sắt.', '46', 'VN', 'ND', NULL, 'Hà Nội', NULL, NULL, 'HS06', 'Đang hoạt động', 'NĐ-CP', 'CV01', 'LV04'),
('TT110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS110', NULL, NULL, NULL, NULL),
('TT111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS111', NULL, NULL, NULL, NULL),
('TT112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS112', NULL, NULL, NULL, NULL),
('TT113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS113', NULL, NULL, NULL, NULL),
('TT114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS114', NULL, NULL, NULL, NULL),
('TT115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS115', NULL, NULL, NULL, NULL),
('TT116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS116', NULL, NULL, NULL, NULL),
('TT117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS117', NULL, NULL, NULL, NULL),
('TT118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS118', NULL, NULL, NULL, NULL),
('TT119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS119', NULL, NULL, NULL, NULL),
('TT12', '2025', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'HS12', NULL, NULL, NULL, NULL),
('TT120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS120', NULL, NULL, NULL, NULL),
('TT121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS121', NULL, NULL, NULL, NULL),
('TT122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS122', NULL, NULL, NULL, NULL),
('TT123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS123', NULL, NULL, NULL, NULL),
('TT124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS124', NULL, NULL, NULL, NULL),
('TT125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS125', NULL, NULL, NULL, NULL),
('TT126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS126', NULL, NULL, NULL, NULL),
('TT127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS127', NULL, NULL, NULL, NULL),
('TT128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS128', NULL, NULL, NULL, NULL),
('TT129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS129', NULL, NULL, NULL, NULL),
('TT13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS13', NULL, NULL, NULL, NULL),
('TT130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS130', NULL, NULL, NULL, NULL),
('TT131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS131', NULL, NULL, NULL, NULL),
('TT132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS132', NULL, NULL, NULL, NULL),
('TT133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS133', NULL, NULL, NULL, NULL),
('TT134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS134', NULL, NULL, NULL, NULL),
('TT135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS135', NULL, NULL, NULL, NULL),
('TT136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS136', NULL, NULL, NULL, NULL),
('TT137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS137', NULL, NULL, NULL, NULL),
('TT138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS138', NULL, NULL, NULL, NULL),
('TT139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS139', NULL, NULL, NULL, NULL),
('TT14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS14', NULL, NULL, NULL, NULL),
('TT140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS140', NULL, NULL, NULL, NULL),
('TT141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS141', NULL, NULL, NULL, NULL),
('TT142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS142', NULL, NULL, NULL, NULL),
('TT143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS143', NULL, NULL, NULL, NULL),
('TT144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS144', NULL, NULL, NULL, NULL),
('TT145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS145', NULL, NULL, NULL, NULL),
('TT146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS146', NULL, NULL, NULL, NULL),
('TT147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS147', NULL, NULL, NULL, NULL),
('TT148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS148', NULL, NULL, NULL, NULL),
('TT149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS149', NULL, NULL, NULL, NULL),
('TT15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS15', NULL, NULL, NULL, NULL),
('TT150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS150', NULL, NULL, NULL, NULL),
('TT151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS151', NULL, NULL, NULL, NULL),
('TT152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS152', NULL, NULL, NULL, NULL),
('TT153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS153', NULL, NULL, NULL, NULL),
('TT154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS154', NULL, NULL, NULL, NULL),
('TT155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS155', NULL, NULL, NULL, NULL),
('TT156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS156', NULL, NULL, NULL, NULL),
('TT157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS157', NULL, NULL, NULL, NULL),
('TT158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS158', NULL, NULL, NULL, NULL),
('TT159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS159', NULL, NULL, NULL, NULL),
('TT16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS16', NULL, NULL, NULL, NULL),
('TT160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS160', NULL, NULL, NULL, NULL),
('TT161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS161', NULL, NULL, NULL, NULL),
('TT162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS162', NULL, NULL, NULL, NULL),
('TT163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS163', NULL, NULL, NULL, NULL),
('TT164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS164', NULL, NULL, NULL, NULL),
('TT165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS165', NULL, NULL, NULL, NULL),
('TT166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS166', NULL, NULL, NULL, NULL),
('TT167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS167', NULL, NULL, NULL, NULL),
('TT168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS168', NULL, NULL, NULL, NULL),
('TT169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS169', NULL, NULL, NULL, NULL),
('TT17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS17', NULL, NULL, NULL, NULL),
('TT170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS170', NULL, NULL, NULL, NULL),
('TT171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS171', NULL, NULL, NULL, NULL),
('TT172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS172', NULL, NULL, NULL, NULL),
('TT173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS173', NULL, NULL, NULL, NULL),
('TT174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS174', NULL, NULL, NULL, NULL),
('TT175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS175', NULL, NULL, NULL, NULL),
('TT176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS176', NULL, NULL, NULL, NULL),
('TT177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS177', NULL, NULL, NULL, NULL),
('TT178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS178', NULL, NULL, NULL, NULL),
('TT179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS179', NULL, NULL, NULL, NULL),
('TT18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS18', NULL, NULL, NULL, NULL),
('TT180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS180', NULL, NULL, NULL, NULL),
('TT181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS181', NULL, NULL, NULL, NULL),
('TT182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS182', NULL, NULL, NULL, NULL),
('TT183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS183', NULL, NULL, NULL, NULL),
('TT184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS184', NULL, NULL, NULL, NULL),
('TT185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS185', NULL, NULL, NULL, NULL),
('TT186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS186', NULL, NULL, NULL, NULL),
('TT187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS187', NULL, NULL, NULL, NULL),
('TT188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS188', NULL, NULL, NULL, NULL),
('TT189', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS189', NULL, NULL, NULL, NULL),
('TT19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS19', NULL, NULL, NULL, NULL),
('TT190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS190', NULL, NULL, NULL, NULL),
('TT191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS191', NULL, NULL, NULL, NULL),
('TT192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS192', NULL, NULL, NULL, NULL),
('TT193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS193', NULL, NULL, NULL, NULL),
('TT194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS194', NULL, NULL, NULL, NULL),
('TT195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS195', NULL, NULL, NULL, NULL),
('TT196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS196', NULL, NULL, NULL, NULL),
('TT197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS197', NULL, NULL, NULL, NULL),
('TT198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS198', NULL, NULL, NULL, NULL),
('TT199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS199', NULL, NULL, NULL, NULL),
('TT20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS20', NULL, NULL, NULL, NULL),
('TT200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS200', NULL, NULL, NULL, NULL),
('TT201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS201', NULL, NULL, NULL, NULL),
('TT202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS202', NULL, NULL, NULL, NULL),
('TT203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS203', NULL, NULL, NULL, NULL),
('TT204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS204', NULL, NULL, NULL, NULL),
('TT205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS205', NULL, NULL, NULL, NULL),
('TT206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS206', NULL, NULL, NULL, NULL),
('TT207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS207', NULL, NULL, NULL, NULL),
('TT208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS208', NULL, NULL, NULL, NULL),
('TT209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS209', NULL, NULL, NULL, NULL),
('TT21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS21', NULL, NULL, NULL, NULL),
('TT210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS210', NULL, NULL, NULL, NULL),
('TT211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS211', NULL, NULL, NULL, NULL),
('TT212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS212', NULL, NULL, NULL, NULL),
('TT213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS213', NULL, NULL, NULL, NULL),
('TT214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS214', NULL, NULL, NULL, NULL),
('TT215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS215', NULL, NULL, NULL, NULL),
('TT216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS216', NULL, NULL, NULL, NULL),
('TT217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS217', NULL, NULL, NULL, NULL),
('TT218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS218', NULL, NULL, NULL, NULL),
('TT219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS219', NULL, NULL, NULL, NULL),
('TT22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS22', NULL, NULL, NULL, NULL),
('TT220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS220', NULL, NULL, NULL, NULL),
('TT221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS221', NULL, NULL, NULL, NULL),
('TT222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS222', NULL, NULL, NULL, NULL),
('TT223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS223', NULL, NULL, NULL, NULL),
('TT224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS224', NULL, NULL, NULL, NULL),
('TT225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS225', NULL, NULL, NULL, NULL),
('TT226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS226', NULL, NULL, NULL, NULL),
('TT227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS227', NULL, NULL, NULL, NULL),
('TT228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS228', NULL, NULL, NULL, NULL),
('TT229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS229', NULL, NULL, NULL, NULL),
('TT23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS23', NULL, NULL, NULL, NULL),
('TT230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS230', NULL, NULL, NULL, NULL),
('TT231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS231', NULL, NULL, NULL, NULL),
('TT232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS232', NULL, NULL, NULL, NULL),
('TT233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS233', NULL, NULL, NULL, NULL),
('TT234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS234', NULL, NULL, NULL, NULL),
('TT235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS235', NULL, NULL, NULL, NULL),
('TT236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS236', NULL, NULL, NULL, NULL),
('TT237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS237', NULL, NULL, NULL, NULL),
('TT238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS238', NULL, NULL, NULL, NULL),
('TT239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS239', NULL, NULL, NULL, NULL),
('TT24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS24', NULL, NULL, NULL, NULL),
('TT240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS240', NULL, NULL, NULL, NULL),
('TT241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS241', NULL, NULL, NULL, NULL),
('TT242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS242', NULL, NULL, NULL, NULL),
('TT243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS243', NULL, NULL, NULL, NULL),
('TT244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS244', NULL, NULL, NULL, NULL),
('TT245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS245', NULL, NULL, NULL, NULL),
('TT246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS246', NULL, NULL, NULL, NULL),
('TT247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS247', NULL, NULL, NULL, NULL),
('TT248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS248', NULL, NULL, NULL, NULL),
('TT249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS249', NULL, NULL, NULL, NULL),
('TT25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS25', NULL, NULL, NULL, NULL),
('TT250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS250', NULL, NULL, NULL, NULL),
('TT26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS26', NULL, NULL, NULL, NULL),
('TT27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS27', NULL, NULL, NULL, NULL),
('TT28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS28', NULL, NULL, NULL, NULL),
('TT29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS29', NULL, NULL, NULL, NULL),
('TT30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS30', NULL, NULL, NULL, NULL),
('TT31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS31', NULL, NULL, NULL, NULL),
('TT32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS32', NULL, NULL, NULL, NULL),
('TT33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS33', NULL, NULL, NULL, NULL),
('TT34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS34', NULL, NULL, NULL, NULL),
('TT35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS35', NULL, NULL, NULL, NULL),
('TT36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS36', NULL, NULL, NULL, NULL),
('TT37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS37', NULL, NULL, NULL, NULL),
('TT38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS38', NULL, NULL, NULL, NULL),
('TT39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS39', NULL, NULL, NULL, NULL),
('TT40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS40', NULL, NULL, NULL, NULL),
('TT41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS41', NULL, NULL, NULL, NULL),
('TT42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS42', NULL, NULL, NULL, NULL),
('TT43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS43', NULL, NULL, NULL, NULL),
('TT44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS44', NULL, NULL, NULL, NULL),
('TT45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS45', NULL, NULL, NULL, NULL),
('TT46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS46', NULL, NULL, NULL, NULL),
('TT47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS47', NULL, NULL, NULL, NULL),
('TT48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS48', NULL, NULL, NULL, NULL),
('TT49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS49', NULL, NULL, NULL, NULL),
('TT50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS50', NULL, NULL, NULL, NULL),
('TT51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS51', NULL, NULL, NULL, NULL),
('TT52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS52', NULL, NULL, NULL, NULL),
('TT53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS53', NULL, NULL, NULL, NULL),
('TT54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS54', NULL, NULL, NULL, NULL),
('TT55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS55', NULL, NULL, NULL, NULL),
('TT56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS56', NULL, NULL, NULL, NULL),
('TT57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS57', NULL, NULL, NULL, NULL),
('TT58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS58', NULL, NULL, NULL, NULL),
('TT59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS59', NULL, NULL, NULL, NULL),
('TT60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS60', NULL, NULL, NULL, NULL),
('TT61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS61', NULL, NULL, NULL, NULL),
('TT62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS62', NULL, NULL, NULL, NULL),
('TT63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS63', NULL, NULL, NULL, NULL),
('TT64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS64', NULL, NULL, NULL, NULL),
('TT65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS65', NULL, NULL, NULL, NULL),
('TT66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS66', NULL, NULL, NULL, NULL),
('TT67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS67', NULL, NULL, NULL, NULL),
('TT68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS68', NULL, NULL, NULL, NULL),
('TT69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS69', NULL, NULL, NULL, NULL),
('TT70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS70', NULL, NULL, NULL, NULL),
('TT71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS71', NULL, NULL, NULL, NULL),
('TT72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS72', NULL, NULL, NULL, NULL),
('TT73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS73', NULL, NULL, NULL, NULL),
('TT74', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS74', NULL, NULL, NULL, NULL),
('TT75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS75', NULL, NULL, NULL, NULL),
('TT76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS76', NULL, NULL, NULL, NULL),
('TT77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS77', NULL, NULL, NULL, NULL),
('TT78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS78', NULL, NULL, NULL, NULL),
('TT79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS79', NULL, NULL, NULL, NULL),
('TT80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS80', NULL, NULL, NULL, NULL),
('TT81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS81', NULL, NULL, NULL, NULL),
('TT82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS82', NULL, NULL, NULL, NULL),
('TT83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS83', NULL, NULL, NULL, NULL),
('TT84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS84', NULL, NULL, NULL, NULL),
('TT85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS85', NULL, NULL, NULL, NULL),
('TT86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS86', NULL, NULL, NULL, NULL),
('TT87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS87', NULL, NULL, NULL, NULL),
('TT88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS88', NULL, NULL, NULL, NULL),
('TT89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS89', NULL, NULL, NULL, NULL),
('TT90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS90', NULL, NULL, NULL, NULL),
('TT91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS91', NULL, NULL, NULL, NULL),
('TT92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS92', NULL, NULL, NULL, NULL),
('TT93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS93', NULL, NULL, NULL, NULL),
('TT94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS94', NULL, NULL, NULL, NULL),
('TT95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS95', NULL, NULL, NULL, NULL),
('TT96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS96', NULL, NULL, NULL, NULL),
('TT97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS97', NULL, NULL, NULL, NULL),
('TT98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS98', NULL, NULL, NULL, NULL),
('TT99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HS99', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `LanId` varchar(10) NOT NULL,
  `Language` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`LanId`, `Language`) VALUES
('EN', 'Tiếng Anh'),
('VN', 'Tiếng Việt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `organization`
--

CREATE TABLE `organization` (
  `OranId` varchar(13) NOT NULL,
  `OranName` varchar(100) DEFAULT NULL,
  `PosId` varchar(20) DEFAULT NULL,
  `ToPlaces` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `organization`
--

INSERT INTO `organization` (`OranId`, `OranName`, `PosId`, `ToPlaces`) VALUES
('CQ01', 'Chính phủ', NULL, NULL),
('CQ02', 'Quốc hội', NULL, NULL),
('CQ03', 'Ban Bí thư', NULL, NULL),
('CQ04', 'Ủy ban nhân dân tỉnh Đắk Nông', NULL, NULL),
('CQ05', 'Ủy ban nhân dân tỉnh Thái Bình', NULL, NULL),
('CQ06', 'Ủy ban nhân dân tỉnh Lâm Đồng', NULL, NULL),
('CQ07', 'Ủy ban nhân dân tỉnh Lai Châu', NULL, NULL),
('CQ08', 'Ủy ban nhân dân tỉnh Nam Định', NULL, NULL),
('CQ09', 'Ủy ban nhân dân tỉnh Yên Bái', NULL, NULL),
('CQ10', 'Ủy ban nhân dân tỉnh Long An', NULL, NULL),
('CQ11', 'Ủy ban nhân dân tỉnh Hà Giang', NULL, NULL),
('CQ12', 'Ủy ban nhân dân tỉnh Bình Định', NULL, NULL),
('CQ13', 'Ủy ban nhân dân tỉnh Bến Tre', NULL, NULL),
('CQ14', 'Ủy ban nhân dân tỉnh Bắc Ninh', NULL, NULL),
('CQ15', 'Ủy ban nhân dân tỉnh Bình Thuận', NULL, NULL),
('CQ16', 'Ủy ban nhân dân tỉnh Gia Lai', NULL, NULL),
('CQ17', 'Ủy ban nhân dân Thành phố Cần Thơ', NULL, NULL),
('CQ18', 'Bộ Công Thương', NULL, NULL),
('CQ19', 'Bộ Khoa học và Công nghệ', NULL, NULL),
('CQ20', 'Chính phủ', NULL, NULL),
('CQ21', 'Thủ tướng Chính phủ', NULL, NULL),
('CQ22', 'Cục Thuế', NULL, NULL),
('CQ23', 'Viện Hàn lâm Khoa học xã hội Việt Nam', NULL, NULL),
('CQ24', 'Chi cục Trồng trọt và Bảo vệ thực vật tỉnh Hà Giang', NULL, NULL),
('CQ25', 'Chi cục Chăn nuôi, Thú y và Thủy sản tỉnh Hà Giang', NULL, NULL),
('CQ26', 'Ban Quản lý Cảng cá Bình Định', NULL, NULL),
('CQ27', 'Chi cục Thuế khu vực', NULL, NULL),
('CQ28', 'Sở Nông nghiệp và Môi trường tỉnh Gia Lai', NULL, NULL),
('CQ29', 'Sở Y tế tỉnh Gia Lai', NULL, NULL),
('CQ30', 'Sở Xây dựng tỉnh Bình Thuận', NULL, NULL),
('CQ31', 'Trường Tiểu học, Trung học cơ sở và Trung học phổ thông FPT tỉnh Bắc Ninh', NULL, NULL),
('CQ32', 'Thanh tra tỉnh Lai Châu', NULL, NULL),
('CQ33', 'Sở Nông nghiệp và Môi trường tỉnh Hà Giang', NULL, NULL),
('CQ34', 'Sở Nông nghiệp và Môi trường tỉnh Bình Định', NULL, NULL),
('CQ35', 'Sở Nông nghiệp và Môi trường tỉnh Gia Lai', NULL, NULL),
('CQ36', 'Sở Y tế tỉnh Gia Lai', NULL, NULL),
('CQ37', 'Sở Xây dựng tỉnh Bình Thuận', NULL, NULL),
('CQ38', 'Sở Nông nghiệp và Môi trường tỉnh Hà Giang', NULL, NULL),
('CQ39', 'Sở Nông nghiệp và Môi trường tỉnh Bình Định', NULL, NULL),
('CQ40', 'Sở Nông nghiệp và Môi trường tỉnh Gia Lai', NULL, NULL),
('CQ41', 'Sở Y tế tỉnh Gia Lai', NULL, NULL),
('CQ42', 'Sở Xây dựng tỉnh Bình Thuận', NULL, NULL),
('CQ43', 'Sở Nông nghiệp và Môi trường tỉnh Hà Giang', NULL, NULL),
('CQ44', 'Sở Nông nghiệp và Môi trường tỉnh Bình Định', NULL, NULL),
('CQ45', 'Sở Nông nghiệp và Môi trường tỉnh Gia Lai', NULL, NULL),
('CQ46', 'Sở Y tế tỉnh Gia Lai', NULL, NULL),
('CQ47', 'Sở Xây dựng tỉnh Bình Thuận', NULL, NULL),
('CQ48', 'Sở Nông nghiệp và Môi trường tỉnh Hà Giang', NULL, NULL),
('CQ49', 'Sở Nông nghiệp và Môi trường tỉnh Bình Định', NULL, NULL),
('CQ50', 'Sở Nông nghiệp và Môi trường tỉnh Gia Lai', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `positions`
--

CREATE TABLE `positions` (
  `PosId` varchar(20) NOT NULL,
  `SingerInfo` varchar(50) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `OranId` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`PosId`, `SingerInfo`, `Position`, `OranId`) VALUES
('CV01', 'Nguyễn Xuân Phúc', 'Chủ tịch nước', 'CQ01'),
('CV02', 'Nguyễn Sinh Hùng', NULL, 'CQ02'),
('CV03', 'Trường Chinh', NULL, 'CQ02'),
('CV04', 'Trần Thanh Mẫn', NULL, 'CQ02'),
('CV05', 'Tôn Thị Ngọc Hạnh', NULL, 'CQ04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_documents`
--

CREATE TABLE `type_documents` (
  `TypeId` varchar(10) NOT NULL,
  `TypeName` varchar(100) DEFAULT NULL,
  `OranId` varchar(13) DEFAULT NULL,
  `Priority` decimal(10,0) DEFAULT NULL,
  `IssuedAmount` decimal(10,0) DEFAULT NULL,
  `DueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `type_documents`
--

INSERT INTO `type_documents` (`TypeId`, `TypeName`, `OranId`, `Priority`, `IssuedAmount`, `DueDate`) VALUES
('BC', 'Báo cáo', NULL, NULL, NULL, NULL),
('BCTC', 'Báo cáo tài chính', NULL, NULL, NULL, NULL),
('BK', 'Biên kiểm', NULL, NULL, NULL, NULL),
('BL', 'Bản lĩnh', NULL, NULL, NULL, NULL),
('BM', 'Biểu mẫu', NULL, NULL, NULL, NULL),
('BMĐK', 'Biểu mẫu đăng ký', NULL, NULL, NULL, NULL),
('BP', 'Biện pháp', NULL, NULL, NULL, NULL),
('CN', 'Chứng nhận', NULL, NULL, NULL, NULL),
('CNĐK', 'Chứng nhận đăng ký', NULL, NULL, NULL, NULL),
('CT', 'Chỉ thị', NULL, NULL, NULL, NULL),
('CV', 'Công Văn', 'CQ04', NULL, NULL, NULL),
('CVBM', 'Công văn biểu mẫu', 'CQ30', NULL, NULL, NULL),
('CVPL', 'Công văn pháp luật', NULL, NULL, NULL, NULL),
('CVTC', 'Công văn tài chính', NULL, NULL, NULL, NULL),
('CVĐP', 'Công văn địa phương', NULL, NULL, NULL, NULL),
('GP', 'Giấy phép', NULL, NULL, NULL, NULL),
('GPKD', 'Giấy phép kinh doanh', NULL, NULL, NULL, NULL),
('GT', 'Giấy tờ', NULL, NULL, NULL, NULL),
('HD', 'Hướng dẫn', NULL, NULL, NULL, NULL),
('HDKT', 'Hướng dẫn kỹ thuật', NULL, NULL, NULL, NULL),
('HDLD', 'Hợp đồng lao động', NULL, NULL, NULL, NULL),
('HDSD', 'Hướng dẫn sử dụng', NULL, NULL, NULL, NULL),
('HDTC', 'Hướng dẫn tài chính', NULL, NULL, NULL, NULL),
('HP', 'Hiến pháp', 'CQ02', NULL, NULL, NULL),
('KH', 'Kế hoạch', NULL, NULL, NULL, NULL),
('KHĐT', 'Kế hoạch đầu tư', NULL, NULL, NULL, NULL),
('KL', 'Kết luận', NULL, NULL, NULL, NULL),
('LAW', 'Luật', 'CQ02', NULL, NULL, NULL),
('ND', 'Nghị định', 'CQ01', NULL, NULL, NULL),
('NQ', 'Nghị quyết', NULL, NULL, NULL, NULL),
('PAPL', 'Phương án pháp lý', NULL, NULL, NULL, NULL),
('PL', 'Phụ lục', NULL, NULL, NULL, NULL),
('PNQ', 'Phụ nữ quận', NULL, NULL, NULL, NULL),
('QCP', 'Quy chuẩn kỹ thuật', NULL, NULL, NULL, NULL),
('QD', 'Quyết định', NULL, NULL, NULL, NULL),
('QH', 'Quy hoạch', NULL, NULL, NULL, NULL),
('QTP', 'Quy trình phòng', NULL, NULL, NULL, NULL),
('QTR', 'Quy trình', NULL, NULL, NULL, NULL),
('QYĐ', 'Quy ước', NULL, NULL, NULL, NULL),
('TB', 'Thông báo', NULL, NULL, NULL, NULL),
('TBKT', 'Thông báo kỹ thuật', NULL, NULL, NULL, NULL),
('TBM', 'Tờ bướm', NULL, NULL, NULL, NULL),
('TC', 'Tiêu chuẩn', NULL, NULL, NULL, NULL),
('TCKT', 'Tiêu chuẩn kỹ thuật', NULL, NULL, NULL, NULL),
('TL', 'Tài liệu', NULL, NULL, NULL, NULL),
('TT', 'Thông tư', NULL, NULL, NULL, NULL),
('TTHC', 'Thủ tục hành chính', NULL, NULL, NULL, NULL),
('TTHĐ', 'Thông tin hoạt động', NULL, NULL, NULL, NULL),
('TTKT', 'Thông tin kỹ thuật', NULL, NULL, NULL, NULL),
('TTPL', 'Thông tin pháp luật', NULL, NULL, NULL, NULL),
('TTĐH', 'Thông tin điều hành', NULL, NULL, NULL, NULL),
('ĐA', 'Đề án', 'CQ16', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `documents_eng`
--
ALTER TABLE `documents_eng`
  ADD KEY `LanId` (`LanId`),
  ADD KEY `InfoId` (`InfoId`);

--
-- Chỉ mục cho bảng `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`FieldCode`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`FileCode`),
  ADD KEY `OranId` (`OranId`),
  ADD KEY `TypeId` (`TypeId`),
  ADD KEY `InfoId` (`InfoId`),
  ADD KEY `ID` (`ID`);

--
-- Chỉ mục cho bảng `infomation_documents_arrival`
--
ALTER TABLE `infomation_documents_arrival`
  ADD PRIMARY KEY (`InfoId`),
  ADD KEY `TypeId` (`TypeId`),
  ADD KEY `LanId` (`LanId`);

--
-- Chỉ mục cho bảng `infomation_documents_out`
--
ALTER TABLE `infomation_documents_out`
  ADD PRIMARY KEY (`InfoId`),
  ADD KEY `TypeId` (`TypeId`),
  ADD KEY `LanId` (`LanId`),
  ADD KEY `FileCode` (`FileCode`),
  ADD KEY `PosId` (`PosId`),
  ADD KEY `FieldCode` (`FieldCode`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`LanId`);

--
-- Chỉ mục cho bảng `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`OranId`);

--
-- Chỉ mục cho bảng `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`PosId`),
  ADD KEY `OranId` (`OranId`);

--
-- Chỉ mục cho bảng `type_documents`
--
ALTER TABLE `type_documents`
  ADD PRIMARY KEY (`TypeId`),
  ADD KEY `OranId` (`OranId`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `documents_eng`
--
ALTER TABLE `documents_eng`
  ADD CONSTRAINT `documents_eng_ibfk_1` FOREIGN KEY (`LanId`) REFERENCES `languages` (`LanId`),
  ADD CONSTRAINT `documents_eng_ibfk_2` FOREIGN KEY (`InfoId`) REFERENCES `infomation_documents_out` (`InfoId`);

--
-- Các ràng buộc cho bảng `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`OranId`) REFERENCES `organization` (`OranId`),
  ADD CONSTRAINT `files_ibfk_2` FOREIGN KEY (`TypeId`) REFERENCES `type_documents` (`TypeId`),
  ADD CONSTRAINT `files_ibfk_4` FOREIGN KEY (`InfoId`) REFERENCES `infomation_documents_arrival` (`InfoId`),
  ADD CONSTRAINT `files_ibfk_5` FOREIGN KEY (`ID`) REFERENCES `account` (`ID`);

--
-- Các ràng buộc cho bảng `infomation_documents_arrival`
--
ALTER TABLE `infomation_documents_arrival`
  ADD CONSTRAINT `infomation_documents_arrival_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `type_documents` (`TypeId`),
  ADD CONSTRAINT `infomation_documents_arrival_ibfk_2` FOREIGN KEY (`LanId`) REFERENCES `languages` (`LanId`);

--
-- Các ràng buộc cho bảng `infomation_documents_out`
--
ALTER TABLE `infomation_documents_out`
  ADD CONSTRAINT `infomation_documents_out_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `type_documents` (`TypeId`),
  ADD CONSTRAINT `infomation_documents_out_ibfk_2` FOREIGN KEY (`LanId`) REFERENCES `languages` (`LanId`),
  ADD CONSTRAINT `infomation_documents_out_ibfk_3` FOREIGN KEY (`FileCode`) REFERENCES `files` (`FileCode`),
  ADD CONSTRAINT `infomation_documents_out_ibfk_4` FOREIGN KEY (`PosId`) REFERENCES `positions` (`PosId`),
  ADD CONSTRAINT `infomation_documents_out_ibfk_6` FOREIGN KEY (`FieldCode`) REFERENCES `field` (`FieldCode`);

--
-- Các ràng buộc cho bảng `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`OranId`) REFERENCES `organization` (`OranId`);

--
-- Các ràng buộc cho bảng `type_documents`
--
ALTER TABLE `type_documents`
  ADD CONSTRAINT `type_documents_ibfk_1` FOREIGN KEY (`OranId`) REFERENCES `organization` (`OranId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
