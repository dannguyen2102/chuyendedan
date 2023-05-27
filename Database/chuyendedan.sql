-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2023 lúc 12:27 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chuyendedan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(10) NOT NULL,
  `bill_day` date NOT NULL,
  `bill_time` time NOT NULL,
  `bill_total` int(255) NOT NULL COMMENT 'tổng tiền',
  `payment` varchar(255) NOT NULL COMMENT 'phương thức thanh toán',
  `client_id` int(10) NOT NULL,
  `oder_id` int(10) NOT NULL,
  `billdetail_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `billdetail_id` int(10) NOT NULL,
  `bd_quantity` int(255) NOT NULL COMMENT 'số lượng',
  `bill_id` int(10) NOT NULL,
  `oder_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clients`
--

CREATE TABLE `clients` (
  `client_id` int(10) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_ address` varchar(255) NOT NULL,
  `client_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `gender`, `client_phone`, `client_ address`, `client_email`) VALUES
(1, 'Nguyễn Hồng Đan', 'Nam', '0245623451', 'Thành phố Nha Trang', 'dannguyen123@gmail.com'),
(2, 'Võ Anh Tuấn', 'Nam', '09876543123', 'Ninh Hòa', 'anhtuan456@gamil.com'),
(3, 'Phan Kim Loan', 'Nữ', '0946583367', 'Diên Khánh', 'loanphan000@gmail.com'),
(4, 'Bùi Xuân Hạnh', 'Nữ', '0355791323', 'Diên Lạc', 'hanhbui789@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food`
--

CREATE TABLE `food` (
  `food_id` int(10) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_money` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `food_money`, `image`, `type_id`) VALUES
(1, 'Lẩu Cay Tứ Xuyên', 300000, 'https://cdn.pixabay.com/photo/2018/12/14/02/42/chengdu-3874137_1280.jpg', 1),
(2, 'Lẩu Nấm Cải', 300000, 'https://cdn.pixabay.com/photo/2016/03/14/07/04/wh-cs-division-menu-3-1255014_1280.jpg', 1),
(3, 'Lẩu Hải Sản Bào Ngư', 400000, 'https://cdn.pixabay.com/photo/2016/03/14/07/05/menu-5-wh-cs-division-1255020_1280.jpg', 1),
(4, 'Thịt Bò Cuộn', 150000, 'https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/thanhmai/nhung-phan-thit-bo-ngon-nhat-phu-hop-an-lau/Nhung-phan-thit-bo-ngon-nhat-phu-hop-voi-an-lau-2.jpg', 2),
(5, 'Thịt Bò Lát', 170000, 'https://www.sieuthithitbo.net/uploads/files/2019/07/02/bap-hoa-my-thai-lat.jpg', 2),
(6, 'Thịt Đùi Bò', 100000, 'https://nguonthucphamsi.com/wp-content/uploads/2019/10/z2397271523291_a9db2544b533b59b2db160ae604c212e.jpg', 2),
(7, 'Thịt Bò Thái Lát', 100000, 'https://abby.vn/wp-content/uploads/2022/02/B8972-1642857792568.jpeg', 2),
(8, 'Bò Cuộn Kim Châm', 100000, 'https://khamphamonngon.com/wp-content/uploads/2016/06/17-cach-lam-bo-cuon-nam-kim-cham.jpg', 2),
(9, 'Tôm Càng', 100000, 'https://znews-photo.zingcdn.me/w660/Uploaded/wyhktpu/2014_10_15/image001_1.jpg', 3),
(10, 'Tôm Hùm', 170000, 'https://phanphoiruounhapkhau.com/wp-content/uploads/2021/07/che-bien-mon-tom-hum-hap-ruou-vang-don-gian-nhung-cuc-ngon.jpg', 3),
(11, 'Mực', 120000, 'https://menu24h.vn/static/uploads/uploads/2015/07/cach-trang-tri-lau-muc-menu24h-vn.jpg', 3),
(12, 'Mực Nguyên Con', 120000, 'https://cdn.tgdd.vn/Files/2019/03/29/1157492/an-muc-rat-nhieu-nhung-ban-biet-muc-co-bao-nhieu-loai-khong-2_700x466.jpg', 3),
(13, 'Cá Thái Lát', 110000, 'https://lh3.googleusercontent.com/dLOGzapfnIF9uF4NFRtATp338kPwu9Hz0XVXUV5vkb931-sQlfurqRhdCoXTh7mQAq5v9mnWT7Uh5XV6U4BQLEhoTD_U=w622', 3),
(14, 'Cá Lăng', 150000, 'https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-5-1519643699-614-width650height488.jpg', 3),
(15, 'Cá Viên Chiên', 50000, 'https://cdn.tgdd.vn/2021/12/CookDish/cach-bao-quan-dau-hu-chien-tau-hu-chien-trong-tu-lanh-dung-avt-1200x676-1.jpg', 4),
(16, 'Bò Viên Chiên', 50000, 'https://dochienxienque.com/wp-content/uploads/2021/02/Bo-Vien-Gan.jpg', 4),
(17, 'Xúc Xích Hồ Lô', 50000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcUGY1GS8zEKk0LAIuXTBUP4JAmsM8M7j8IA&usqp=CAU', 4),
(18, 'Cá Chiên Mắm', 80000, 'https://cdn.pixabay.com/photo/2017/12/04/15/49/salmon-2997240_1280.jpg', 5),
(19, 'Râu Mực ', 80000, 'https://cdn.pixabay.com/photo/2017/09/10/18/34/fish-2736523_1280.jpg', 5),
(20, 'Nấm Hương', 50000, 'https://mangtayxanh.net/wp-content/uploads/2021/07/nam-huong.jpg', 6),
(21, 'Nấm Kim Châm', 50000, 'https://mangtayxanh.net/wp-content/uploads/2021/07/nam-kim-cham-01-1722.jpg', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_13_053508_laratrust_setup_tables', 2),
(6, '2023_05_19_164327_staffs', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `oder_id` int(10) NOT NULL,
  `oder_status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `oderfood_id` int(10) NOT NULL,
  `food_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `oder`
--

INSERT INTO `oder` (`oder_id`, `oder_status`, `image`, `oderfood_id`, `food_id`) VALUES
(1, 0, 'https://cdn.dribbble.com/users/1202152/screenshots/18182734/media/9debefec3b06aa11a83012a121557f15.gif', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_food`
--

CREATE TABLE `oder_food` (
  `oderfood_id` int(10) NOT NULL,
  `oderfood_day` date NOT NULL,
  `oderfood_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `oder_food`
--

INSERT INTO `oder_food` (`oderfood_id`, `oderfood_day`, `oderfood_time`) VALUES
(1, '2023-05-15', '23:45:26'),
(2, '2023-05-10', '15:03:45'),
(3, '2023-05-03', '15:12:31'),
(4, '2023-05-03', '15:12:31'),
(5, '2023-05-19', '15:12:31'),
(6, '2023-05-10', '15:12:31'),
(7, '2023-05-15', '15:12:31'),
(8, '2023-05-05', '15:12:31'),
(9, '2023-05-17', '15:12:31'),
(10, '2023-05-02', '15:12:31'),
(11, '2023-05-23', '15:12:31'),
(12, '2023-05-06', '15:12:31'),
(13, '2023-05-08', '15:12:31'),
(14, '2023-05-09', '15:12:31'),
(15, '2023-05-25', '15:12:31'),
(16, '2023-05-20', '15:12:31'),
(17, '2023-05-05', '15:12:31'),
(18, '2023-05-13', '15:12:31'),
(19, '2023-05-22', '15:12:31'),
(20, '2023-05-10', '15:12:31'),
(21, '2023-05-19', '15:21:46'),
(22, '2023-05-17', '15:21:46'),
(23, '2023-05-18', '15:21:46'),
(24, '2023-05-30', '15:21:46'),
(25, '2023-05-04', '15:21:46'),
(26, '2023-05-13', '15:21:46'),
(27, '2023-05-24', '15:21:46'),
(28, '2023-05-13', '15:21:46'),
(29, '2023-05-06', '15:21:46'),
(30, '2023-05-21', '15:21:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(2, 'users-read', 'Read Users', 'Read Users', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(3, 'users-update', 'Update Users', 'Update Users', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(11, 'module_1_name-create', 'Create Module_1_name', 'Create Module_1_name', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(12, 'module_1_name-read', 'Read Module_1_name', 'Read Module_1_name', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(13, 'module_1_name-update', 'Update Module_1_name', 'Update Module_1_name', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(14, 'module_1_name-delete', 'Delete Module_1_name', 'Delete Module_1_name', '2023-05-12 22:39:10', '2023-05-12 22:39:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(2, 'administrator', 'Administrator', 'Administrator', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(3, 'user', 'User', 'User', '2023-05-12 22:39:10', '2023-05-12 22:39:10'),
(4, 'role_name', 'Role Name', 'Role Name', '2023-05-12 22:39:10', '2023-05-12 22:39:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `serving_table`
--

CREATE TABLE `serving_table` (
  `st_id` int(10) NOT NULL,
  `st_time` time NOT NULL,
  `staff_id` bigint(20) NOT NULL,
  `table_id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `oderfood_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staffs`
--

CREATE TABLE `staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `staff_day` date NOT NULL,
  `staff_phone` varchar(255) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `staffs`
--

INSERT INTO `staffs` (`id`, `staff_name`, `gender`, `staff_day`, `staff_phone`, `staff_email`, `created_at`, `updated_at`, `password`) VALUES
(1, 'Hieu Ngu', 'Be De', '2023-05-19', '113', 'hieungu123@gmail.com', '2023-05-19 16:44:10', '2023-05-19 16:44:10', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tables`
--

CREATE TABLE `tables` (
  `table_id` int(10) NOT NULL,
  `chair_number` int(5) NOT NULL,
  `note` varchar(255) NOT NULL,
  `table_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tables`
--

INSERT INTO `tables` (`table_id`, `chair_number`, `note`, `table_status`) VALUES
(1, 4, '0', 0),
(2, 6, '0', 0),
(3, 4, '0', 0),
(4, 4, '0', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

CREATE TABLE `type` (
  `type_id` int(10) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `food_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `food_id`) VALUES
(1, 'Lẩu', 1),
(2, 'Lẩu', 2),
(3, 'Lẩu', 3),
(4, 'Thịt', 4),
(5, 'Thịt', 5),
(6, 'Thịt', 6),
(7, 'Thịt', 7),
(8, 'Thịt', 8),
(9, 'Hải Sản', 9),
(10, 'Hải Sản', 10),
(11, 'Hải Sản', 11),
(12, 'Hải Sản', 12),
(13, 'Hải Sản', 13),
(14, 'Hải Sản', 14),
(15, 'Các Loại Viên', 15),
(16, 'Các Loại Viên', 16),
(17, 'Các Loại Viên', 17),
(18, 'Món Mặn', 18),
(19, 'Món Mặn', 19),
(20, 'Gọi Thêm', 20),
(21, 'Gọi Thêm', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dan Hong', 'dan123@gmail.com', NULL, 'dannguyen123', NULL, '2023-05-12 22:32:35', '2023-05-12 22:32:35'),
(2, 'Dan Nguyen', 'dan1234@gmail.com', NULL, '$2y$10$LNgSCChNo3BofAGfo.Kch.9zZ/Zih/XU/coa6AiG3Afikdjrrxhau', NULL, '2023-05-26 23:36:40', '2023-05-26 23:36:40'),
(3, 'dan', 'dannguyen9991@gmail.com', NULL, '$2y$10$1eRP2RQH/1T8.aGWp93d8ekr6FCp7tYyxWIq9J5dQP9GIJ.zupt1y', NULL, '2023-05-27 00:17:28', '2023-05-27 00:17:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_table`
--

CREATE TABLE `user_table` (
  `id` int(10) NOT NULL,
  `user_name` int(100) NOT NULL,
  `user_password` int(100) NOT NULL,
  `oderfood_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_table`
--

INSERT INTO `user_table` (`id`, `user_name`, `user_password`, `oderfood_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 17, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20),
(21, 21, 21, 21),
(22, 22, 22, 22),
(23, 23, 23, 23),
(24, 24, 24, 24),
(25, 25, 25, 25),
(26, 26, 26, 26),
(27, 27, 27, 27),
(28, 28, 28, 28),
(29, 29, 29, 29),
(30, 30, 30, 30);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `oder_id` (`oder_id`,`billdetail_id`),
  ADD KEY `billdetail_id` (`billdetail_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`billdetail_id`);

--
-- Chỉ mục cho bảng `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`oder_id`),
  ADD KEY `oderfood_id` (`oderfood_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Chỉ mục cho bảng `oder_food`
--
ALTER TABLE `oder_food`
  ADD PRIMARY KEY (`oderfood_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `serving_table`
--
ALTER TABLE `serving_table`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `table_id` (`table_id`,`staff_id`,`client_id`,`oderfood_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `oderfood_id` (`oderfood_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Chỉ mục cho bảng `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Chỉ mục cho bảng `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oderfood_id` (`oderfood_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `billdetail_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oder`
--
ALTER TABLE `oder`
  MODIFY `oder_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oder_food`
--
ALTER TABLE `oder_food`
  MODIFY `oderfood_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `serving_table`
--
ALTER TABLE `serving_table`
  MODIFY `st_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`oder_id`) REFERENCES `oder` (`oder_id`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`billdetail_id`) REFERENCES `bill_detail` (`billdetail_id`),
  ADD CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);

--
-- Các ràng buộc cho bảng `oder`
--
ALTER TABLE `oder`
  ADD CONSTRAINT `oder_ibfk_1` FOREIGN KEY (`oderfood_id`) REFERENCES `oder_food` (`oderfood_id`),
  ADD CONSTRAINT `oder_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`);

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `serving_table`
--
ALTER TABLE `serving_table`
  ADD CONSTRAINT `serving_table_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `tables` (`table_id`),
  ADD CONSTRAINT `serving_table_ibfk_3` FOREIGN KEY (`oderfood_id`) REFERENCES `oder_food` (`oderfood_id`),
  ADD CONSTRAINT `serving_table_ibfk_4` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);

--
-- Các ràng buộc cho bảng `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`);

--
-- Các ràng buộc cho bảng `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`oderfood_id`) REFERENCES `oder_food` (`oderfood_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
