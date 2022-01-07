-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2021 lúc 07:11 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pro1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `adverts`
--

CREATE TABLE `adverts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `adverts`
--

INSERT INTO `adverts` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`) VALUES
(2, 'Mọt Sách Văn Chương', 'Giảm sốc đến 60% \r\n - Đồng giá 10k\r\n - Duy nhất thứ 2: COUPON 25k', '/storage/advert1/8UwVKZ3ay4Vq34OMV9rk.1.jpg', '1.jpg', '2021-10-14 19:21:11', '2021-10-16 00:32:38'),
(3, 'Eshopper x Nhã Nam', 'Bão Sale Cấp Mười\r\n- GIẢM ĐẾN 50%', '/storage/advert1/m1mKDEJvJfRk567zbJxh.3.jpg', '3.jpg', '2021-10-14 19:31:15', '2021-10-16 00:32:56'),
(4, 'Nhà tài trợ chính', 'Anh Minh Nguyễn - Bách Khoa Đại Cương Môn Phái', '/storage/advert1/fWiCePcVeRqA5dreIOKt.BKĐCMP.jpg', 'BKĐCMP.jpg', '2021-10-16 00:30:59', '2021-10-16 00:30:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietthehangs`
--

CREATE TABLE `chitietthehangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CTTH_TheHangId` bigint(20) UNSIGNED NOT NULL,
  `CTTH_SachId` bigint(20) UNSIGNED NOT NULL,
  `CTTH_SoLuong` int(11) NOT NULL,
  `CTTH_ThanhTien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsaches`
--

CREATE TABLE `danhmucsaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DMS_Tieude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DMS_parentId` int(11) NOT NULL DEFAULT 0,
  `DMS_Mota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DMS_Vitri` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucsaches`
--

INSERT INTO `danhmucsaches` (`id`, `DMS_Tieude`, `DMS_parentId`, `DMS_Mota`, `DMS_Vitri`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Truyện cổ tích', 2, 'truyện cổ tích', 1, NULL, '2021-10-12 11:30:21', NULL),
(2, 'Sách thiếu nhi', 0, 'sách thiếu nhi', 0, '2021-10-09 17:47:29', '2021-10-12 11:29:53', NULL),
(3, 'Truyện tranh', 2, 'truyện tranh', 1, '2021-10-12 11:30:53', '2021-10-12 11:30:53', NULL),
(4, 'Kiến thức Bách Khoa', 2, 'kiến thức bách khoa', 1, '2021-10-12 11:33:09', '2021-10-12 11:33:09', NULL),
(5, 'Truyện kể cho bé', 2, 'truyện kể cho bé', 1, '2021-10-12 11:34:35', '2021-10-12 11:34:35', NULL),
(6, 'Tô màu - Luyện chữ', 2, 'Tô màu - luyện chữ', 1, '2021-10-12 11:35:06', '2021-10-12 11:35:06', NULL),
(7, 'Văn học thiếu nhi', 2, 'văn học thiếu nhi', 1, '2021-10-12 11:35:32', '2021-10-12 11:35:32', NULL),
(8, 'Truyện tranh ehon', 2, 'truyện tranh ehon', 1, '2021-10-12 11:36:18', '2021-10-12 11:36:18', NULL),
(9, 'Sách kỹ năng sống', 0, 'sách kỹ năng sống', 0, '2021-10-12 11:37:20', '2021-10-12 11:37:20', NULL),
(10, 'Sách tư duy - Kỹ năng sống', 9, 'sách tư duy - kỹ năng sống', 2, '2021-10-12 11:37:49', '2021-10-12 11:37:49', NULL),
(11, 'Sách nghệ thuật sống đẹp', 9, 'NT sống đẹp', 2, '2021-10-12 11:38:20', '2021-10-12 11:38:20', NULL),
(12, 'Sách hướng nghiệp - kỹ năng mềm', 9, 'hướng nghiệp, kĩ năng mềm', 2, '2021-10-12 11:39:12', '2021-10-12 11:39:12', NULL),
(13, 'Sách kinh tế', 0, 'sách kinh tế', 0, '2021-10-12 11:40:06', '2021-10-12 11:40:06', NULL),
(14, 'Sách kĩ năng làm việc', 13, 'kĩ năng làm việc', 3, '2021-10-12 11:40:42', '2021-10-12 11:40:42', NULL),
(15, 'Bài học kinh doanh', 13, 'kinh doanh', 3, '2021-10-12 11:41:11', '2021-10-12 11:41:11', NULL),
(16, 'Sách marketing - Bán hàng', 13, 'Marketing', 3, '2021-10-12 11:41:37', '2021-10-12 11:41:37', NULL),
(17, 'Sách kinh tế học', 13, 'kinh tế học', 3, '2021-10-12 11:42:32', '2021-10-12 11:42:32', NULL),
(18, 'Sách khởi nghiệp', 13, 'startup', 3, '2021-10-12 11:43:04', '2021-10-12 11:43:04', NULL),
(19, 'Sách lịch sử', 0, 'lịch sử', 0, '2021-10-12 11:44:12', '2021-10-12 11:44:12', NULL),
(20, 'Lịch sử thế giới', 19, 'lịch sử thế giới', 4, '2021-10-12 11:44:42', '2021-10-12 11:44:42', NULL),
(21, 'Lịch sử Việt Nam', 19, 'lịch sử Việt Nam', 4, '2021-10-12 11:45:13', '2021-10-12 11:45:13', NULL),
(22, 'Văn phòng phẩm', 0, 'vpp', 0, '2021-10-12 11:46:34', '2021-10-12 11:46:34', NULL),
(23, 'Dụng cụ văn phòng', 22, 'dụng cụ vp', 5, '2021-10-12 11:47:35', '2021-10-12 11:47:35', NULL),
(24, 'Bút - Viết các loại', 22, 'bút', 5, '2021-10-12 11:48:02', '2021-10-12 11:48:02', NULL),
(25, 'Dụng cụ học sinh', 22, 'dụng cụ học sinh', 5, '2021-10-12 11:48:42', '2021-10-12 11:48:42', NULL),
(26, 'Sổ các loại', 22, 'sổ', 5, '2021-10-12 11:49:15', '2021-10-12 11:49:15', NULL),
(27, 'Sách y học', 0, 'sách y học', 0, '2021-10-13 20:54:40', '2021-10-13 20:54:40', NULL),
(28, 'Sách giáo khoa', 0, 'sgk', 0, '2021-10-14 19:48:31', '2021-10-14 19:48:31', NULL),
(29, 'Sách Tôn Giáo - Tâm Linh', 0, 'tôn giáo', 0, '2021-10-14 19:49:03', '2021-10-14 19:49:03', NULL),
(30, 'Từ điển', 0, 'từ điển', 0, '2021-10-14 19:49:22', '2021-10-14 19:49:22', NULL),
(31, 'Sách học ngoại ngữ', 0, 'ngoại ngữ', 0, '2021-10-14 19:49:47', '2021-10-14 19:49:47', NULL),
(32, 'Sách tham khảo', 0, 'tham khảo', 0, '2021-10-14 19:50:03', '2021-10-14 19:50:03', NULL),
(33, 'Sách tâm lý', 0, 'tâm lý', 0, '2021-10-14 19:52:10', '2021-10-14 19:52:10', NULL),
(34, 'Tạp chí', 0, 'tạp chí', 0, '2021-10-14 19:52:30', '2021-10-14 19:52:30', NULL),
(35, 'Thể dục - thể thao', 0, 'thể thao', 0, '2021-10-14 19:52:48', '2021-10-14 19:52:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhangs`
--

CREATE TABLE `khachhangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KH_TenTruyCap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KH_MatKhau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KH_HoTen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KH_Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KH_NgayBatDau` datetime NOT NULL,
  `KH_TrangThai` blob NOT NULL,
  `KH_DienThoai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KH_DiaChi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_10_07_091337_create_nxbs_table', 1),
(2, '2021_10_07_091654_create_tacgias_table', 1),
(3, '2021_10_07_092318_create_danhmucsaches_table', 1),
(4, '2021_10_07_093107_create_khachhangs_table', 1),
(5, '2021_10_07_093108_create_thehangs_table', 1),
(6, '2021_10_07_094340_create_saches_table', 1),
(7, '2021_10_07_094341_create_chitietthehangs_table', 1),
(8, '2021_10_07_100752_create_nhomtins_table', 1),
(9, '2021_10_07_100806_create_tintucs_table', 1),
(10, '2021_10_07_101227_create_adverts_table', 1),
(11, '2021_10_07_101228_create_menus_table', 1),
(12, '2021_10_07_101229_create_settings_table', 1),
(13, '2021_10_07_101230_create_users_table', 1),
(14, '2021_10_07_101231_add_column_delete_at_table_danhmucsaches', 1),
(15, '2021_10_07_101232_add_column_slug_to_menus_table', 1),
(16, '2021_10_07_101233_add_column_type_table_setting', 1),
(17, '2021_10_07_101234_add_delete_at_table_setting', 1),
(18, '2021_10_07_101235_add_column_soft_delete_to_menus_table', 1),
(19, '2021_10_09_235005_add_column_deleted_at_table_nhomtins', 2),
(20, '2021_10_13_090229_add_column_soft_delete_to_tintucs_table', 3),
(21, '2021_10_13_161939_add_column_soft_delete_to_nxbs_table', 3),
(22, '2021_10_13_162147_add_column_soft_delete_to_tacgias_table', 3),
(23, '2021_10_15_154533_add_colum_t_tvt_to__tin_tucs_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomtins`
--

CREATE TABLE `nhomtins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NT_Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NT_MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NT_ViTri` int(11) NOT NULL,
  `NT_TrangThai` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomtins`
--

INSERT INTO `nhomtins` (`id`, `NT_Ten`, `NT_MoTa`, `NT_ViTri`, `NT_TrangThai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Man', 'Men', 0, NULL, '2021-10-09 10:51:37', '2021-10-09 10:51:37', NULL),
(2, 'Man2', 'Men', 1, NULL, '2021-10-09 16:43:55', '2021-10-09 17:00:54', '2021-10-09 17:00:54'),
(3, 'Man1', 'Men', 1, NULL, '2021-10-09 17:04:45', '2021-10-16 09:59:40', '2021-10-16 09:59:40'),
(4, 'Man2', 'Men', 1, NULL, '2021-10-09 17:04:55', '2021-10-16 09:59:28', '2021-10-16 09:59:28'),
(5, 'Man1.1', 'Men', 3, NULL, '2021-10-09 17:05:06', '2021-10-16 09:59:25', '2021-10-16 09:59:25'),
(6, 'Woman', 'Women', 0, NULL, '2021-10-09 17:05:14', '2021-10-16 09:59:17', '2021-10-16 09:59:17'),
(7, 'Woman1', 'Women', 6, NULL, '2021-10-09 17:05:27', '2021-10-16 09:59:09', '2021-10-16 09:59:09'),
(8, 'Review sách', 'review', 0, NULL, '2021-10-16 10:00:13', '2021-10-16 10:00:13', NULL),
(9, 'Sách nên đọc', 'list sách', 0, NULL, '2021-10-16 10:00:30', '2021-10-16 10:00:30', NULL),
(10, 'Thông tin khuyến mãi', 'khuyến mãi', 0, NULL, '2021-10-16 10:00:49', '2021-10-16 10:00:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nxbs`
--

CREATE TABLE `nxbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NXB_Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NXB_Mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nxbs`
--

INSERT INTO `nxbs` (`id`, `NXB_Ten`, `NXB_Mota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kim Đồng', 'nxb KĐ', '2021-10-13 09:06:00', '2021-10-13 09:06:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saches`
--

CREATE TABLE `saches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `S_DanhmucId` bigint(20) UNSIGNED NOT NULL,
  `S_Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_Ma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Anh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_FileUpload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Chitiet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_TuKhoa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_GiaBan` int(11) DEFAULT NULL,
  `S_TrangThai` blob DEFAULT NULL,
  `S_SoLanXem` int(11) DEFAULT NULL,
  `S_KichCo` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_NXBId` bigint(20) UNSIGNED DEFAULT NULL,
  `S_GiaNhap` int(11) DEFAULT NULL,
  `S_SoLuong` int(11) DEFAULT NULL,
  `S_ViTri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_NguyenBo` int(11) DEFAULT NULL,
  `S_TacGiaId` bigint(20) UNSIGNED DEFAULT NULL,
  `S_CanNang` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `saches`
--

INSERT INTO `saches` (`id`, `S_DanhmucId`, `S_Ten`, `S_Ma`, `S_Anh`, `S_FileUpload`, `S_Mota`, `S_Chitiet`, `S_TuKhoa`, `S_GiaBan`, `S_TrangThai`, `S_SoLanXem`, `S_KichCo`, `S_NXBId`, `S_GiaNhap`, `S_SoLuong`, `S_ViTri`, `S_NguyenBo`, `S_TacGiaId`, `S_CanNang`, `created_at`, `updated_at`) VALUES
(14, 1, '101 truyện cổ tích chọn lọc', NULL, '101 truyện cổ tích chọn lọc.jpg', NULL, NULL, 'truyện cổ tích', 'truyencotich', 59800, NULL, NULL, NULL, 1, NULL, 3, '/storage/sachs1/3HpfMku7LWDHd1psE1s6.101 truyện cổ tích chọn lọc.jpg', NULL, 3, NULL, '2021-10-15 00:18:38', '2021-10-15 00:18:38'),
(15, 1, 'Cô bé quàng khăn đỏ', NULL, '204171-co-be-quang-khan-do.jpg', NULL, NULL, 'sdfasd', 'truyencotich', 52000, NULL, NULL, NULL, 1, NULL, 3, '/storage/sachs1/3LnhZaoytNN71vI58PxA.204171-co-be-quang-khan-do.jpg', NULL, 3, NULL, '2021-10-15 00:24:36', '2021-10-15 00:24:36'),
(16, 1, 'Alice ở xứ sở thần tiên', NULL, 'Alice ở xứ sở thần tiên.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 82000, NULL, NULL, NULL, 1, NULL, 3, '/storage/sachs1/uWCR3PZL79TvOFdWwF1w.Alice ở xứ sở thần tiên.jpg', NULL, 3, NULL, '2021-10-15 00:25:48', '2021-10-15 00:25:48'),
(17, 1, 'Cây khế', NULL, 'Cây khế.jpg', NULL, NULL, 'truyen co tich', NULL, 26000, NULL, NULL, NULL, 1, NULL, 3, '/storage/sachs1/kR5ExNQ6Fo3CyXj7fVA2.Cây khế.jpg', NULL, 3, NULL, '2021-10-15 00:29:56', '2021-10-15 00:29:56'),
(18, 1, 'Cây tre trăm đốt', NULL, 'cây tre trăm đốt.jpg', NULL, NULL, 'truyen co tich', NULL, 35000, NULL, NULL, NULL, 1, NULL, 16, '/storage/sachs1/ZOojpCiLAC1kbWUetWqh.cây tre trăm đốt.jpg', NULL, 3, NULL, '2021-10-15 00:32:58', '2021-10-15 00:32:58'),
(19, 1, 'Chiếc hũ thần', NULL, 'Chiếc hũ thần.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 15000, NULL, NULL, NULL, 1, NULL, 12, '/storage/sachs1/bSiNsn263B34ddMVHLao.Chiếc hũ thần.jpg', NULL, 3, NULL, '2021-10-15 00:34:08', '2021-10-15 00:34:08'),
(20, 1, 'Chú Cuội', NULL, 'chú cuội.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 27000, NULL, NULL, NULL, 1, NULL, 30, '/storage/sachs1/Kkh2rm6DYNzgQ5ZEge7d.chú cuội.jpg', NULL, 3, NULL, '2021-10-15 00:35:29', '2021-10-15 00:35:29'),
(21, 1, 'Cô bé bán diêm', NULL, 'cô bé bán diêm.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 14000, NULL, NULL, NULL, 1, NULL, 23, '/storage/sachs1/VZoJBmlcwPUcM8JO68zt.cô bé bán diêm.jpg', NULL, 3, NULL, '2021-10-15 00:36:15', '2021-10-15 00:36:15'),
(22, 1, 'Kho tàng truyện cổ tích Việt Nam', NULL, 'kho tàng truyện cổ tích VN.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 98000, NULL, NULL, NULL, 1, NULL, 24, '/storage/sachs1/XVGN48kGlgfd5HcIFlTi.kho tàng truyện cổ tích VN.jpg', NULL, 3, NULL, '2021-10-15 00:39:25', '2021-10-15 00:39:25'),
(23, 1, 'Sọ dừa', NULL, 'Sọ dừa.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 13400, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs1/xb2x5XCFOYgsx7bcaCp8.Sọ dừa.jpg', NULL, 3, NULL, '2021-10-15 00:40:58', '2021-10-15 00:40:58'),
(24, 1, 'Sự tích dưa hấu', NULL, 'Sự tích dưa hấu.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 45000, NULL, NULL, NULL, 1, NULL, 23, '/storage/sachs1/qPsf4e3XwVBscRUDFylG.Sự tích dưa hấu.jpg', NULL, 3, NULL, '2021-10-15 00:44:14', '2021-10-15 00:44:14'),
(25, 1, 'Thạch sanh', NULL, 'Thạch sanh.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 46000, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs1/ZssTM6XtWobTViTWiguy.Thạch sanh.jpg', NULL, 3, NULL, '2021-10-15 00:45:47', '2021-10-15 00:45:47'),
(26, 1, 'Truyện cổ tích hay nhất Việt Nam phần 3', NULL, 'Truyện cổ tích việt nam hay nhất 3.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 57000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/QLnzwzY0NvM7kEgAu6M4.Truyện cổ tích việt nam hay nhất 3.jpg', NULL, 3, NULL, '2021-10-15 00:47:58', '2021-10-15 00:47:58'),
(27, 1, 'Truyện cổ tích Việt Nam hay nhất', NULL, 'truyện cổ tích việt nam hay nhất.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 101000, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs1/GqQz2HK7xRh5SU0SUGTc.truyện cổ tích việt nam hay nhất.jpg', NULL, 3, NULL, '2021-10-15 00:53:06', '2021-10-15 00:53:06'),
(28, 1, 'Tấm cám', NULL, 'truyen-co-tich-viet-nam-danh-cho-thieu-nhi-tam-cam.gif', NULL, NULL, 'truyen co tich', 'truyencotich', 89700, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs1/RxxcH0BsmawmdVzLUvcw.truyen-co-tich-viet-nam-danh-cho-thieu-nhi-tam-cam.gif', NULL, 3, NULL, '2021-10-15 00:54:28', '2021-10-15 00:54:28'),
(29, 1, 'Truyện cổ tích hay nhất Việt Nam phần 2', NULL, 'truyen-co-tich-viet-nam-hay-nhat-tap-2-1.jpg', NULL, NULL, NULL, 'truyencotich', 98000, NULL, NULL, NULL, 1, NULL, 5, '/storage/sachs1/1xQRnbdp9xhO7EilKA6F.truyen-co-tich-viet-nam-hay-nhat-tap-2-1.jpg', NULL, 3, NULL, '2021-10-15 00:57:57', '2021-10-15 00:57:57'),
(30, 1, 'Vịt con xấu xí', NULL, 'vit-con-xau-xi-master.png', NULL, NULL, 'truyen co tich', 'truyencotich', 34000, NULL, NULL, NULL, 1, NULL, 3, '/storage/sachs1/2NLP9r6xZ5bMwiTem1jZ.vit-con-xau-xi-master.png', NULL, 3, NULL, '2021-10-15 00:59:26', '2021-10-15 00:59:26'),
(31, 1, 'Ba chú lợn con', NULL, 'Ba chú lợn con.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 56300, NULL, NULL, NULL, 1, NULL, 6, '/storage/sachs1/X9AiI1Pd49bVVEjHyYUv.Ba chú lợn con.jpg', NULL, 3, NULL, '2021-10-15 01:05:11', '2021-10-15 01:05:11'),
(32, 2, '101 truyện cổ tích chọn lọc', NULL, '101 truyện cổ tích chọn lọc.jpg', NULL, NULL, 'truyen co tich', 'truyencotich', 59800, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs1/3GgaRCkxFDLYvq8DdfJP.101 truyện cổ tích chọn lọc.jpg', NULL, 3, NULL, '2021-10-15 20:21:41', '2021-10-15 20:21:41'),
(33, 2, 'Cây khế', NULL, 'Cây khế.jpg', NULL, NULL, NULL, 'truyencotich', 26000, NULL, NULL, NULL, 1, NULL, 3, '/storage/sachs1/669Q10dYzo1P126Pf7iV.Cây khế.jpg', NULL, 3, NULL, '2021-10-15 20:24:59', '2021-10-15 20:24:59'),
(34, 2, 'Cây tre trăm đốt', NULL, 'cây tre trăm đốt.jpg', NULL, NULL, NULL, 'truyencotich', 35000, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs1/vbmKJc6V0z4VcsnE5J9O.cây tre trăm đốt.jpg', NULL, 3, NULL, '2021-10-15 20:26:49', '2021-10-15 20:26:49'),
(35, 2, 'Cô bé bán diêm', NULL, 'cô bé bán diêm.jpg', NULL, NULL, NULL, 'truyencotich', 14000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/LqCiAAazY7STgEbh0DNq.cô bé bán diêm.jpg', NULL, 3, NULL, '2021-10-15 20:27:37', '2021-10-15 20:27:37'),
(36, 2, 'Sọ dừa', NULL, 'Sọ dừa.jpg', NULL, NULL, NULL, 'truyencotich', 13400, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs1/oxjx6Is0pa1AelAPUbeS.Sọ dừa.jpg', NULL, 3, NULL, '2021-10-15 20:28:12', '2021-10-15 20:28:12'),
(37, 3, 'Thám tử lừng danh Conan tập 1', NULL, 'conan1 (1).jpg', NULL, NULL, '\"', 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 5, '/storage/sachs1/iyP5xqqDE9mDKz1fOAMb.conan1 (1).jpg', NULL, 3, NULL, '2021-10-15 23:26:40', '2021-10-15 23:54:53'),
(38, 3, 'Thám tử lừng danh Conan tập 3', NULL, 'conan3.jpg', NULL, NULL, NULL, 'truyencotich', 20000, NULL, NULL, NULL, 1, NULL, 7, '/storage/sachs1/lYpIaXnm0ZxtTh1DZX4S.conan3.jpg', NULL, 3, NULL, '2021-10-15 23:36:19', '2021-10-15 23:36:19'),
(39, 3, 'Thám tử lừng danh Conan tập 5', NULL, 'conan5(1).jpg', NULL, NULL, '\"', 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/akvDe9xk63N0GuxZT59Q.conan5(1).jpg', NULL, 3, NULL, '2021-10-15 23:36:59', '2021-10-15 23:55:47'),
(40, 3, 'Thám tử lừng danh Conan tập 7', NULL, 'conan7.jpg', NULL, NULL, NULL, 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 6, '/storage/sachs1/gitcRd01cGF7SO9nPXaH.conan7.jpg', NULL, 3, NULL, '2021-10-15 23:37:32', '2021-10-15 23:37:32'),
(41, 3, 'Thám tử lừng danh Conan tập 10', NULL, 'conan10.jpg', NULL, NULL, NULL, 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 23, '/storage/sachs1/ILNBzl5E2L9eRTJteO94.conan10.jpg', NULL, 3, NULL, '2021-10-15 23:38:14', '2021-10-15 23:38:14'),
(42, 3, 'Thám tử lừng danh Conan tập 11', NULL, 'conan11.jpg', NULL, NULL, NULL, 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 43, '/storage/sachs1/s5R76TPAADjnMMoSMXbq.conan11.jpg', NULL, 3, NULL, '2021-10-15 23:38:47', '2021-10-15 23:38:47'),
(43, 3, 'Thám tử lừng danh Conan tập 17', NULL, 'conan17.jpg', NULL, NULL, NULL, 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 54, '/storage/sachs1/jauP1csVaxgFWFXIkaCD.conan17.jpg', NULL, 3, NULL, '2021-10-15 23:39:23', '2021-10-15 23:39:23'),
(44, 3, 'Thám tử lừng danh Conan tập 30', NULL, 'conan30.jpg', NULL, NULL, NULL, 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 897, '/storage/sachs1/FZuVpVuXEeH8RIEZSQ2A.conan30.jpg', NULL, 3, NULL, '2021-10-15 23:40:00', '2021-10-15 23:40:00'),
(45, 3, 'Thám tử lừng danh Conan tập 42', NULL, 'conan42(1).jpg', NULL, NULL, '\"', 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs1/P5PshlQoY2hkjRvryQam.conan42(1).jpg', NULL, 3, NULL, '2021-10-15 23:40:41', '2021-10-15 23:57:22'),
(46, 3, 'Thám tử lừng danh Conan tập 75', NULL, 'conan75.jpg', NULL, NULL, NULL, 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 454, '/storage/sachs1/Sqg3MdYeG4wX9o45EdfY.conan75.jpg', NULL, 3, NULL, '2021-10-15 23:41:18', '2021-10-15 23:41:18'),
(47, 3, 'Thám tử lừng danh Conan tập 82', NULL, 'conan82 1.jpg', NULL, NULL, '\"', NULL, 20000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/fFBXdNCpzKpMUGKH6jeH.conan82 1.jpg', NULL, 3, NULL, '2021-10-15 23:41:54', '2021-10-15 23:58:15'),
(48, 3, 'Thám tử lừng danh Conan tập 85', NULL, 'conan85.jpg', NULL, NULL, NULL, 'truyentranh', 20000, NULL, NULL, NULL, 1, NULL, 87, '/storage/sachs1/L9QWqL1TRsCW43kPSWYw.conan85.jpg', NULL, 3, NULL, '2021-10-15 23:42:38', '2021-10-15 23:42:38'),
(49, 3, 'Doraemon tập 1', NULL, 'doraemon1.jpg', NULL, NULL, NULL, 'truyentranh', 19000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/clVtmjkJd7jwx9FYiMrj.doraemon1.jpg', NULL, 3, NULL, '2021-10-15 23:43:22', '2021-10-15 23:43:22'),
(50, 3, 'Doraemon tập 44', NULL, 'doraemon4.jpg', NULL, NULL, NULL, 'truyentranh', 19000, NULL, NULL, NULL, 1, NULL, 4, '/storage/sachs1/7SwXAkSOxsScyzqPLIEo.doraemon4.jpg', NULL, 3, NULL, '2021-10-15 23:43:58', '2021-10-15 23:43:58'),
(51, 3, 'Doraemon tập 6', NULL, 'doraemon6dai.jpg', NULL, NULL, NULL, 'truyentranh', 19000, NULL, NULL, NULL, 1, NULL, 65, '/storage/sachs1/lttg4ZeyUgw2WamgBwHY.doraemon6dai.jpg', NULL, 3, NULL, '2021-10-15 23:44:40', '2021-10-15 23:44:40'),
(52, 2, 'Doraemon tập 1', NULL, 'doraemon1.jpg', NULL, NULL, NULL, 'truyentranh', 19000, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs1/uMWPk5g7HV6xeEzBqtOV.doraemon1.jpg', NULL, 3, NULL, '2021-10-15 23:45:34', '2021-10-15 23:45:34'),
(53, 2, 'Doraemon tập 6', NULL, 'doraemon6dai.jpg', NULL, NULL, NULL, 'truyentranh', 19000, NULL, NULL, NULL, 1, NULL, 43, '/storage/sachs1/4t6cTJARd0E2VKd2dmKR.doraemon6dai.jpg', NULL, 3, NULL, '2021-10-15 23:49:34', '2021-10-15 23:49:34'),
(54, 2, 'Doraemon tập 44', NULL, 'doraemon4.jpg', NULL, NULL, NULL, 'truyentranh', 19000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/FVJIEiuY2qZ1ZxoFfNKQ.doraemon4.jpg', NULL, 3, NULL, '2021-10-15 23:50:04', '2021-10-15 23:50:04'),
(55, 31, 'Cambridge English Ielts', NULL, 'cambridge English ielts.jpg', NULL, NULL, NULL, 'tienganh', 145000, NULL, NULL, NULL, 1, NULL, 435, '/storage/sachs1/bTzpPvqpKKccSJRWW5dd.cambridge English ielts.jpg', NULL, 3, NULL, '2021-10-16 00:11:48', '2021-10-16 00:11:48'),
(56, 31, 'Combo 2 cuốn Minna no Nihongo', NULL, 'combo 2 minna.jpg', NULL, NULL, NULL, 'tiengnhat', 230000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/iPCBiHQGTUoha97DfvAS.combo 2 minna.jpg', NULL, 3, NULL, '2021-10-16 00:12:45', '2021-10-16 00:12:45'),
(57, 31, 'Combo Mimikara Oboeru', NULL, 'combo mimikara n2.jpg', NULL, NULL, NULL, 'tiengnhat', 290000, NULL, NULL, NULL, 1, NULL, 66, '/storage/sachs1/Cam0ft4HfHsqkTBIA6wc.combo mimikara n2.jpg', NULL, 3, NULL, '2021-10-16 00:13:29', '2021-10-16 00:13:29'),
(58, 31, 'Giải thích ngữ pháp tiếng Anh', NULL, 'GiaithichNPTienganh.jpg', NULL, NULL, NULL, 'tienganh', 124000, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs1/R4n0TnKqnJweZVYrbOLw.GiaithichNPTienganh.jpg', NULL, 3, NULL, '2021-10-16 00:14:38', '2021-10-16 00:14:38'),
(59, 31, 'Hackers Ielts Reading Basic', NULL, 'Hackers ielts reading basic.jpg', NULL, NULL, NULL, 'tienganh', 245000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/aefq2eC4SkDxyV5dyP0h.Hackers ielts reading basic.jpg', NULL, 3, NULL, '2021-10-16 00:15:28', '2021-10-16 00:15:28'),
(60, 31, 'Hackers Ielts Speaking', NULL, 'Hackers Ielts speaking.jpg', NULL, NULL, NULL, 'tienganh', 237000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/O1YI0UpAjaL0Yu9agvGR.Hackers Ielts speaking.jpg', NULL, 3, NULL, '2021-10-16 00:16:10', '2021-10-16 00:16:10'),
(61, 31, 'Ielts Academic 14', NULL, 'Ielts academic 14.jpg', NULL, NULL, NULL, 'tienganh', 78000, NULL, NULL, NULL, 1, NULL, 67, '/storage/sachs1/jU5IwGyrJiesVp0BkuOn.Ielts academic 14.jpg', NULL, 3, NULL, '2021-10-16 00:16:59', '2021-10-16 00:16:59'),
(62, 31, 'Mimikara Oboeru Goi N1', NULL, 'mimikara goi n1.jpg', NULL, NULL, NULL, 'tiengnhat', 90000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs1/NLZqtOzlPsMXshveTae2.mimikara goi n1.jpg', NULL, 3, NULL, '2021-10-16 00:18:01', '2021-10-16 00:18:01'),
(63, 31, 'Mimikara Oboeru Goi N2', NULL, 'mimikara n2.jpg', NULL, NULL, NULL, 'tiengnhat', 95000, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs1/nuRFcUszvWWC06r7eDtD.mimikara n2.jpg', NULL, 3, NULL, '2021-10-16 00:19:02', '2021-10-16 00:19:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`, `deleted_at`) VALUES
(1, 'phone_contact', '0346674653', '2021-10-13 01:16:21', '2021-10-13 01:16:27', 'Text', '2021-10-13 01:16:27'),
(2, 'phone_contact', '(+84)346674653', '2021-10-14 18:50:42', '2021-10-14 18:50:42', 'Text', NULL),
(3, 'email', 'cskh@eshopper.com', '2021-10-14 18:59:28', '2021-10-14 18:59:28', 'Text', NULL),
(4, 'facebook_link', 'https://www.facebook.com/mit.nguyenvan.505', '2021-10-14 19:01:59', '2021-10-14 19:01:59', 'Text', NULL),
(5, 'twitter_link', 'https://twitter.com/home', '2021-10-14 19:03:13', '2021-10-14 19:03:13', 'Text', NULL),
(6, 'linkedin_link', 'https://www.linkedin.com/feed/', '2021-10-14 19:03:57', '2021-10-14 19:03:57', 'Text', NULL),
(7, 'footer_infor', 'Codekit BKĐCMP Nhóm 1', '2021-10-16 00:35:02', '2021-10-16 00:35:02', 'Text', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgias`
--

CREATE TABLE `tacgias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TG_HoTen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TG_Mota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgias`
--

INSERT INTO `tacgias` (`id`, `TG_HoTen`, `TG_Mota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Phú', 'Links', '2021-10-13 09:17:59', '2021-10-13 09:23:48', '2021-10-13 09:23:48'),
(3, 'Phúc', 'LXP', '2021-10-13 09:18:36', '2021-10-13 09:18:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thehangs`
--

CREATE TABLE `thehangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TH_KhachHangId` bigint(20) UNSIGNED NOT NULL,
  `TH_Ngay` datetime NOT NULL,
  `TH_ThanhTien` int(11) NOT NULL,
  `TH_TrangThai` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintucs`
--

CREATE TABLE `tintucs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TT_TieuDe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_TacGia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_Ngay` datetime NOT NULL,
  `TT_MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_Anh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_HienThi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_NhomTin` bigint(20) UNSIGNED NOT NULL,
  `TT_TrangThai` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `TT_paths` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintucs`
--

INSERT INTO `tintucs` (`id`, `TT_TieuDe`, `TT_TacGia`, `TT_Ngay`, `TT_MoTa`, `TT_NoiDung`, `TT_Anh`, `TT_HienThi`, `TT_NhomTin`, `TT_TrangThai`, `created_at`, `updated_at`, `deleted_at`, `TT_paths`) VALUES
(4, 'Sách hay', 'Phú', '2021-10-06 00:00:00', 'Sách hay của Phú', 'Sách rất hay', '15871906_397733150569242_2817492152696043385_n.jpg', '12', 5, NULL, '2021-10-13 00:33:51', '2021-10-16 10:02:48', '2021-10-16 10:02:48', ''),
(5, 'Sách hay 1', 'Phúc', '2021-10-05 00:00:00', 'Sách hay của Phúc', 'Sách rất hay 1', '17264352_432835953725628_8184855523507418471_n.jpg', '13', 4, NULL, '2021-10-13 00:34:36', '2021-10-13 02:05:13', '2021-10-13 02:05:13', ''),
(6, 'Sách không hay', 'Phúc', '2021-10-14 14:45:00', 'Phúc', 'Phú c', '9f1ce36e753e6bc87fbec5abcb52a0af.jpg', '121', 3, NULL, '2021-10-13 00:36:41', '2021-10-16 10:02:45', '2021-10-16 10:02:45', ''),
(11, 'Sách cho mẹ', 'Thương', '2021-10-16 14:23:00', 'Sách hay của Thương', 'Sách cho mẹ', '3f3d94b75e0e92ef120ee66c177441a1.jpg', '121', 7, NULL, '2021-10-13 20:59:19', '2021-10-16 10:02:42', '2021-10-16 10:02:42', ''),
(12, 'Sách rất hay', 'Phúc', '2021-10-16 14:24:00', 'dsf', 'dsf', 'mimikara combo n3.jpg', 'dsfsfdsf', 1, NULL, '2021-10-16 00:26:44', '2021-10-16 10:02:58', '2021-10-16 10:02:58', '/storage/News1/GWG052GNimeMkMbqSZcx.mimikara combo n3.jpg'),
(13, 'Sách rất hay', 'Phúc', '2021-10-16 14:27:00', 'dsf', 'fdsf', 'mimikara goi n1.jpg', 'dsfdsf', 1, NULL, '2021-10-16 00:27:22', '2021-10-16 10:02:32', '2021-10-16 10:02:32', '/storage/News1/ueR04ezcWzsJZJCpDOe5.mimikara goi n1.jpg'),
(14, '10 Cuốn Sách Hay 2021 Nên đọc', 'Lương Xuân Phúc', '2021-10-14 23:52:00', '10 cuốn sách hay 2021', '1 1. Lặng Nhìn Cuộc Sống 2 2. Muôn Kiếp Nhân Sinh 3 3. Đàn ông sao hỏa đàn bà sao kim 4 4. Ông trăm tuổi trèo qua cửa sổ và biến mất 5 5. Khéo Ăn Nói Sẽ Có Được Thiên Hạ 6 6. Lối sống tối giản của người Nhật 7 7. Tình yêu của anh, thế giới của em 8 8. Biên niên cô đơn 9 9. Chuyện con mèo dạy hải âu bay 10 10. Hành trình về phương đông', 'lối sống tối giản.jpg', 'Lối sống tối giản của người Nhật — Đây là một trong những cuốn sách nổi tiếng, bán chạy nhất mọi thời đại. Không phải một cuốn truyện, không phải ngôn tình, ...', 1, NULL, '2021-10-16 09:54:25', '2021-10-16 09:54:25', NULL, '/storage/News1/J4UQWojQxlXRfcXvkMs3.lối sống tối giản.jpg'),
(15, '[REVIEW] LỐI SỐNG TỐI GIẢN THỜI CÔNG NGHỆ SỐ', 'Nguyễn Như Nam Anh', '2021-10-10 23:57:00', 'review sách', 'Những ngày gần đây, thế giới công nghệ đang “phát sốt” vì những sản phẩm mới “ra lò” của Apple như iPad Air mới, Apple Watch series 6, và đặc biệt là iOS 14. Riêng iPhone 12 thì được “ém”, có lẽ với mục đích marketing và nó kích thích sự tò mò của khách […]', 'dscf0380.jpg', 'Những ngày gần đây, thế giới công nghệ đang “phát sốt” vì những sản phẩm mới “ra lò” của Apple như iPad Air mới, Apple Watch series 6, và đặc biệt là iOS 14. Riêng iPhone 12 thì được “ém”, có lẽ với mục đích marketing và nó kích thích sự tò mò của khách ...', 6, NULL, '2021-10-16 09:58:55', '2021-10-16 09:58:55', NULL, '/storage/News1/WWE3rkIx9sHrKystsP23.dscf0380.jpg'),
(16, '[REVIEW] MÁY ĐỌC SÁCH “VẠN NĂNG” CỦA MÌNH – KINDLE PAPERWHITE', 'Nguyễn Như Nam Anh', '2021-10-05 00:03:00', 'MÁY ĐỌC SÁCH', 'Mấy ngày hôm nay trời Hà Nội mát quá, cứ như là mùa xuân ở nước Nhật vậy. Hôm qua mình đạp xe ven hồ Tây, và chiều nay cũng thế. Mình đạp đến Tranquil Books & Cafe 18b Nguyễn Biểu, lần đầu tiên gọi cốc trà hoa cúc LẠNH (vì đạp xong nóng […]', 'p_20190509_163627-01.jpeg', 'Mấy ngày hôm nay trời Hà Nội mát quá, cứ như là mùa xuân ở nước Nhật vậy. Hôm qua mình đạp xe ven hồ Tây, và chiều nay cũng thế. Mình đạp đến Tranquil Books & Cafe 18b Nguyễn Biểu, lần đầu tiên gọi cốc trà hoa cúc LẠNH (vì đạp xong nóng […]', 8, NULL, '2021-10-16 10:04:32', '2021-10-16 10:04:32', NULL, '/storage/News1/7jcR4cXQf0hqxqS6l6Oo.p_20190509_163627-01.jpeg'),
(17, '[REVIEW] VÌ SAO NGƯỜI ĐAN MẠCH LẠI SỬ DỤNG TIỀN LƯƠNG ĐẦU TIÊN ĐỂ MUA… GHẾ?', 'Nguyễn Như Nam Anh', '2021-10-01 00:05:00', 'review sách', 'Đó là tiêu đề của cuốn sách mà mình đã dành cả buổi sáng hôm nay ngồi đọc ở cafe (tiêu đề gốc tiếng Nhật: “なぜデンマーク人は初任給でイスを買うのか?”). Nó cuốn hút đến nỗi mình gần như quên cả thời gian, để rồi khi mở điện thoại ra thì đã là 11 giờ hơn. Bên trong cuốn sách này có […]', 'dscf3592-01.jpeg', 'Đó là tiêu đề của cuốn sách mà mình đã dành cả buổi sáng hôm nay ngồi đọc ở cafe (tiêu đề gốc tiếng Nhật: “なぜデンマーク人は初任給でイスを買うのか?”). Nó cuốn hút đến nỗi mình gần như quên cả thời gian, để rồi khi mở điện thoại ra thì đã là 11 giờ hơn. Bên trong cuốn sách này có […]', 8, NULL, '2021-10-16 10:06:11', '2021-10-16 10:06:11', NULL, '/storage/News1/zamm8ruZEaGwhioqxvU0.dscf3592-01.jpeg'),
(18, 'BÀN LUẬN VỀ GIẤC NGỦ QUA CUỐN SÁCH “SAO CHÚNG TA LẠI NGỦ”', 'Nguyễn Như Nam Anh', '2021-09-17 00:06:00', 'review sách', 'Đây sẽ là bài viết “review” cuối cùng cho cuốn sách “SAO CHÚNG TA LẠI NGỦ” của Matthew Walker mà mình đã đọc vào tháng 5. Ở phần này, mình muốn chia sẻ về mối liên hệ giữa giấc ngủ và hiệu quả học tập, cũng như là đưa ra lời khuyên về việc làm […]', 'dscf6369-copy.jpg', 'Đây sẽ là bài viết “review” cuối cùng cho cuốn sách “SAO CHÚNG TA LẠI NGỦ” của Matthew Walker mà mình đã đọc vào tháng 5. Ở phần này, mình muốn chia sẻ về mối liên hệ giữa giấc ngủ và hiệu quả học tập, cũng như là đưa ra lời khuyên về việc làm ...', 8, NULL, '2021-10-16 10:07:43', '2021-10-16 10:07:43', NULL, '/storage/News1/G80Kbwvd8SuWO2n7EYmP.dscf6369-copy.jpg'),
(19, '3 CUỐN SÁCH VỀ CHỦ NGHĨA TỐI GIẢN MÀ BẠN NÊN ĐỌC', 'Nguyễn Như Nam Anh', '2021-03-19 00:08:00', 'SÁCH NÊN ĐỌC', 'Tháng 3 luôn là tháng thích hợp để có thể cho ra những bài viết với tiêu đề “top 3”, “3 điều”, “3 thứ”… Năm ngoái mình viết khá nhiều bài với con số 3 này, và năm nay cũng sẽ như vậy. Khởi đầu sẽ là một bài viết về sách. Đúng dịp tròn […]', 'dscf6989.jpg', 'Tháng 3 luôn là tháng thích hợp để có thể cho ra những bài viết với tiêu đề “top 3”, “3 điều”, “3 thứ”… Năm ngoái mình viết khá nhiều bài với con số 3 này, và năm nay cũng sẽ như vậy. Khởi đầu sẽ là một bài viết về sách. Đúng dịp tròn ...', 9, NULL, '2021-10-16 10:09:41', '2021-10-16 10:09:41', NULL, '/storage/News1/ybMgj9dRZHLths5mxNO5.dscf6989.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Group 1', 'thuongx1bg@gmail.com', NULL, '$2y$10$8Jw.YmuABstxiyxy1t7tGOaclUDLx0DiwwNvGJjhhMNlnrBd0pgdG', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `adverts`
--
ALTER TABLE `adverts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietthehangs`
--
ALTER TABLE `chitietthehangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietthehangs_ctth_thehangid_foreign` (`CTTH_TheHangId`),
  ADD KEY `chitietthehangs_ctth_sachid_foreign` (`CTTH_SachId`);

--
-- Chỉ mục cho bảng `danhmucsaches`
--
ALTER TABLE `danhmucsaches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhangs`
--
ALTER TABLE `khachhangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhomtins`
--
ALTER TABLE `nhomtins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nxbs`
--
ALTER TABLE `nxbs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `saches`
--
ALTER TABLE `saches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saches_s_danhmucid_foreign` (`S_DanhmucId`),
  ADD KEY `saches_s_nxbid_foreign` (`S_NXBId`),
  ADD KEY `saches_s_tacgiaid_foreign` (`S_TacGiaId`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tacgias`
--
ALTER TABLE `tacgias`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thehangs`
--
ALTER TABLE `thehangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thehangs_th_khachhangid_foreign` (`TH_KhachHangId`);

--
-- Chỉ mục cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintucs_tt_nhomtin_foreign` (`TT_NhomTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `adverts`
--
ALTER TABLE `adverts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chitietthehangs`
--
ALTER TABLE `chitietthehangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmucsaches`
--
ALTER TABLE `danhmucsaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `khachhangs`
--
ALTER TABLE `khachhangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `nhomtins`
--
ALTER TABLE `nhomtins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nxbs`
--
ALTER TABLE `nxbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `saches`
--
ALTER TABLE `saches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tacgias`
--
ALTER TABLE `tacgias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thehangs`
--
ALTER TABLE `thehangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietthehangs`
--
ALTER TABLE `chitietthehangs`
  ADD CONSTRAINT `chitietthehangs_ctth_sachid_foreign` FOREIGN KEY (`CTTH_SachId`) REFERENCES `saches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietthehangs_ctth_thehangid_foreign` FOREIGN KEY (`CTTH_TheHangId`) REFERENCES `thehangs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `saches`
--
ALTER TABLE `saches`
  ADD CONSTRAINT `saches_s_danhmucid_foreign` FOREIGN KEY (`S_DanhmucId`) REFERENCES `danhmucsaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saches_s_nxbid_foreign` FOREIGN KEY (`S_NXBId`) REFERENCES `nxbs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saches_s_tacgiaid_foreign` FOREIGN KEY (`S_TacGiaId`) REFERENCES `tacgias` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thehangs`
--
ALTER TABLE `thehangs`
  ADD CONSTRAINT `thehangs_th_khachhangid_foreign` FOREIGN KEY (`TH_KhachHangId`) REFERENCES `khachhangs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD CONSTRAINT `tintucs_tt_nhomtin_foreign` FOREIGN KEY (`TT_NhomTin`) REFERENCES `nhomtins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
