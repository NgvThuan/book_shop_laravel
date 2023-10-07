-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2023 lúc 07:30 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_book_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$F8GjsxgIKk16M9yGfHv/E.YBzqRiXFlEJQV5CMcFvGMQ65Q0PDED.', '0988999999', NULL, NULL, NULL, 1, 1, '2023-09-19__admin.jpg', NULL, '2023-10-02 05:25:07'),
(3, 'Nhân viên', 'nhanvien@gmail.com', '$2y$10$EW01ot/E2Z8yiFGav8hOsOzISI.UQktwtiLuuXBeHqdBqgSRoNXI2', '0359020898', NULL, NULL, NULL, 2, 1, NULL, '2023-09-18 15:30:22', '2023-10-02 05:25:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) NOT NULL,
  `a_slug` varchar(191) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(191) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(2, 'Không Diệt Không Sinh Đừng Sợ Hãi - Bìa Cứng - Phiên Bản Đặc Biệt', 'khong-diet-khong-sinh-dung-so-hai-bia-cung-phien-ban-dac-biet', 1, 1, 1, 0, 'Chất liệu bìa:\r\n\r\n+ Bìa cứng, giấy mỹ thuật\r\n\r\n+ Hiệu ứng: Ép kim, cán màn\r\n\r\nChất liệu ruột:\r\n\r\n+ Giấy Bãi bằng vàng, định lượng 80 gsm\r\n\r\n+ In 2 màu', '2023-09-24__z4612210309709-54201737eeb4b25ef016430b433676ac-1-2.jpg', '<p>Trong suốt cuộc đời, đức Bụt cũng bị nhiều nh&agrave; thần học v&agrave; c&aacute;c học giả nhiều lần chất vấn về hai triết thuyết đối nghịch nhau: bất diệt hay hư kh&ocirc;ng. Khi được hỏi l&agrave; c&oacute; đời sống vĩnh cửu kh&ocirc;ng th&igrave; Bụt trả lời: &ldquo;Kh&ocirc;ng c&oacute; c&aacute;i Ng&atilde; bất biến.&rdquo; Khi trả lời về chuyện chết l&agrave; kh&ocirc;ng c&ograve;n g&igrave; nữa chăng. Bụt n&oacute;i kh&ocirc;ng c&oacute; g&igrave; trở th&agrave;nh hư v&ocirc; cả. Ng&agrave;i b&aacute;c bỏ cả hai &yacute; tưởng tr&ecirc;n.</p>\r\n\r\n<p>&ocirc;i c&oacute; một người bạn th&acirc;n l&agrave; một nh&agrave; sinh vật học chuy&ecirc;n về c&aacute;c lo&agrave;i sống dưới biển. Giống như nhiều người, anh ta tin rằng chết l&agrave; chết vĩnh viễn. Niềm tin n&agrave;y của anh kh&ocirc;ng tới từ thiếu đức tin hay v&igrave; tuyệt vọng, m&agrave; v&igrave; anh tin v&agrave;o khoa học. Anh c&oacute; l&ograve;ng tin v&agrave;o thế giới thi&ecirc;n nhi&ecirc;n, v&agrave;o vẻ đẹp của vũ trụ chưa được khai ph&aacute; quanh anh, v&agrave;o khả năng hiểu biết của lo&agrave;i người về vũ trụ đ&oacute;.</p>\r\n\r\n<p>Thiền sư Th&iacute;ch Nhất Hạnh cũng c&oacute; l&ograve;ng tin vững chắc v&agrave;o khả năng c&oacute; thể đạt tới hiểu biết của con người. Nhưng mục ti&ecirc;u của Thầy cao cả hơn sự thu g&oacute;p c&aacute;c kiến thức khoa học. Đ&oacute; l&agrave; sự giải tho&aacute;t v&agrave; tr&iacute; tuệ b&aacute;t nh&atilde;.</p>\r\n\r\n<p>Viết những trang s&aacute;ch n&agrave;y bằng kinh nghiệm của ch&iacute;nh m&igrave;nh, Thầy Th&iacute;ch Nhất Hạnh đưa ra một thay thế đ&aacute;ng ngạc nhi&ecirc;n cho hai triết l&yacute; tr&aacute;i ngược nhau về vĩnh cửu v&agrave; hư kh&ocirc;ng. Thầy n&oacute;i: &ldquo;Tự mu&ocirc;n đời t&ocirc;i vẫn tự do. Tử sinh chỉ l&agrave; cửa ng&otilde; ra v&agrave;o, tử sinh l&agrave; tr&ograve; chơi c&uacute;t bắt. T&ocirc;i chưa bao giờ từng sinh cũng chưa bao giờ từng diệt&rdquo; v&agrave; &ldquo;Nỗi khổ lớn nhất của ch&uacute;ng ta l&agrave; &yacute; niệm về đến-đi, lui-tới.&rdquo;</p>\r\n\r\n<p>Lặp đi, lặp lại ho&agrave;i, Thầy khuy&ecirc;n ch&uacute;ng ta thực tập nh&igrave;n s&acirc;u để hiểu được v&agrave; tự m&igrave;nh nếm được sự tự do của con đường ch&iacute;nh giữa, kh&ocirc;ng bị kẹt v&agrave;o cả hai &yacute; niệm của vĩnh cửu v&agrave; hư kh&ocirc;ng. L&agrave; một thi sĩ n&ecirc;n khi giải th&iacute;ch về c&aacute;c sự tr&aacute;i ngược trong đời sống, Thầy đ&atilde; nhẹ nh&agrave;ng v&eacute;n bức m&agrave;n v&ocirc; minh ảo tưởng d&ugrave;m ch&uacute;ng ta, cho ph&eacute;p ch&uacute;ng ta (c&oacute; lẽ lần đầu ti&ecirc;n trong đời) được biết rằng sự kinh hoảng về c&aacute;i chết chỉ c&oacute; nguy&ecirc;n nh&acirc;n l&agrave; c&aacute;c &yacute; niệm v&agrave; hiểu biết sai lầm của ch&iacute;nh m&igrave;nh m&agrave; th&ocirc;i.</p>\r\n\r\n<p>Tri kiến về sống, chết của Thầy v&ocirc; c&ugrave;ng vi tế v&agrave; đẹp đẽ. Cũng như những điều vi tế, đẹp đẽ kh&aacute;c, c&aacute;ch thưởng thức hay nhất l&agrave; thiền qu&aacute;n trong thinh lặng. L&ograve;ng nh&acirc;n hậu v&agrave; từ bi ph&aacute;t xuất từ suối nguồn th&acirc;m tuệ của Th&iacute;ch Nhất Hạnh l&agrave; một loại thuốc chữa l&agrave;nh những vết thương trong tr&aacute;i tim ch&uacute;ng ta.</p>', '2023-09-09 07:43:14', 0, 1, '2023-09-23 18:15:06'),
(4, 'Trời Vẫn Còn Xanh Em Vẫn Còn Anh', 'troi-van-con-xanh-em-van-con-anh', 1, 1, 1, 0, 'Tác giả	Anh Khang\r\nNXB	NXB Văn Học\r\nNăm XB	04-2017\r\nTrọng lượng (gr)	250\r\nKích Thước Bao Bì	12 x 20\r\nSố trang	187\r\nHình thức	Bìa Mềm', '2023-09-24__8932000125518-1-thanh-ly.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Trời Vẫn C&ograve;n Xanh Em Vẫn C&ograve;n Anh</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Trong Trời Vẫn C&ograve;n Xanh, Em Vẫn C&ograve;n Anh &ndash; tập truyện ngắn thứ hai của Anh Khang, được v&iacute; như phần tiếp theo của tập truyện Đường hai ngả, người thương th&agrave;nh lạ - Anh Khang vẫn viết về t&igrave;nh y&ecirc;u với những c&acirc;u chữ dịu d&agrave;ng, suy tư. Tuy nhi&ecirc;n, Anh Khang của 2017 c&oacute; lẽ đ&atilde; trưởng th&agrave;nh hơn trong ng&ograve;i b&uacute;t lẫn t&acirc;m t&igrave;nh khi anh chọn đối diện với nỗi buồn bằng th&aacute;i độ b&igrave;nh thản, lạc quan v&agrave; hướng người đọc tin tưởng v&agrave;o ch&iacute;nh sức mạnh &yacute; ch&iacute; của bản th&acirc;n. Những nh&acirc;n vật của anh điềm đạm hơn khi nghĩ về mất m&aacute;t qu&aacute; khứ v&agrave; họ cố gắng để sống t&iacute;ch cực hơn ở hiện tại, những c&acirc;u chuyện d&ugrave; kết th&uacute;c vui hay buồn đều ươm mầm trong đ&oacute; một tia s&aacute;ng hi vọng.<br />\r\n<br />\r\nTinh thần n&agrave;y to&aacute;t ra ngay từ ti&ecirc;u đề của t&aacute;c phẩm với lối văn biền ngẫu v&agrave; điệp từ &ldquo;vẫn c&ograve;n&rdquo; được nhấn mạnh hai lần như muốn khẳng định rằng những điều tốt đẹp &ldquo;vẫn c&ograve;n&rdquo; tồn tại v&agrave; sẽ lu&ocirc;n c&ograve;n tồn tại. Nếu v&iacute; những t&aacute;c phẩm trước đ&acirc;y của Anh Khang như những cơn mưa trĩu nặng nỗi niềm th&igrave; Trời Vẫn C&ograve;n Xanh, Em Vẫn C&ograve;n Anh ch&iacute;nh l&agrave; bầu trời trong xanh hơn, an l&agrave;nh hơn sau những cơn mưa ấy. Bởi như ch&iacute;nh t&aacute;c giả tự nhận x&eacute;t về bản th&acirc;n: &ldquo;Trong mắt người ngo&agrave;i, t&ocirc;i l&agrave; một nh&agrave; văn quẩn quanh b&ecirc;n s&aacute;ch vở. Trong mắt bạn b&egrave;, t&ocirc;i l&agrave; một kẻ khờ lắm điều mộng mơ. Trong mắt bố mẹ, t&ocirc;i l&agrave; một đứa trẻ kh&ocirc;ng bao giờ chịu lớn. Trong mắt người t&ocirc;i thương, t&ocirc;i l&agrave; một tiếng thở d&agrave;i cũ kỹ. Trong mắt ch&iacute;nh m&igrave;nh, t&ocirc;i chỉ l&agrave; một bầu trời xanh, lu&ocirc;n mong m&igrave;nh trở lại m&agrave;u trong vắt v&agrave; thanh t&acirc;n - dẫu sau bao lần mưa giăng m&acirc;y x&aacute;m&rdquo;. V&agrave; &ldquo;bầu trời xanh&rdquo; mang t&ecirc;n Anh Khang n&agrave;y đang từng bước soi chiếu thứ &aacute;nh s&aacute;ng của niềm tin, lan toả những ước nguyện trong l&agrave;nh v&agrave; gieo v&agrave;o l&ograve;ng người đọc những dư vị cảm x&uacute;c dễ chịu - b&ecirc;n cạnh nỗi buồn.<br />\r\n<br />\r\nNếu nỗi buồn trước đ&acirc;y trong trang s&aacute;ch của anh Khang l&agrave; một thứ cảm x&uacute;c rất con người, rất nh&acirc;n văn m&agrave; bất kỳ một người trẻ n&agrave;o cũng phải trải qua tr&ecirc;n h&agrave;nh tr&igrave;nh trưởng th&agrave;nh, th&igrave; nỗi buồn trong Trời Vẫn C&ograve;n Xanh, Em Vẫn C&ograve;n Anh lại ch&iacute;nh l&agrave; sự c&acirc;n bằng an nhi&ecirc;n của một người đ&atilde; bước qua thăng trầm v&agrave; đ&oacute;n nhận nỗi buồn như một cố nh&acirc;n tri kỷ. Anh bảo: &ldquo;T&ocirc;i xem nỗi buồn ng&agrave;y cũ như một h&agrave;nh trang cần thiết để đến gặp niềm vui trong tương lai. Bởi phải l&agrave;m l&agrave;nh với qu&aacute; khứ, th&igrave; ch&uacute;ng ta mới c&oacute; thể nhẹ nh&otilde;m t&igrave;m thấy hạnh ph&uacute;c ở hiện tại&rdquo;.<br />\r\n<br />\r\nB&ecirc;n cạnh những c&acirc;u văn xu&ocirc;i trầm bổng như thơ - thế mạnh đặc trưng trong văn của Anh Khang - th&igrave; Trời Vẫn C&ograve;n Xanh, Em Vẫn C&ograve;n Anh cho thấy r&otilde; người viết trẻ n&agrave;y rất c&oacute; &yacute; thức trong việc x&acirc;y dựng cấu tr&uacute;c h&igrave;nh thức truyện. Anh Khang kh&ocirc;ng vội v&atilde; để người đọc tiếp x&uacute;c ngay với nội dung ch&iacute;nh trong c&aacute;c truyện ngắn của anh. Như một người bạn dẫn đường ch&acirc;n th&agrave;nh, anh chậm r&atilde;i hướng dẫn người đọc những bước chuẩn bị cần thiết trước khi th&acirc;m nhập v&agrave;o t&acirc;m t&igrave;nh s&acirc;u k&iacute;n của c&aacute;c nh&acirc;n vật. Mười truyện ngắn trong tập truyện n&agrave;y đều bắt đầu bằng một đoạn tr&iacute;ch dẫn ngắn thể hiện quan điểm nhất qu&aacute;n của c&acirc;u chuyện, n&oacute; như một lời tự sự của ch&iacute;nh t&aacute;c giả để khởi nguồn suy nghĩ cho nh&acirc;n vật chia sẻ về cuộc sống, về t&igrave;nh y&ecirc;u. Sau khoảnh khắc lắng đọng s&uacute;c t&iacute;ch ấy l&agrave; phần &ldquo;Dẫn đề&rdquo; với những chia sẻ quan điểm của Anh Khang về c&acirc;u chuyện, vừa dưới g&oacute;c nh&igrave;n của người ngo&agrave;i cuộc, vừa dưới g&oacute;c nh&igrave;n của người trong cuộc đ&atilde; từng trải. Qua hai bước chuẩn bị tr&ecirc;n, cuối c&ugrave;ng độc giả mới ch&iacute;nh thức bước v&agrave;o c&acirc;u chuyện anh kể. C&oacute; thể tạm chia cấu tr&uacute;c một truyện ngắn của Anh Khang th&agrave;nh ba phần như sau: Lời tựa &ndash; Dẫn đề &ndash; C&acirc;u chuyện. Ba phần n&agrave;y như ba g&oacute;c kh&aacute;c nhau của một &ldquo;kim tự th&aacute;p cảm x&uacute;c&rdquo;, ch&uacute;ng va đập v&agrave;o nhau tạo ra vọng &acirc;m đa thanh cho c&acirc;u chuyện. C&oacute; thể n&oacute;i, Anh Khang l&agrave; nh&agrave; văn trẻ hiếm hoi tr&ecirc;n thị trường s&aacute;ch trẻ hiện nay c&oacute; thể biến h&oacute;a ng&ograve;i b&uacute;t đa dạng với nhiều thể loại kh&aacute;c nhau, chứ kh&ocirc;ng đơn thuần chỉ viết s&aacute;ch tản văn để &ldquo;chiều l&ograve;ng&rdquo; thị hiếu như nhiều c&acirc;y b&uacute;t trẻ đương thời.<br />\r\n<br />\r\nNhững c&acirc;u chuyện trong Trời Vẫn C&ograve;n Xanh, Em Vẫn C&ograve;n Anh diễn ra dưới nhiều nơi chốn m&agrave; Anh Khang đ&atilde; đi qua, thể hiện nhiều cảm thức văn h&oacute;a kh&aacute;c nhau: Trời vẫn c&ograve;n xanh (Hy Lạp), Kinh th&agrave;nh k&yacute; ức (Ph&aacute;p), Rồi sẽ c&oacute; một ai đ&oacute; thương em (H&agrave;n Quốc), Kh&oacute;c dưới ch&acirc;n Nguyệt L&atilde;o (Hong Kong), Đừng nhắc chuyện đ&atilde; từng (Nhật Bản), Đ&ocirc;i l&uacute;c cũng n&ecirc;n hoang đường (&Uacute;c)&hellip; Nhưng những nh&acirc;n vật của Anh Khang d&ugrave; đi xa đến đ&acirc;u cũng lu&ocirc;n giữ trong tim một b&oacute;ng h&igrave;nh, một t&igrave;nh y&ecirc;u. V&igrave; vậy, kh&ocirc;ng gian thay đổi li&ecirc;n tục trong truyện của Anh Khang kh&ocirc;ng phải l&agrave; để nh&acirc;n vật kh&aacute;m ph&aacute; những điều mới mẻ của ngoại cảnh, ngược lại, đi xa dường như l&agrave; c&aacute;ch để họ nh&igrave;n lại bản th&acirc;n m&igrave;nh trong s&acirc;u thẳm, l&agrave; c&aacute;ch để họ gặp gỡ lại một-phần-đ&atilde;-mất-của-m&igrave;nh v&agrave; cũng l&agrave; cơ hội để họ gặp gỡ những con người sẽ-l&agrave;-một-phần-của-m&igrave;nh. Đ&oacute; l&agrave; c&aacute;ch họ vượt qua mất m&aacute;t.<br />\r\n<br />\r\n&ldquo;Sau tất cả, m&agrave;u trời tr&ecirc;n đầu ch&uacute;ng ta vẫn mỗi ng&agrave;y c&ograve;n đ&oacute; thanh t&acirc;n, th&igrave; cũng sẽ lu&ocirc;n c&ograve;n đ&oacute; một người v&igrave; ta m&agrave; ở lại. Bởi đến cuối c&ugrave;ng, cho d&ugrave; bất kỳ điều g&igrave; xảy ra, th&igrave; chỉ cần c&ograve;n nhau l&agrave; sẽ c&ograve;n tất cả, c&oacute; phải kh&ocirc;ng?&rdquo;<br />\r\n<br />\r\nAnh Khang đ&atilde; viết như thế ở phần lời tựa của t&aacute;c phẩm n&agrave;y. V&agrave; dường như, những truyện ngắn anh viết trong Trời Vẫn C&ograve;n Xanh, Em Vẫn C&ograve;n Anh l&agrave; để trả lời cho c&acirc;u hỏi ấy. Đ&aacute;p &aacute;n ấy c&oacute; thể sẽ kh&aacute;c nhau với mỗi người, nhưng c&oacute; lẽ khi đọc xong Trời Vẫn C&ograve;n Xanh, Em Vẫn C&ograve;n Anh v&agrave; gấp lại quyển s&aacute;ch n&agrave;y, v&agrave;o khoảnh khắc ấy, bạn sẽ mỉm cười hạnh ph&uacute;c với c&acirc;u trả lời trong l&ograve;ng m&igrave;nh. Chỉ cần c&ograve;n nhau l&agrave; sẽ c&ograve;n tất cả.</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', '2023-09-23 18:32:24', 1, 1, '2023-09-23 18:34:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) NOT NULL,
  `atb_slug` varchar(191) NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(27, 'NBX Kim Đồng', 'nbx-kim-dong', 8, 10, '2023-09-20 05:00:40', NULL),
(28, 'NXB Trẻ', 'nxb-tre', 8, 10, '2023-09-20 05:00:54', '2023-09-20 05:02:16'),
(29, 'NXB Giáo Dục Việt Nam', 'nxb-giao-duc-viet-nam', 8, 10, '2023-09-20 05:01:14', '2023-09-20 05:02:09'),
(30, 'NXB Nhã Nam', 'nxb-nha-nam', 8, 10, '2023-09-20 05:01:33', '2023-09-20 05:02:02'),
(35, 'Giáo Khoa', 'giao-khoa', 1, 10, '2023-09-20 08:57:16', NULL),
(36, 'Sách Tham Khảo', 'sach-tham-khao', 1, 10, '2023-09-20 08:57:32', NULL),
(37, 'Mẫu Giáo', 'mau-giao', 1, 10, '2023-09-20 08:57:48', NULL),
(38, 'Sách Giáo Viên', 'sach-giao-vien', 1, 10, '2023-09-20 08:58:08', NULL),
(39, 'Đại Học', 'dai-hoc', 1, 10, '2023-09-20 08:58:21', NULL),
(40, 'Tiểu Thuyết', 'tieu-thuyet', 2, 11, '2023-09-20 08:58:47', NULL),
(41, 'Truyện Ngắn', 'truyen-ngan', 2, 11, '2023-09-20 08:58:58', NULL),
(42, 'Du Ký', 'du-ky', 2, 11, '2023-09-20 08:59:07', NULL),
(43, 'Tác Phẩm Kinh Điển', 'tac-pham-kinh-dien', 2, 11, '2023-09-20 08:59:17', NULL),
(44, 'Nhân Vật - Bài Học Kinh Doanh', 'nhan-vat-bai-hoc-kinh-doanh', 3, 12, '2023-09-20 08:59:38', NULL),
(45, 'Quản Trị - Lãnh Đạo', 'quan-tri-lanh-dao', 3, 12, '2023-09-20 08:59:56', NULL),
(46, 'Marketing - Bán Hàng', 'marketing-ban-hang', 3, 12, '2023-09-20 09:00:04', NULL),
(47, 'Phân Tích Kinh Tế', 'phan-tich-kinh-te', 3, 12, '2023-09-20 09:00:17', NULL),
(48, 'Chứng Khoán - Đầu Tư', 'chung-khoan-dau-tu', 3, 12, '2023-09-20 09:00:35', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) NOT NULL,
  `c_slug` varchar(191) NOT NULL,
  `c_avatar` varchar(191) DEFAULT NULL,
  `c_banner` varchar(191) DEFAULT NULL,
  `c_description` varchar(191) DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(10, 'Sách Giáo Khoa', 'sach-giao-khoa', '2023-09-09__sgk-final.jpg', NULL, NULL, 0, 1, 1, '2023-09-09 04:07:56', '2023-09-19 10:47:04'),
(11, 'Sách Văn Học', 'sach-van-hoc', '2023-09-09__de-men-phieu-luu-ky.jpg', NULL, NULL, 0, 0, 1, '2023-09-09 04:10:17', '2023-09-19 10:15:55'),
(12, 'Sách  Kinh Tế', 'sach-kinh-te', '2023-09-09__sach-kt.jpg', NULL, NULL, 0, 0, 1, '2023-09-09 04:11:35', NULL),
(13, 'Sách Tâm Lý-Kỹ Năng Sống', 'sach-tam-ly-ky-nang-song', '2023-09-09__sach-tlkns.jpg', NULL, NULL, 0, 0, 1, '2023-09-09 04:13:00', NULL),
(15, 'Sách Thiếu Nhi', 'sach-thieu-nhi', '2023-09-19__logostn.png', NULL, NULL, 0, 0, 1, '2023-09-19 10:17:54', NULL),
(16, 'Tiểu Sử - Hồi Ký', 'tieu-su-hoi-ky', '2023-09-19__logotshk.jpg', NULL, NULL, 0, 0, 1, '2023-09-19 10:19:21', NULL),
(17, 'Sách Ngoại Ngữ', 'sach-ngoai-ngu', '2023-09-19__logosnn.jpg', NULL, NULL, 0, 0, 1, '2023-09-19 10:20:43', NULL),
(18, 'Giáo Khoa', 'giao-khoa', '2023-09-19__sgk.jpg', NULL, NULL, 10, 0, 1, '2023-09-19 10:40:08', NULL),
(19, 'Sách Tham Khảo', 'sach-tham-khao', NULL, NULL, NULL, 10, 0, 1, '2023-09-19 10:40:46', NULL),
(20, 'Mẫu Giáo', 'mau-giao', NULL, NULL, NULL, 10, 0, 1, '2023-09-19 10:40:53', NULL),
(21, 'Sách Giáo Viên', 'sach-giao-vien', NULL, NULL, NULL, 10, 0, 1, '2023-09-19 10:41:03', NULL),
(22, 'Đại Học', 'dai-hoc', NULL, NULL, NULL, 10, 0, 1, '2023-09-19 10:41:13', NULL),
(23, 'Tiểu Thuyết', 'tieu-thuyet', NULL, NULL, NULL, 11, 0, 1, '2023-09-19 10:44:08', NULL),
(24, 'Truyện Ngắn', 'truyen-ngan', NULL, NULL, NULL, 11, 0, 1, '2023-09-19 10:44:15', NULL),
(25, 'Du Ký', 'du-ky', NULL, NULL, NULL, 11, 0, 1, '2023-09-19 10:44:21', NULL),
(26, 'Tác Phẩm Kinh Điển', 'tac-pham-kinh-dien', NULL, NULL, NULL, 11, 0, 1, '2023-09-19 10:44:31', NULL),
(27, 'Nhân Vật - Bài Học Kinh Doanh', 'nhan-vat-bai-hoc-kinh-doanh', NULL, NULL, NULL, 12, 0, 1, '2023-09-19 10:47:47', NULL),
(28, 'Quản Trị - Lãnh Đạo', 'quan-tri-lanh-dao', NULL, NULL, NULL, 12, 0, 1, '2023-09-19 10:48:02', NULL),
(29, 'Marketing - Bán Hàng', 'marketing-ban-hang', NULL, NULL, NULL, 12, 0, 1, '2023-09-19 10:48:12', NULL),
(30, 'Phân Tích Kinh Tế', 'phan-tich-kinh-te', NULL, NULL, NULL, 12, 0, 1, '2023-09-19 10:48:34', NULL),
(31, 'Chứng Khoán - Đầu Tư', 'chung-khoan-dau-tu', NULL, NULL, NULL, 12, 0, 1, '2023-09-19 10:48:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) DEFAULT NULL,
  `cmt_email` varchar(191) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'sách hay', 0, 8, 0, 8, 0, 0, '2023-09-09 04:39:19', NULL),
(4, NULL, NULL, 'Sách rẻ hơn mấy chỗ khác', 0, 12, 0, 12, 0, 0, '2023-09-20 15:01:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(191) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(1, 'a', '2185434534', 'a@gmail.com', 's', '2023-09-10 07:10:37', NULL),
(2, 'Tư vấn sách', '0123456789', 'a@gmail.com', 'Tôi muốn được tư vấn sách', '2023-09-26 03:39:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL DEFAULT 0,
  `server` varchar(100) DEFAULT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) DEFAULT NULL,
  `e_banner` varchar(191) DEFAULT NULL,
  `e_link` varchar(191) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_5` tinyint(4) DEFAULT 0,
  `e_position_6` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_position_5`, `e_position_6`, `created_at`, `updated_at`) VALUES
(1, 'event1', '2023-09-24__dat-rung-phuong-nam-532d0fa40aab482f85159ed6a3b654ea-1edd78cb1d744015ac3fe61c1e9300e1-master.webp', '/', 1, 0, 0, 0, 0, 0, '2023-09-23 18:10:11', '2023-09-23 18:10:11'),
(2, 'event2', '2023-09-24__banner-mua-he-khong-ten-590x200.jpg', '/', 0, 1, 0, 0, 0, 0, '2023-09-23 18:07:02', '2023-09-23 18:07:02'),
(3, 'event3', '2023-09-24__conan-tieu-thuyet-con-ac-mong-den-toi-46c9a083824442f6b85d9e1ebaf563f9-master.jpg', '/', 0, 0, 1, 0, 0, 0, '2023-09-23 18:09:14', '2023-09-23 18:09:14'),
(4, 'event4', '2023-09-24__ms-banner-img5.webp', '/', 0, 0, 0, 1, 0, 0, '2023-09-23 18:08:26', '2023-09-23 18:08:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` bigint(20) DEFAULT 0,
  `id_import` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `import_histories`
--

INSERT INTO `import_histories` (`id`, `thanhtoan`, `id_import`, `created_at`, `updated_at`) VALUES
(1, 12500000, 1, '2020-07-17 14:49:47', '2020-07-17 14:49:47'),
(2, 5000000, 2, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(3, 0, 3, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(4, 5250000, 4, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(5, NULL, 3, '2020-07-17 19:26:29', '2020-07-17 19:26:29'),
(6, 0, 5, '2020-07-17 19:27:22', '2020-07-17 19:27:22'),
(7, 1500000, 5, '2020-07-17 19:27:40', '2020-07-17 19:27:40'),
(8, 0, 6, '2020-07-17 19:28:37', '2020-07-17 19:28:37'),
(9, 4000000, 6, '2020-07-17 19:28:48', '2020-07-17 19:28:48'),
(10, 1000000, 7, '2020-07-18 01:13:51', '2020-07-18 01:13:51'),
(11, 500000, 7, '2020-07-18 01:14:22', '2020-07-18 01:14:22'),
(12, 900000, 8, '2020-07-20 15:31:12', '2020-07-20 15:31:12'),
(13, 0, 9, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(14, 0, 10, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(15, 0, 11, '2023-08-25 16:08:43', '2023-08-25 16:08:43'),
(16, 0, 12, '2023-08-25 16:08:43', '2023-08-25 16:08:43'),
(17, 0, 13, '2023-09-09 04:34:16', '2023-09-09 04:34:16'),
(18, 0, 14, '2023-09-09 04:34:46', '2023-09-09 04:34:46'),
(19, 200000, 14, '2023-09-09 04:35:17', '2023-09-09 04:35:17'),
(20, 150000, 15, '2023-09-20 09:40:18', '2023-09-20 09:40:18'),
(21, 0, 16, '2023-09-20 09:41:19', '2023-09-20 09:41:19'),
(22, 1000000, 17, '2023-09-20 09:42:36', '2023-09-20 09:42:36'),
(23, 0, 18, '2023-09-20 09:42:36', '2023-09-20 09:42:36'),
(24, 0, 19, '2023-09-20 09:42:36', '2023-09-20 09:42:36'),
(25, 0, 20, '2023-09-20 09:43:48', '2023-09-20 09:43:48'),
(26, 0, 21, '2023-09-20 09:43:48', '2023-09-20 09:43:48'),
(27, 0, 22, '2023-09-20 09:43:48', '2023-09-20 09:43:48'),
(28, 0, 23, '2023-09-20 09:45:03', '2023-09-20 09:45:03'),
(29, 0, 24, '2023-09-20 09:45:03', '2023-09-20 09:45:03'),
(30, 0, 25, '2023-09-20 09:45:03', '2023-09-20 09:45:03'),
(31, 300000, 26, '2023-09-20 09:47:17', '2023-09-20 09:47:17'),
(32, 0, 27, '2023-09-20 09:47:17', '2023-09-20 09:47:17'),
(33, 0, 28, '2023-09-20 09:47:17', '2023-09-20 09:47:17'),
(34, 0, 29, '2023-09-20 09:56:08', '2023-09-20 09:56:08'),
(35, 0, 30, '2023-09-20 09:56:08', '2023-09-20 09:56:08'),
(36, 0, 31, '2023-09-20 09:56:48', '2023-09-20 09:56:48'),
(37, 0, 32, '2023-09-20 15:11:59', '2023-09-20 15:11:59'),
(38, 0, 33, '2023-09-24 08:00:21', '2023-09-24 08:00:21'),
(39, 0, 34, '2023-09-25 20:15:31', '2023-09-25 20:15:31'),
(40, 0, 35, '2023-09-25 20:20:20', '2023-09-25 20:20:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NgaySX` datetime DEFAULT current_timestamp(),
  `Hansudung` datetime DEFAULT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT 0,
  `ie_name_product` varchar(255) DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT 0,
  `ie_category` int(11) NOT NULL DEFAULT 0,
  `ie_product_id` int(11) NOT NULL DEFAULT 0,
  `ie_number` int(11) NOT NULL DEFAULT 0,
  `ie_number_sold` int(11) NOT NULL DEFAULT 0,
  `ie_money` int(11) NOT NULL DEFAULT 0,
  `ie_status` tinyint(4) NOT NULL DEFAULT 0,
  `ie_the_advance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_entered`
--

INSERT INTO `invoice_entered` (`id`, `NgaySX`, `Hansudung`, `ie_suppliere`, `ie_name_product`, `ie_total_money`, `ie_category`, `ie_product_id`, `ie_number`, `ie_number_sold`, `ie_money`, `ie_status`, `ie_the_advance`, `created_at`, `updated_at`) VALUES
(15, NULL, NULL, 6, NULL, 150000, 0, 26, 10, 0, 15000, 0, 150000, '2023-09-20 09:40:18', '2023-09-20 09:40:18'),
(16, NULL, NULL, 8, NULL, 200000, 0, 30, 100, 0, 2000, 0, 0, '2023-09-20 09:41:19', '2023-09-20 09:41:19'),
(17, NULL, NULL, 7, NULL, 1000000, 0, 11, 20, 1, 50000, 0, 1000000, '2023-09-20 09:42:36', '2023-10-02 05:15:02'),
(18, NULL, NULL, 7, NULL, 100000, 0, 12, 20, 0, 5000, 0, 0, '2023-09-20 09:42:36', '2023-09-20 09:42:36'),
(19, NULL, NULL, 7, NULL, 250000, 0, 13, 25, 0, 10000, 0, 0, '2023-09-20 09:42:36', '2023-09-20 09:42:36'),
(20, NULL, NULL, 5, NULL, 750000, 0, 18, 5, 0, 150000, 0, 0, '2023-09-20 09:43:48', '2023-09-20 09:43:48'),
(21, NULL, NULL, 5, NULL, 100000, 0, 19, 10, 0, 10000, 0, 0, '2023-09-20 09:43:48', '2023-09-20 09:43:48'),
(22, NULL, NULL, 5, NULL, 125000, 0, 20, 5, 0, 25000, 0, 0, '2023-09-20 09:43:48', '2023-09-20 09:43:48'),
(23, NULL, NULL, 5, NULL, 140000, 0, 22, 10, 0, 14000, 0, 0, '2023-09-20 09:45:03', '2023-09-20 09:45:03'),
(24, NULL, NULL, 5, NULL, 84000, 0, 20, 7, 0, 12000, 0, 0, '2023-09-20 09:45:03', '2023-09-20 09:45:03'),
(25, NULL, NULL, 5, NULL, 300000, 0, 21, 12, 2, 25000, 0, 0, '2023-09-20 09:45:03', '2023-10-02 05:15:02'),
(26, NULL, NULL, 7, NULL, 300000, 0, 23, 15, 0, 20000, 0, 300000, '2023-09-20 09:47:17', '2023-09-20 09:47:17'),
(27, NULL, NULL, 7, NULL, 1800000, 0, 24, 12, 0, 150000, 0, 1700000, '2023-09-20 09:47:17', '2023-09-20 09:47:17'),
(28, NULL, NULL, 7, NULL, 65000, 0, 25, 13, 1, 5000, 0, 0, '2023-09-20 09:47:17', '2023-10-02 05:15:02'),
(29, NULL, NULL, 7, NULL, 100000, 0, 29, 100, 0, 1000, 0, 0, '2023-09-20 09:56:07', '2023-09-20 09:56:07'),
(30, NULL, NULL, 7, NULL, 95000, 0, 28, 19, 0, 5000, 0, 0, '2023-09-20 09:56:08', '2023-09-20 09:56:08'),
(31, NULL, NULL, 7, NULL, 30000, 0, 27, 10, 0, 3000, 0, 0, '2023-09-20 09:56:48', '2023-09-20 09:56:48'),
(32, '2023-08-28 00:00:00', '2023-11-17 00:00:00', 5, NULL, 125000000, 0, 12, 500, 0, 250000, 0, 0, '2023-09-20 15:11:59', '2023-09-20 15:11:59'),
(33, NULL, NULL, 8, NULL, 20000, 0, 31, 10, 1, 2000, 0, 0, '2023-09-24 08:00:21', '2023-09-24 08:01:28'),
(34, '2023-09-26 00:00:00', NULL, 8, NULL, 20000, 0, 31, 1, 0, 20000, 0, 0, '2023-09-25 20:15:31', '2023-09-25 20:15:31'),
(35, '2023-09-12 00:00:00', NULL, 8, NULL, 20000, 0, 31, 1, 0, 20000, 0, 0, '2023-09-25 20:20:20', '2023-09-25 20:20:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) NOT NULL,
  `k_slug` varchar(191) NOT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) NOT NULL,
  `mn_slug` varchar(191) NOT NULL,
  `mn_avatar` varchar(191) DEFAULT NULL,
  `mn_banner` varchar(191) DEFAULT NULL,
  `mn_description` varchar(191) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 1, 1, '2020-07-17 13:27:52', '2023-09-23 18:14:52'),
(4, 'Sách HOT', 'sach-hot', NULL, NULL, NULL, 0, 1, '2023-09-23 18:34:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(37, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 2),
(38, '2020_04_29_112931_create_invoice_entered_in_tables', 3),
(39, '2020_06_17_192357_create_product_invoice_entered_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(6, 29, 2, 5, 2, 171000, NULL, NULL),
(7, 29, 6, 20, 1, 44000, NULL, NULL),
(8, 30, 9, 10, 1, 162000, NULL, NULL),
(9, 31, 9, 10, 1, 162000, NULL, NULL),
(10, 32, 8, 10, 3, 152100, NULL, NULL),
(11, 33, 8, 10, 1, 152100, NULL, NULL),
(12, 34, 8, 10, 1, 152100, NULL, NULL),
(13, 35, 8, 10, 2, 152100, NULL, NULL),
(14, 35, 9, 10, 1, 162000, NULL, NULL),
(15, 36, 9, 10, 1, 162000, '2023-09-18 16:12:42', '2023-09-18 16:12:42'),
(16, 37, 11, 0, 2, 85000, '2023-09-20 09:58:43', '2023-09-20 09:58:43'),
(17, 38, 12, 0, 1, 89000, '2023-09-20 14:56:20', '2023-09-20 14:56:20'),
(18, 39, 11, 0, 1, 85000, '2023-09-20 14:57:36', '2023-09-20 14:57:36'),
(19, 39, 21, 10, 1, 29700, '2023-09-20 14:57:36', '2023-09-20 14:57:36'),
(20, 39, 25, 15, 1, 26350, '2023-09-20 14:57:36', '2023-09-20 14:57:36'),
(21, 40, 21, 10, 1, 29700, NULL, NULL),
(22, 41, 11, 0, 1, 85000, '2023-09-23 18:38:59', '2023-09-23 18:38:59'),
(23, 42, 11, 0, 1, 85000, '2023-09-24 07:55:30', '2023-09-24 07:55:30'),
(24, 42, 13, 0, 1, 15500, '2023-09-24 07:55:30', '2023-09-24 07:55:30'),
(25, 43, 11, 0, 1, 85000, NULL, NULL),
(26, 44, 31, 30, 1, 75600, '2023-09-24 08:00:57', '2023-09-24 08:00:57'),
(27, 45, 11, 0, 1, 85000, '2023-09-25 20:49:19', '2023-09-25 20:49:19'),
(28, 45, 26, 0, 1, 25000, '2023-09-25 20:49:19', '2023-09-25 20:49:19'),
(29, 45, 27, 0, 1, 21000, '2023-09-25 20:49:19', '2023-09-25 20:49:19'),
(30, 46, 11, 0, 1, 85000, '2023-10-02 05:07:22', '2023-10-02 05:07:22'),
(31, 47, 21, 10, 2, 29700, '2023-10-02 05:07:42', '2023-10-02 05:07:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nguyenvana@gmail.com', '$2y$10$Yh.qPJb7sVW54yaTZ5/Vyetnp3V3UIxLOdho0uKfzQVBJ2HhesCz.', '2023-09-18 15:41:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) NOT NULL,
  `p_vnp_response_code` varchar(255) DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(7, 28, 6, 132000.00, 'Thanh toan GD: dgdfg', 'jnrDlPs6n5laoGE', '00', '14016722', 'NCB', '2023-05-19 16:29:00', NULL, NULL),
(8, 29, 5, 386000.00, 'Thanh toan GD: thanh toan mua sahc', 'fNI5wkhf7Hv1huf', '00', '14101878', 'NCB', '2023-08-25 23:24:00', NULL, NULL),
(9, 31, 9, 162000.00, 'Thanh toan GD: ểwr', 'U9IibRatZziRyVt', '00', '14110957', 'NCB', '2023-09-09 11:46:00', NULL, NULL),
(10, 40, 12, 29700.00, 'Thanh toan GD: tt sach', 'QKkJCAIsCfea0yW', '00', '14120815', 'NCB', '2023-09-20 21:59:00', NULL, NULL),
(11, 43, 10, 85000.00, 'Thanh toan GD: a', 'yNLKI9kQ8OdGnB2', '00', '14123192', 'NCB', '2023-09-24 14:59:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_slug` varchar(191) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_expiration_date` tinyint(4) DEFAULT NULL,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_expiration` datetime DEFAULT NULL,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) DEFAULT NULL,
  `pro_energy` varchar(191) DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_expiration`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(11, 'Bài Tập Tiếng Anh Lớp 7: Không Đáp Án (Global Success)', 'bai-tap-tieng-anh-lop-7-khong-dap-an-global-success', 85000, 0, 19, 0, 0, 0, NULL, '2023-09-19__bai-tap-tieng-anh-lop-7-khong-dap-an.jpg', 9, 0, NULL, 1, 7, 'LOẠI SẢN PHẨM: Bìa mềm\r\n\r\nKÍCH THƯỚC: 19 x 26.5 x 0.9 cm', '<p>Nhằm gi&uacute;p c&aacute;c em học sinh c&oacute; th&ecirc;m t&agrave;i liệu để &ocirc;n luyện v&agrave; thực h&agrave;nh m&ocirc;n tiếng Anh 7 theo chương tr&igrave;nh mới của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo, ch&uacute;ng t&ocirc;i bi&ecirc;n soạn s&aacute;ch B&agrave;i tập tiếng Anh 7.</p>\r\n\r\n<p>B&agrave;i tập tiếng Anh 7 được bi&ecirc;n soạn tương ứng với s&aacute;ch gi&aacute;o khoa Tiếng Anh 7 &minus; Global Success của nh&agrave; xuất bản Gi&aacute;o dục Việt Nam.</p>\r\n\r\n<p>B&agrave;i tập tiếng Anh 7 gồm 12 đơn vị b&agrave;i tập, được bi&ecirc;n soạn theo s&aacute;t nội dung của 12 đơn vị b&agrave;i học trong s&aacute;ch Tiếng Anh 7. Mỗi đơn vị b&agrave;i tập gồm 5 phần:</p>\r\n\r\n<p>Phần A - Phonetics: c&aacute;c b&agrave;i tập ngữ &acirc;m gi&uacute;p củng cố khả năng ph&aacute;t &acirc;m v&agrave; khả năng nhận biết c&aacute;c &acirc;m được ph&aacute;t &acirc;m giống nhau hoặc kh&aacute;c nhau.</p>\r\n\r\n<p>Phần B - Vocabulary and Grammar: c&aacute;c b&agrave;i tập về từ vựng v&agrave; ngữ ph&aacute;p gi&uacute;p &ocirc;n luyện từ vựng v&agrave; củng cố kiến thức ngữ ph&aacute;p trong từng đơn vị b&agrave;i học.</p>\r\n\r\n<p>Phần C - Speaking: c&aacute;c b&agrave;i tập đặt c&acirc;u hỏi, ho&agrave;n tất đoạn hội thoại, sắp xếp đoạn hội thoại, v.v. gi&uacute;p r&egrave;n luyện kỹ năng n&oacute;i.</p>\r\n\r\n<p>Phần D - Reading: c&aacute;c đoạn văn ngắn với c&aacute;c h&igrave;nh thức điền v&agrave;o chỗ trống, chọn từ để điền v&agrave;o chỗ trống, đọc v&agrave; trả lời c&acirc;u hỏi, đọc rồi viết T (true) hoặc F (false),... gi&uacute;p luyện tập v&agrave; ph&aacute;t triển kỹ năng đọc hiểu.</p>\r\n\r\n<p>Phần E - Writing: c&aacute;c b&agrave;i tập viết c&acirc;u hoặc viết đoạn văn gi&uacute;p luyện tập kỹ năng viết.</p>\r\n\r\n<p>Sau phần b&agrave;i tập của mỗi đơn vị b&agrave;i tập c&oacute; một b&agrave;i kiểm tra (Test for Unit) v&agrave; sau 3 đơn vị b&agrave;i tập c&oacute; một b&agrave;i tự kiểm tra (Test Yourself) nhằm gi&uacute;p c&aacute;c em &ocirc;n tập v&agrave; củng cố kiến thức đ&atilde; học.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh bi&ecirc;n soạn sẽ kh&ocirc;ng tr&aacute;nh khỏi sai s&oacute;t, ch&uacute;ng t&ocirc;i rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của thầy c&ocirc; gi&aacute;o, qu&yacute; phụ huynh v&agrave; c&aacute;c bạn đọc để s&aacute;ch được ho&agrave;n thiện hơn. Ch&acirc;n th&agrave;nh c&aacute;m ơn.</p>', 0, 0, 0, '2023-09-19 11:01:05', 19, 0, 20, NULL, NULL, 0, '2023-09-20 09:42:36'),
(12, 'Bài Tập Tiếng Anh Lớp 7: Có Đáp Án (Global Success)', 'bai-tap-tieng-anh-lop-7-co-dap-an-global-success', 89000, 0, 19, 0, 0, 0, NULL, '2023-09-19__bai-tap-tieng-anh-lop-7-co-dap-an.jpg', 4, 1, NULL, 1, 1, 'Bài tập tiếng Anh 7 được biên soạn tương ứng với sách giáo khoa Tiếng Anh 7 − Global Success của nhà xuất bản Giáo dục Việt Nam', '<p>Nhằm gi&uacute;p c&aacute;c em học sinh c&oacute; th&ecirc;m t&agrave;i liệu để &ocirc;n luyện v&agrave; thực h&agrave;nh m&ocirc;n tiếng Anh 7 theo chương tr&igrave;nh mới của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo, ch&uacute;ng t&ocirc;i bi&ecirc;n soạn s&aacute;ch B&agrave;i tập tiếng Anh 7.</p>\r\n\r\n<p><strong>B&agrave;i tập tiếng Anh 7</strong>&nbsp;được bi&ecirc;n soạn tương ứng với s&aacute;ch gi&aacute;o khoa Tiếng Anh 7 &minus; Global Success của nh&agrave; xuất bản Gi&aacute;o dục Việt Nam.</p>\r\n\r\n<p><strong>B&agrave;i tập tiếng Anh 7</strong>&nbsp;gồm 12 đơn vị b&agrave;i tập, được bi&ecirc;n soạn theo s&aacute;t nội dung của 12 đơn vị b&agrave;i học trong s&aacute;ch Tiếng Anh 7. Mỗi đơn vị b&agrave;i tập gồm 5 phần:</p>\r\n\r\n<p><strong>Phần A</strong>&nbsp;- Phonetics: c&aacute;c b&agrave;i tập ngữ &acirc;m gi&uacute;p củng cố khả năng ph&aacute;t &acirc;m v&agrave; khả năng nhận biết c&aacute;c &acirc;m được ph&aacute;t &acirc;m giống nhau hoặc kh&aacute;c nhau.</p>\r\n\r\n<p><strong>Phần B</strong>&nbsp;- Vocabulary and Grammar: c&aacute;c b&agrave;i tập về từ vựng v&agrave; ngữ ph&aacute;p gi&uacute;p &ocirc;n luyện từ vựng v&agrave; củng cố kiến thức ngữ ph&aacute;p trong từng đơn vị b&agrave;i học.</p>\r\n\r\n<p><strong>Phần C</strong>&nbsp;- Speaking: c&aacute;c b&agrave;i tập đặt c&acirc;u hỏi, ho&agrave;n tất đoạn hội thoại, sắp xếp đoạn hội thoại, v.v. gi&uacute;p r&egrave;n luyện kỹ năng n&oacute;i.</p>\r\n\r\n<p><strong>Phần D</strong>&nbsp;- Reading: c&aacute;c đoạn văn ngắn với c&aacute;c h&igrave;nh thức điền v&agrave;o chỗ trống, chọn từ để điền v&agrave;o chỗ trống, đọc v&agrave; trả lời c&acirc;u hỏi, đọc rồi viết T (true) hoặc F (false),... gi&uacute;p luyện tập v&agrave; ph&aacute;t triển kỹ năng đọc hiểu.</p>\r\n\r\n<p><strong>Phần E</strong>&nbsp;- Writing: c&aacute;c b&agrave;i tập viết c&acirc;u hoặc viết đoạn văn gi&uacute;p luyện tập kỹ năng viết.</p>\r\n\r\n<p>Sau phần b&agrave;i tập của mỗi đơn vị b&agrave;i tập c&oacute; một b&agrave;i kiểm tra (Test for Unit) v&agrave; sau 3 đơn vị b&agrave;i tập c&oacute; một b&agrave;i tự kiểm tra (Test Yourself) nhằm gi&uacute;p c&aacute;c em &ocirc;n tập v&agrave; củng cố kiến thức đ&atilde; học.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh bi&ecirc;n soạn sẽ kh&ocirc;ng tr&aacute;nh khỏi sai s&oacute;t, ch&uacute;ng t&ocirc;i rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của thầy c&ocirc; gi&aacute;o, qu&yacute; phụ huynh v&agrave; c&aacute;c bạn đọc để s&aacute;ch được ho&agrave;n thiện hơn. Ch&acirc;n th&agrave;nh c&aacute;m ơn.</p>', 1, 5, 5, '2023-09-19 11:10:07', 520, 0, 520, NULL, NULL, 0, '2023-09-20 15:11:59'),
(13, 'Bài Tập Sinh Học 12 (2023)', 'bai-tap-sinh-hoc-12-2023', 15500, 0, 18, 0, 0, 0, NULL, '2023-09-19__sinhhoc12.jpg', 4, 0, NULL, 1, 1, 'Nhà xuất bản:Giáo Dục Việt Nam        Tác giả:Nhiều Tác Giả\r\nHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?supplier_list=1229070&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Nh&agrave; xuất bản Gi&aacute;o Dục</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>150</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>24 x 17 x 0.3 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>112</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-19 11:13:06', 25, 0, 25, NULL, NULL, 0, '2023-09-20 09:42:36'),
(18, 'Sách Giáo Khoa Bộ Lớp 12 - Sách Bài Học (Bộ 14 Cuốn) (2023)', 'sach-giao-khoa-bo-lop-12-sach-bai-hoc-bo-14-cuon-2023', 180000, 0, 18, 0, 0, 0, NULL, '2023-09-20__3300000027449.jpg', 0, 0, NULL, 1, 0, 'Tác giả:Bộ Giáo Dục Và Đào Tạo\r\nHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>3300000027449</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Độ/ Lớp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?reading_level=1176181&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Lớp 12</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1176193&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cấp 3</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>3032</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>24 x 17 x 8 cm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:06:19', 5, 0, 5, NULL, NULL, 0, '2023-09-20 09:43:48'),
(19, 'Tiếng Anh 12 (2023)', 'tieng-anh-12-2023', 17000, 0, 18, 0, 0, 0, NULL, '2023-09-20__9786040286581-1-1-1.jpg', 1, 1, NULL, 1, 0, 'Hình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040337351</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Độ/ Lớp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?reading_level=1176181&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Lớp 12</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1176193&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cấp 3</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?supplier_list=1229070&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Nh&agrave; xuất bản Gi&aacute;o Dục</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>265</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>24 x 17 x 1 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>200</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:09:39', 10, 0, 10, NULL, NULL, 0, '2023-09-20 09:53:46'),
(20, 'Lịch Sử 11 (Chân Trời Sáng Tạo) (2023)', 'lich-su-11-chan-troi-sang-tao-2023', 15000, 0, 18, 0, 0, 0, NULL, '2023-09-20__9786040351937.jpg', 1, 1, NULL, 1, 0, 'Tác giả:Nhiều Tác Giả \r\n\r\nHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040351937</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Độ/ Lớp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?reading_level=1176182&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Lớp 11</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1176193&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cấp 3</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>185</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>26.5 x 19 x 0.4 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>100</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:10:47', 12, 0, 12, NULL, NULL, 0, '2023-09-20 09:53:45'),
(21, 'Tiếng Việt 1/1 (Chân Trời Sáng Tạo) (2023)', 'tieng-viet-11-chan-troi-sang-tao-2023', 33000, 0, 18, 0, 0, 10, NULL, '2023-09-20__9786040288158-1.jpg', 3, 0, NULL, 1, 3, 'Hình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040341143</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Độ/ Lớp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?reading_level=1176192&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Lớp 1</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1176195&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cấp 1</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?supplier_list=1229070&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Nh&agrave; xuất bản Gi&aacute;o Dục</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>250</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>26.5 x 19 x 0.8 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>188</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:25:01', 10, 0, 12, NULL, NULL, 0, '2023-09-20 09:45:03'),
(22, 'Lịch Sử 10 (Kết Nối) (2023)', 'lich-su-10-ket-noi-2023', 16000, 0, 18, 0, 0, 0, NULL, '2023-09-20__9786040383259.jpg', 0, 1, NULL, 1, 0, 'Tác giả:Nhiều Tác Giả\r\nNhà xuất bản:Giáo Dục Việt NamHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040383259</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>120</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>26.5 x 19 x 0.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>100</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:25:47', 10, 0, 10, NULL, NULL, 0, '2023-09-23 18:15:37'),
(23, 'Global Success - Tiếng Anh 6 - Sách Bài Tập - Tập Hai', 'global-success-tieng-anh-6-sach-bai-tap-tap-hai', 20000, 0, 18, 0, 0, 5, NULL, '2023-09-20__9786040288523.jpg', 0, 1, NULL, 1, 0, 'Nhà xuất bản:Giáo Dục Việt NamTác giả:Nhiều Tác Giả\r\nHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040288523</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?supplier_list=1228397&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cty Phương Nam</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2022</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>172</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>28 x 20 x 0.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>63</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:26:34', 15, 0, 15, NULL, NULL, 0, '2023-09-23 18:15:41'),
(24, 'Sách Giáo Khoa Bộ Lớp 9 - Sách Bài Tập (Bộ 6 Cuốn) (2023)', 'sach-giao-khoa-bo-lop-9-sach-bai-tap-bo-6-cuon-2023', 220000, 0, 18, 0, 0, 15, NULL, '2023-09-20__3300000027418-1.jpg', 0, 1, NULL, 1, 0, 'Nhà cung cấp:Nhà xuất bản Giáo DụcTác giả:Bộ Giáo Dục Và Đào Tạo\r\nNhà xuất bản:Giáo Dục Việt NamHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>3300000027401</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Độ/ Lớp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?reading_level=1176184&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Lớp 9</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1176194&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cấp 2</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1201</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>24 x 17 x 4 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:28:29', 12, 0, 12, NULL, NULL, 0, '2023-09-23 18:15:33'),
(25, 'Atlat Địa lí Việt Nam (Theo Chương Trình Giáo Dục Phổ Thông 2018) (2023)', 'atlat-dia-li-viet-nam-theo-chuong-trinh-giao-duc-pho-thong-2018-2023', 31000, 0, 19, 0, 0, 15, NULL, '2023-09-20__atlat.jpg', 1, 0, NULL, 1, 1, 'Nhà cung cấp:Cty Sách & VHP Quảng LợiTác giả:Nhiều Tác Giả\r\nNhà xuất bản:Hà NộiHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786043247756</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty S&aacute;ch &amp; VHP Quảng Lợi</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>H&agrave; Nội</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>180</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>32 x 23 x 0.8 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>178</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:29:47', 12, 0, 13, NULL, NULL, 0, '2023-09-20 09:47:17'),
(26, 'Luyện Tập Tin Học 2 - Tập 1 (2023)', 'luyen-tap-tin-hoc-2-tap-1-2023', 25000, 0, 19, 0, 0, 0, NULL, '2023-09-20__9786040360977.jpg', 1, 0, NULL, 1, 1, 'Nhà cung cấp:Cty Phương Nam Tác giả:Nguyễn Minh Thiên Hoàng, Đỗ Minh Hoàng Đức, Lê Tấn Hồng Hải\r\nNhà xuất bản:Giáo Dục Việt Nam Hình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040360977</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nguyễn Minh Thi&ecirc;n Ho&agrave;ng, Đỗ Minh Ho&agrave;ng Đức, L&ecirc; Tấn Hồng Hải</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>100</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>24 x 17 x 0.3 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>60</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:30:47', 10, 0, 10, NULL, NULL, 0, '2023-09-20 09:40:18'),
(27, 'Luyện Tập Mĩ Thuật 5 - Tập 2 (2023)', 'luyen-tap-mi-thuat-5-tap-2-2023', 21000, 0, 19, 0, 0, 0, NULL, '2023-09-20__9786040359391.jpg', 1, 1, NULL, 1, 1, 'Nhà cung cấp:Cty Sách & Thiết Bị Giáo Dục Miền NamTác giả:Nhiều Tác Giả\r\nNhà xuất bản:Giáo Dục Việt NamHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040359391</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Độ/ Lớp</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?reading_level=1176188&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Lớp 5</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1176195&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cấp 1</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty S&aacute;ch &amp; Thiết Bị Gi&aacute;o Dục Miền Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>110</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>27 x 20 x 0.4 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>36</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:31:44', 10, 0, 10, NULL, NULL, 0, '2023-09-20 09:57:52'),
(28, 'Phiếu Ôn Tập Cuối Tuần Môn Tiếng Việt Lớp 1 (Bộ Sách Chân Trời Sáng Tạo)', 'phieu-on-tap-cuoi-tuan-mon-tieng-viet-lop-1-bo-sach-chan-troi-sang-tao', 39500, 0, 19, 0, 0, 10, NULL, '2023-09-20__9786040268433.jpg', 0, 1, NULL, 1, 0, 'Nhà cung cấp:Cty Sách & Thiết Bị Giáo Dục Miền NamTác giả:Phan Như Hà, Nguyễn Hoàng Ly, Đặng Tú\r\nNhà xuất bản:Giáo Dục Việt NamHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040268433</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty S&aacute;ch &amp; Thiết Bị Gi&aacute;o Dục Miền Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Phan Như H&agrave;, Nguyễn Ho&agrave;ng Ly, Đặng T&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2022</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>155</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>29.5 x 20.5 x 0.6 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>72</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:32:36', 19, 0, 19, NULL, NULL, 0, '2023-09-20 09:57:53'),
(29, 'Bé Chuẩn Bị Vào Lớp 1 - Vở Tập Viết Chữ Cái Viết Thường', 'be-chuan-bi-vao-lop-1-vo-tap-viet-chu-cai-viet-thuong', 12000, 0, 20, 0, 0, 15, NULL, '2023-09-20__image-236145.jpg', 1, 0, NULL, 1, 0, 'Nhà cung cấp:Cty TNHH TM&DV VH GD Phía NamTác giả:Chính An, Nhóm Giáo Viên ĐH Sư Phạm\r\nHình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8931805616368</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1177707&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Mầm Non</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/van-hoa-giao-duc-phia-nam?fhs_campaign=ATTRIBUTE_PRODUCT\">Cty TNHH TM&amp;DV VH GD Ph&iacute;a Nam</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Ch&iacute;nh An, Nh&oacute;m Gi&aacute;o Vi&ecirc;n ĐH Sư Phạm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Thanh H&oacute;a</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2021</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>70</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>24 x 17 x 0.4 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>31</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:34:18', 100, 0, 100, NULL, NULL, 0, '2023-09-20 09:56:08'),
(30, 'Bảng Chữ Cái Và Số', 'bang-chu-cai-va-so', 5000, 0, 20, 0, 0, 15, NULL, '2023-09-20__image-244718-1-3360.jpg', 0, 1, NULL, 1, 0, 'Nhà cung cấp:Cty TNHH TM&DV VH GD Phía Nam', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8931805024095</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cấp Học</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?stages=1177707&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Mầm Non</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/van-hoa-giao-duc-phia-nam?fhs_campaign=ATTRIBUTE_PRODUCT\">Cty TNHH TM&amp;DV VH GD Ph&iacute;a Nam</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Ngọc Anh, Ngọc Tuyết</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Đồng Nai</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2021</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>15</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>30 x 20 x 0.1 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 09:35:09', 100, 0, 100, NULL, NULL, 0, '2023-09-20 09:57:56'),
(31, 'Cây Cam Ngọt Của Tôi', 'cay-cam-ngot-cua-toi', 108000, 0, 23, 0, 0, 30, NULL, '2023-09-20__2020-12-17-16-50-30-1-390x510.jpg', 1, 0, NULL, 1, 1, 'Nhà cung cấp:Nhã NamTác giả:José Mauro de Vasconcelos\r\nNhà xuất bản:NXB Hội Nhà Văn', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8935235228351</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/nha-nam?fhs_campaign=ATTRIBUTE_PRODUCT\">Nh&atilde; Nam</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Jos&eacute; Mauro de Vasconcelos</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Người Dịch</th>\r\n			<td>Nguyễn B&iacute;ch Lan,&nbsp;T&ocirc; Yến Ly</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Hội Nh&agrave; Văn</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>280</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>20 x 14.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>244</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-09-20 15:25:13', 11, 0, 12, NULL, NULL, 0, '2023-09-25 20:20:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(1, 1, 3),
(3, 3, 3),
(4, 2, 1),
(7, 9, 7),
(8, 8, 9),
(10, 10, 6),
(32, 14, 16),
(33, 14, 28),
(34, 15, 33),
(40, 17, 30),
(41, 16, 18),
(42, 16, 27),
(43, 16, 34),
(44, 13, 29),
(45, 13, 35),
(46, 12, 29),
(47, 12, 36),
(48, 11, 29),
(49, 11, 36),
(50, 18, 29),
(51, 18, 35),
(52, 19, 29),
(53, 19, 35),
(54, 20, 29),
(55, 20, 35),
(56, 21, 29),
(57, 21, 35),
(58, 22, 29),
(59, 22, 35),
(64, 25, 29),
(65, 25, 36),
(66, 26, 30),
(67, 26, 36),
(68, 27, 29),
(69, 27, 36),
(70, 28, 29),
(71, 28, 36),
(72, 30, 28),
(73, 30, 37),
(74, 24, 29),
(75, 24, 35),
(78, 23, 29),
(79, 23, 35),
(80, 29, 29),
(81, 29, 37),
(82, 31, 30),
(83, 31, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) DEFAULT NULL,
  `pi_slug` varchar(191) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_invoice_entered`
--

CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pie_product_id` int(11) NOT NULL DEFAULT 0,
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(7, 9, 9, 3, 0, 'oke', '2023-09-18 15:33:45', '2023-09-18 15:33:45'),
(8, 12, 12, 5, 0, 'Tuyệt vời', '2023-09-20 15:01:36', '2023-09-20 15:01:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) DEFAULT NULL,
  `sd_link` varchar(191) DEFAULT NULL,
  `sd_image` varchar(191) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner website 1', '/', '2023-09-19__slide1.jpg', 1, 1, 1, '2023-09-19 09:44:16', '2023-09-23 18:04:18'),
(2, 'banner website 2', '/', '2023-09-19__slide2.jpg', 1, 1, 2, '2023-09-19 09:57:25', '2023-09-19 09:57:25'),
(3, 'banner website 2', '/', '2023-09-19__slide3.webp', 1, 1, 3, '2023-09-19 09:59:37', '2023-09-19 09:59:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) DEFAULT NULL,
  `s_slug` varchar(191) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<ol>\r\n	<li>\r\n	<p><strong>Truy cập trang web</strong>: Truy cập trang web b&aacute;n s&aacute;ch NVT bằng tr&igrave;nh duyệt web của bạn. Đảm bảo rằng bạn đ&atilde; đăng nhập hoặc tạo t&agrave;i khoản nếu cần thiết.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>T&igrave;m sản phẩm</strong>: Sử dụng chức năng t&igrave;m kiếm hoặc duyệt danh mục để t&igrave;m s&aacute;ch bạn muốn mua.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xem chi tiết sản phẩm</strong>: Khi bạn t&igrave;m thấy s&aacute;ch bạn muốn mua, nhấp v&agrave;o sản phẩm để xem chi tiết về n&oacute;. Điều n&agrave;y c&oacute; thể bao gồm m&ocirc; tả, gi&aacute; cả, h&igrave;nh ảnh, v&agrave; th&ocirc;ng tin về t&igrave;nh trạng c&ograve;n h&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Th&ecirc;m v&agrave;o giỏ h&agrave;ng</strong>: Tr&ecirc;n trang chi tiết sản phẩm, bạn sẽ thấy một n&uacute;t &quot;Mua ngay&quot; . Nhấp v&agrave;o n&uacute;t n&agrave;y để đưa sản phẩm v&agrave;o giỏ h&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kiểm tra giỏ h&agrave;ng</strong>: Sau khi th&ecirc;m sản phẩm v&agrave;o giỏ h&agrave;ng, bạn c&oacute; thể kiểm tra giỏ h&agrave;ng của m&igrave;nh bằng c&aacute;ch nhấp v&agrave;o biểu tượng giỏ h&agrave;ng tr&ecirc;n trang web.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>X&aacute;c nhận đơn h&agrave;ng</strong>: Trong giỏ h&agrave;ng, bạn sẽ thấy danh s&aacute;ch c&aacute;c sản phẩm bạn đ&atilde; chọn c&ugrave;ng với tổng số tiền. Đảm bảo kiểm tra lại danh s&aacute;ch v&agrave; số lượng sản phẩm. Sau đ&oacute;, nhấp v&agrave;o n&uacute;t &quot;Thanh to&aacute;n khi nhận h&agrave;ng&quot; hoặc &quot;Thanh to&aacute;n online.&quot;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Th&ocirc;ng tin thanh to&aacute;n v&agrave; giao h&agrave;ng</strong>: Trang web sẽ y&ecirc;u cầu bạn cung cấp th&ocirc;ng tin thanh to&aacute;n v&agrave; địa chỉ giao h&agrave;ng. Điền đầy đủ th&ocirc;ng tin cần thiết ..</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>X&aacute;c nhận đặt h&agrave;ng</strong>: Sau khi điền đầy đủ th&ocirc;ng tin , kiểm tra lại đơn h&agrave;ng v&agrave; nhấp v&agrave;o n&uacute;t &quot;Tiếp tục&quot; để thực hiện điền c&aacute;c th&ocirc;ng tin cần thiết v&agrave; thanh&nbsp; to&aacute;n khi bạn chọn &quot;Thanh to&aacute;n online&quot;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nhận x&aacute;c nhận đơn h&agrave;ng</strong>: Sau khi ho&agrave;n th&agrave;nh đặt h&agrave;ng, bạn sẽ nhận được một x&aacute;c nhận đơn h&agrave;ng tr&ecirc;n&nbsp;trang web. Lưu giữ th&ocirc;ng tin n&agrave;y để theo d&otilde;i trạng th&aacute;i đơn h&agrave;ng v&agrave; li&ecirc;n hệ với cửa h&agrave;ng nếu cần thiết.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Theo d&otilde;i đơn h&agrave;ng</strong>: Sau khi đơn h&agrave;ng được x&aacute;c nhận, bạn c&oacute; thể theo d&otilde;i trạng th&aacute;i của n&oacute; th&ocirc;ng qua t&agrave;i khoản của bạn tr&ecirc;n trang web .</p>\r\n	</li>\r\n</ol>', '2023-09-23 18:41:08', '2023-09-23 18:41:08'),
(3, 'Chính sách đổi - trả - hoàn tiền', NULL, 2, NULL, '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Fahasa\" src=\"https://cdn0.fahasa.com/media/wysiwyg/Hien_UI/QuyTrinhDoiTra/DoiTraHang400x400_02.svg\" /></p>\r\n\r\n<p><strong>1. C&aacute;c trường hợp y&ecirc;u cầu đổi trả</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lỗi kỹ thuật của sản phẩm - do nh&agrave; cung cấp (s&aacute;ch thiếu trang, s&uacute;t g&aacute;y, tr&ugrave;ng nội dung, ..)</p>\r\n	</li>\r\n	<li>\r\n	<p>Giao nhầm/ giao thiếu (thiếu sản phẩm đ&atilde; đặt, thiếu qu&agrave; tặng k&egrave;m theo)</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất lượng h&agrave;ng h&oacute;a k&eacute;m, hư hại do vận chuyển.</p>\r\n	</li>\r\n	<li>\r\n	<p>H&igrave;nh thức sản phẩm kh&ocirc;ng giống m&ocirc; tả ban đầu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Qu&yacute; kh&aacute;ch đặt nhầm/ kh&ocirc;ng c&ograve;n nhu cầu (*)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>(*) Đối với c&aacute;c Sản phẩm kh&ocirc;ng bị lỗi, chỉ &aacute;p dụng khi sản phẩm đ&aacute;p ứng đủ điều kiện sau:</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch&nbsp;c&oacute; thể trả lại sản phẩm đ&atilde; mua tại&nbsp;<strong>bookshop.abc</strong>&nbsp;trong v&ograve;ng 30 ng&agrave;y kể từ khi nhận h&agrave;ng với đa số sản phẩm khi thỏa m&atilde;n c&aacute;c điều kiện sau:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n tem, m&aacute;c hay ni&ecirc;m phong của nh&agrave; sản xuất.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm c&ograve;n đầy đủ phụ kiện hoặc phiếu bảo h&agrave;nh c&ugrave;ng qu&agrave; tặng k&egrave;m theo (nếu c&oacute;).</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>2. Điều kiện đổi trả</strong></p>\r\n\r\n<p><strong>Bookshop.abc</strong>&nbsp;hỗ trợ đổi/ trả sản phẩm cho qu&yacute; kh&aacute;ch nếu:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm c&ograve;n nguy&ecirc;n bao b&igrave; như hiện trạng ban đầu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phầm c&ograve;n đầy đủ phụ kiện, qu&agrave; tặng khuyến m&atilde;i k&egrave;m theo.</p>\r\n	</li>\r\n	<li>\r\n	<p>H&oacute;a đơn GTGT (nếu c&oacute;).</p>\r\n	</li>\r\n	<li>\r\n	<p>Cung cấp đầy đủ th&ocirc;ng tin đối chứng theo y&ecirc;u cầu.</p>\r\n	</li>\r\n</ul>', '2023-09-23 18:46:13', NULL),
(4, 'Chính sách bảo mật', NULL, 3, NULL, '<p>Website bookshop.abc&nbsp;cam kết bảo mật an to&agrave;n tuyệt đối với th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng theo ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin của doanh nghiệp v&agrave; c&aacute;c quy định của ph&aacute;p luật Việt Nam. Cụ thể:<br />\r\n<br />\r\n<strong>1. Mục đ&iacute;ch thu thập th&ocirc;ng tin c&aacute; nh&acirc;n</strong><br />\r\n- Việc thu thập dữ liệu tr&ecirc;n bao gồm: email, điện thoại, t&ecirc;n đăng nhập, mật khẩu đăng nhập, địa chỉ kh&aacute;ch h&agrave;ng (th&agrave;nh vi&ecirc;n). Đ&acirc;y l&agrave; c&aacute;c th&ocirc;ng tin cần th&agrave;nh vi&ecirc;n cung cấp bắt buộc khi đăng k&yacute; sử dụng dịch vụ v&agrave; để li&ecirc;n hệ x&aacute;c nhận khi kh&aacute;ch h&agrave;ng đăng k&yacute; sử dụng dịch vụ tr&ecirc;n ứng dụng nhằm đảm bảo quyền lợi cho cho người ti&ecirc;u d&ugrave;ng.<br />\r\n- C&aacute;c th&agrave;nh vi&ecirc;n sẽ tự chịu tr&aacute;ch nhiệm về bảo mật v&agrave; lưu giữ mọi hoạt động sử dụng dịch vụ dưới t&ecirc;n đăng k&yacute;, mật khẩu v&agrave; hộp thư điện tử của m&igrave;nh. Ngo&agrave;i ra, th&agrave;nh vi&ecirc;n c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o kịp thời cho Ch&uacute;ng t&ocirc;i về những h&agrave;nh vi sử dụng tr&aacute;i ph&eacute;p, lạm dụng, vi phạm bảo mật, lưu giữ t&ecirc;n đăng k&yacute; v&agrave; mật khẩu của b&ecirc;n thứ ba để c&oacute; biện ph&aacute;p giải quyết ph&ugrave; hợp.<br />\r\n- Ngo&agrave;i ra, ứng dụng c&ograve;n c&oacute; thể lưu trữ ảnh để gi&uacute;p người d&ugrave;ng sử dụng c&aacute;c chức năng như chat, cập nhật ảnh đại diện,... được dễ d&agrave;ng hơn. Kh&aacute;ch h&agrave;ng c&oacute; thể đăng, xo&aacute; ảnh nếu muốn.<br />\r\n- Ứng dụng c&oacute; thể y&ecirc;u cầu quyền truy cập Camera để chụp ảnh, qu&eacute;t m&atilde; QR. Ch&uacute;ng t&ocirc;i chỉ lưu trữ ảnh tải l&ecirc;n nhằm mục đ&iacute;ch gi&uacute;p người d&ugrave;ng c&oacute; thể xem lại nội dung đ&atilde; đăng của m&igrave;nh.<br />\r\n- Ứng dụng c&oacute; thể y&ecirc;u cầu quyền truy cập Thư viện/ Bộ nhớ để gi&uacute;p người d&ugrave;ng chọn, tải, lưu ảnh. Ch&uacute;ng t&ocirc;i chỉ lưu trữ ảnh tải l&ecirc;n nhằm mục đ&iacute;ch gi&uacute;p người d&ugrave;ng c&oacute; thể xem lại nội dung đ&atilde; đăng của m&igrave;nh.<br />\r\n- Ứng dụng c&oacute; thể y&ecirc;u cầu quyền truy cập Vị tr&iacute; để đưa ra c&aacute;c kết quả hợp l&yacute; nhất với người d&ugrave;ng. Ch&uacute;ng t&ocirc;i kh&ocirc;ng lưu trữ th&ocirc;ng tin vị tr&iacute; của người d&ugrave;ng.<br />\r\n<br />\r\n<strong>2. Phạm vi thu thập th&ocirc;ng tin</strong><br />\r\nWebsite bookshop.abc sử dụng th&ocirc;ng tin th&agrave;nh vi&ecirc;n cung cấp để:<br />\r\n- Cung cấp c&aacute;c dịch vụ đến Th&agrave;nh vi&ecirc;n;<br />\r\n- Gửi c&aacute;c th&ocirc;ng b&aacute;o về c&aacute;c hoạt động trao đổi th&ocirc;ng tin giữa th&agrave;nh vi&ecirc;n v&agrave; người quản trị.<br />\r\n- Ngăn ngừa c&aacute;c hoạt động ph&aacute; hủy t&agrave;i khoản người d&ugrave;ng của th&agrave;nh vi&ecirc;n hoặc c&aacute;c hoạt động giả mạo Th&agrave;nh vi&ecirc;n;<br />\r\n- Li&ecirc;n lạc v&agrave; giải quyết với th&agrave;nh vi&ecirc;n trong những trường hợp đặc biệt.<br />\r\n- Kh&ocirc;ng sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n ngo&agrave;i mục đ&iacute;ch x&aacute;c nhận v&agrave; li&ecirc;n hệ c&oacute; li&ecirc;n quan đến giao dịch tại Website bookshop.abc<br />\r\n- Trong trường hợp c&oacute; y&ecirc;u cầu của ph&aacute;p luật: Ch&uacute;ng t&ocirc;i c&oacute; tr&aacute;ch nhiệm hợp t&aacute;c cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n th&agrave;nh vi&ecirc;n khi c&oacute; y&ecirc;u cầu từ cơ quan tư ph&aacute;p bao gồm: Viện kiểm s&aacute;t, t&ograve;a &aacute;n, cơ quan c&ocirc;ng an điều tra li&ecirc;n quan đến h&agrave;nh vi vi phạm ph&aacute;p luật n&agrave;o đ&oacute; của kh&aacute;ch h&agrave;ng. Ngo&agrave;i ra, kh&ocirc;ng ai c&oacute; quyền x&acirc;m phạm v&agrave;o th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n.<br />\r\n<br />\r\n<strong>3. Thời gian lưu trữ th&ocirc;ng tin</strong><br />\r\nDữ liệu c&aacute; nh&acirc;n của Th&agrave;nh vi&ecirc;n sẽ được lưu trữ cho đến khi c&oacute; y&ecirc;u cầu hủy bỏ hoặc tự th&agrave;nh vi&ecirc;n đăng nhập v&agrave; thực hiện hủy bỏ. C&ograve;n lại trong mọi trường hợp th&ocirc;ng tin c&aacute; nh&acirc;n th&agrave;nh vi&ecirc;n sẽ được bảo mật tr&ecirc;n m&aacute;y chủ của ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n<strong>&nbsp;4. Những người hoặc tổ chức c&oacute; thể được tiếp cận với th&ocirc;ng tin đ&oacute;</strong><br />\r\n&ndash; C&aacute;c đối t&aacute;c l&agrave; b&ecirc;n cung cấp dịch vụ cho ch&uacute;ng t&ocirc;i li&ecirc;n quan đến thực hiện đơn h&agrave;ng v&agrave; chỉ giới hạn trong phạm vi th&ocirc;ng tin cần thiết cũng như &aacute;p dụng c&aacute;c quy định đảm bảo an ninh, bảo mật c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n.<br />\r\n&ndash; Ch&uacute;ng t&ocirc;i sử dụng dịch vụ từ một nh&agrave; cung cấp dịch vụ l&agrave; b&ecirc;n thứ ba để thực hiện một số hoạt động li&ecirc;n quan. Khi đ&oacute;, b&ecirc;n thứ ba c&oacute; thể truy cập hoặc xử l&yacute; c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n trong qu&aacute; tr&igrave;nh cung cấp c&aacute;c dịch vụ đ&oacute;. Ch&uacute;ng t&ocirc;i y&ecirc;u cầu c&aacute;c b&ecirc;n thứ ba n&agrave;y tu&acirc;n thủ mọi luật lệ về bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n li&ecirc;n quan v&agrave; c&aacute;c y&ecirc;u cầu về an ninh li&ecirc;n quan đến th&ocirc;ng tin c&aacute; nh&acirc;n.<br />\r\n&ndash; C&aacute;c chương tr&igrave;nh c&oacute; t&iacute;nh li&ecirc;n kết, đồng thực hiện, thu&ecirc; ngo&agrave;i cho c&aacute;c mục đ&iacute;ch được n&ecirc;u tại Website bookshop.abc v&agrave; lu&ocirc;n &aacute;p dụng c&aacute;c y&ecirc;u cầu bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n.<br />\r\n&ndash; Y&ecirc;u cầu ph&aacute;p l&yacute;: Ch&uacute;ng t&ocirc;i c&oacute; thể tiết lộ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n nếu điều đ&oacute; do luật ph&aacute;p y&ecirc;u cầu v&agrave; việc tiết lộ như vậy l&agrave; cần thiết một c&aacute;ch hợp l&yacute; để tu&acirc;n thủ c&aacute;c quy tr&igrave;nh ph&aacute;p l&yacute;.<br />\r\n&ndash; Chuyển giao kinh doanh (nếu c&oacute;): trong trường hợp s&aacute;p nhập, hợp nhất to&agrave;n bộ hoặc một phần với c&ocirc;ng ty kh&aacute;c, người mua sẽ c&oacute; quyền truy cập th&ocirc;ng tin được ch&uacute;ng t&ocirc;i lưu trữ, duy tr&igrave; trong đ&oacute; bao gồm cả th&ocirc;ng tin c&aacute; nh&acirc;n.<br />\r\n<br />\r\n<strong>5. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin</strong><br />\r\n+ T&ecirc;n doanh nghiệp: C&ocirc;ng ty Cổ phần s&aacute;ch NVT<br />\r\n+ Trụ sở ch&iacute;nh: 55 Quang Trung, Nguyễn Du, Hai B&agrave; Trưng, H&agrave; Nội<br />\r\n+ Điện thoại: 0325426874<br />\r\n+ Email: bookshop@gmail.com<br />\r\n<br />\r\n<strong>6. Phương thức v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu:</strong><br />\r\n- Th&agrave;nh vi&ecirc;n c&oacute; quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh bằng c&aacute;ch đăng nhập v&agrave;o t&agrave;i khoản v&agrave; chỉnh sửa th&ocirc;ng tin c&aacute; nh&acirc;n hoặc y&ecirc;u cầu ban quản trị thực hiện việc n&agrave;y.<br />\r\n- Th&agrave;nh vi&ecirc;n c&oacute; quyền gửi khiếu nại về việc lộ th&ocirc;ng tin c&aacute; nh&acirc;n cho b&ecirc;n thứ 3 đến Ban quản trị của Website bookshop.abc. Khi tiếp nhận những phản hồi n&agrave;y, ch&uacute;ng t&ocirc;i sẽ x&aacute;c nhận lại th&ocirc;ng tin, phải c&oacute; tr&aacute;ch nhiệm trả lời l&yacute; do v&agrave; hướng dẫn th&agrave;nh vi&ecirc;n kh&ocirc;i phục v&agrave; bảo mật lại th&ocirc;ng tin.</p>', '2023-09-23 18:50:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) DEFAULT NULL,
  `sl_phone` varchar(191) DEFAULT NULL,
  `sl_email` varchar(191) DEFAULT NULL,
  `sl_address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(5, 'NXB Kim Đồng', '0986145921', 'nxbkimdong@gmail.com', '55 Quang Trung, Hai Bà Trưng, Hà Nội', '2023-09-09 04:02:54', '2023-09-20 04:57:34'),
(6, 'NXB Nhã Nam', '0551237845', 'nxbnhanam@gmail.com', 'Quận 4 TP.Hồ Chí  Minh', '2023-09-09 04:04:21', '2023-09-20 04:57:47'),
(7, 'NXB Giáo Dục Việt Nam', '0369125812', 'nxbgdvn@gmail.com', 'Ha Noi', '2023-09-19 10:50:30', '2023-09-20 04:57:59'),
(8, 'NXB Trẻ', '0983848851', 'nxbtre@gmail.com', 'Ha Noi', '2023-09-20 04:56:29', '2023-09-20 04:58:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `tst_code` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(29, 5, 1, 386000, 'NGuyễn Văn A', 'nguyenvana@gmail.com', '0928817228', 'Ha Noi', NULL, 2, 1, NULL, '2023-08-25 16:24:08', '2023-08-25 16:27:20'),
(30, 8, 1, 162000, 'nguyenvanb@gmail.com', 'nguyenvanb@gmail.com', '1234257891', 'Ha Noi', 'ewrwerwe', 3, 1, 'I4w1yJtaL0sRSaO', '2023-09-09 04:36:01', '2023-09-10 07:15:22'),
(31, 9, 1, 162000, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', '1234567890', 'ẻ', 'ewrwe', 3, 1, NULL, '2023-09-09 04:45:12', '2023-09-09 07:55:08'),
(32, 8, 1, 456300, 'nguyenvanb@gmail.com', 'nguyenvanb@gmail.com', '1234257891', 'Ha Noi', 'a', 3, 1, 'vlsdk5QrDrz6YNw', '2023-09-09 07:15:18', '2023-09-09 07:16:29'),
(33, 8, 1, 152100, 'nguyenvanb@gmail.com', 'nguyenvanb@gmail.com', '1234257891', 'Ha Noi', 'ewrewr', 3, 1, '4wWSqmJapPBUA9w', '2023-09-09 07:50:04', '2023-09-10 07:15:19'),
(34, 9, 0, 152100, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', '1234567890', 'Ha Noi', 's', -1, 1, 'nVEh8QsXPDzrb9z', '2023-09-09 14:12:36', '2023-09-10 07:07:05'),
(35, 9, 1, 466200, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', '1234567890', 'Ha Noi', 'a', 2, 1, 'thbrTo2tSvNLpbn', '2023-09-10 07:08:02', '2023-09-10 07:08:13'),
(36, 9, 0, 162000, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', '1234567890', 'sdasdasd', 'ádádas', 1, 1, 'dGULvK4hELrWW08', '2023-09-18 16:12:42', NULL),
(37, 9, 0, 170000, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', '1234567890', 'Ha Noi', 'khong', 1, 1, 'a9Mod7NUuZFaGUG', '2023-09-20 09:58:43', NULL),
(38, 10, 0, 89000, 'nguyenvanc@gmail.com', 'nguyenvanc@gmail.com', '1234567899', 'sdasdasd', 's', 1, 1, 'G33lM1Rlr19ySZL', '2023-09-20 14:56:20', NULL),
(39, 12, 1, 141050, 'Nguyễn Văn Thuận', 'ngvanthuanit@gmail.com', '0369848423', 'Ha Noi', 'k', 3, 1, 'mj4rxAzjTDYlEXt', '2023-09-20 14:57:36', '2023-10-02 05:15:02'),
(40, 12, 1, 29700, 'Nguyễn Văn Thuận', 'ngvanthuanit@gmail.com', '0369848423', 'Ha Noi', 'k', 3, 1, NULL, '2023-09-20 14:57:48', '2023-09-20 15:05:05'),
(41, 10, 0, 85000, 'nguyenvanc@gmail.com', 'nguyenvanc@gmail.com', '1234567899', 'Ha Noi', 'k', 1, 1, '62BgNrs5aI5AdNN', '2023-09-23 18:38:59', NULL),
(42, 10, 0, 100500, 'nguyenvanc@gmail.com', 'nguyenvanc@gmail.com', '1234567899', 'd', 'f', 1, 1, 'KZriEfVdoP0lZ3g', '2023-09-24 07:55:30', NULL),
(43, 10, 0, 85000, 'nguyenvanc@gmail.com', 'nguyenvanc@gmail.com', '1234567899', 'â', 'a', 1, 1, NULL, '2023-09-24 07:58:41', NULL),
(44, 10, 1, 75600, 'nguyenvanc@gmail.com', 'nguyenvanc@gmail.com', '1234567899', 'Ha Noi', 'e', 3, 1, 'PMBbeu9owPpHuea', '2023-09-24 08:00:57', '2023-09-24 08:01:28'),
(45, 10, 0, 131000, 'nguyenvanc@gmail.com', 'nguyenvanc@gmail.com', '1234567899', 'Ha Noi', 'a', 1, 1, '05IAVXbznr4jPVw', '2023-09-25 20:49:19', NULL),
(46, 9, 0, 85000, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', '1234567890', 'Ha Noi', 'e', 1, 1, '065qIR3utQ3MlEB', '2023-10-02 05:07:22', NULL),
(47, 9, 0, 59400, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', '1234567890', 'Ha Noi', 's', 1, 1, 'og1sCUR9Vs9Oq9y', '2023-10-02 05:07:42', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'nguyenvanb@gmail.com', 'nguyenvanb@gmail.com', NULL, '$2y$10$UP9XVS4wSEikfUwPJyVwWeovziYNbMN0PQju9xoHYT0SAaUOnQKKW', '1234257891', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-09T07:14:58.776722Z\"}]', 1, NULL, NULL, NULL, '2023-09-09 04:32:33', NULL),
(9, 'nguyenvana@gmail.com', 'nguyenvana@gmail.com', NULL, '$2y$10$yXPAF0thiWT3Y9LdDZcmwe1rpw0edNKxd69xzYAbbnGNI4JYfAdKi', '1234567890', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-09T14:12:23.720649Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-10T06:56:34.281261Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-10T10:37:37.326613Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-18T15:28:05.958253Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-18T16:12:25.057894Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-19T09:26:08.186330Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-20T09:54:45.265199Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-20T14:55:44.740529Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-20T15:02:38.240330Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-22T17:59:19.553843Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-02T04:29:06.185058Z\"}]', 0, NULL, '2023-09-10__de-men-phieu-luu-ky.jpg', NULL, '2023-09-09 04:44:35', '2023-09-10 07:05:01'),
(10, 'nguyenvanc@gmail.com', 'nguyenvanc@gmail.com', NULL, '$2y$10$0oiB30zG/KloY1bXNHpWCu9zlpkssGCfKeupTDLnOV6j4ifXGvNfe', '1234567899', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-20T14:56:01.877101Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-23T18:20:04.227617Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-24T07:55:22.297132Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-25T20:38:07.173229Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-25T20:48:41.972640Z\"}]', 0, NULL, NULL, NULL, '2023-09-09 14:31:53', NULL),
(11, 'thuannguyenvtfh@gmail.com', 'thuannguyenvtfh@gmail.com', NULL, '$2y$10$uwuDcO/BxdkhrNAgHc3QR.95qUR9l6ApgfWzdHNmo59YlMl438jLG', '1234567892', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-18T15:52:14.575078Z\"}]', 0, NULL, NULL, NULL, '2023-09-18 15:44:32', NULL),
(12, 'Nguyễn Văn Thuận', 'ngvanthuanit@gmail.com', NULL, '$2y$10$di/6EKk9shxlMa7Eti/rIehulHDlmAnIrc0maLv0qLxL7CBL3aX3u', '0369848423', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-20T15:50:28.116788Z\"}]', 1, NULL, '2023-09-20__admin.jpg', NULL, '2023-09-20 14:57:05', '2023-09-20 15:00:24'),
(13, 'Nguyễn Văn T', 'nvt@gmail.com', NULL, '$2y$10$.TCAGfHj.1v76aVVj2UCD.ljZlJRdlUB0X.Jtc4wl9aOc1holkRaq', '0369849852', 0, NULL, 0, NULL, NULL, NULL, '2023-10-02 05:26:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(2, 1, 5),
(3, 2, 5),
(1, 6, 6),
(5, 8, 8),
(7, 8, 9),
(4, 9, 8),
(8, 10, 9),
(11, 11, 9),
(9, 11, 12),
(10, 12, 12),
(12, 13, 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  ADD KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
