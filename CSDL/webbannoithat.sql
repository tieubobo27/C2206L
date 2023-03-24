-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2020 lúc 09:14 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbannoithat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'khang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`, `admin_id`) VALUES
(1, 'Xu hướng phong cách thiết kế nội thất 2020 nào sẽ lên ngôi?', 'Một năm nữa lại đi qua, bạn muốn hô biến căn nhà của mình trở nên xinh lung linh, cuốn hút nhưng chưa tìm được phong cách thiết kế phù hợp hay bạn muốn tham khảo những phong cách thiết kế nội thất đang thịnh hành hiện nay. Hãy theo dõi các xu hướng nội thất 2020 được dự đoán sẽ trở thành xu hướng ở bài viết bên dưới cùng BLUBBER ngay nào.', '1. Phong cách công nghiệp\r\nPhong cách công nghiệp được hiểu đơn giản là sử dụng những vật liệu thô sơ, mộc mạc nhằm gợi nhớ đến không gian sản xuất công nghiệp thời kỳ hưng thịnh. Điểm nhấn chính của phong cách này là những vật liệu thô, đơn giản làm toát lên vẻ đẹp mạnh mẽ, khỏe khoắn của nội thất.\r\n\r\nKhông gian mở sẽ là cách bố trí tối ưu cho phong cách này. Bạn có thể tạo được cảm giác rộng lớn ngay cả trong không gian nhỏ bằng cách chỉnh sửa số phòng có trong không gian đó, giữ cửa sổ trần và đơn giản hóa nội thất trong phòng.\r\n\r\n2. Nội thất bọc nhung\r\nMặc dù phong cách bọc nhung từng được xem là lạc hậu, nhưng cũng như bao thị trường khác các hiện tượng, xu hướng cứ thay đổi liên tục. Do đó, hiện nay những món đồ bọc nhung đã dần lấy lại được vị thế vốn có và được dự đoán là sẽ trở thành hiện tượng trong năm 2020 trong thiết kế nội thất.\r\nNhững món đồ bọc nhung với vẻ đẹp diễm lệ và được cải tiến trở nên sang trọng, đẳng cấp hơn là sự lựa chọn hoàn hảo cho không gian phòng khách trong thiết kế nội thất căn hộ 90m2 của bạn. Ngoài ra, chúng còn có thể được ứng dụng trong thiết kế nội thất văn phòng cao cấp. Có rất nhiều màu sắc đa dạng để bạn có nhiều sự lựa chọn như màu đỏ đun, màu hồng, màu xám, màu vàng dầu,…', 2, 'anhtin2.jpg', 0),
(2, 'XU HƯỚNG NỘI THẤT PHÒNG KHÁCH 2020 PHÒNG KHÁCH ĐẸP 2020', 'Phòng khách thường là nơi sinh hoạt cũng như là nơi đầu tiên ta nhìn thất khi bước vào nhà, chính vì thế mà nội thất phòng khách cũng được nhiều người chú trọng. Một trong những điều được các gia đình và các kiến trúc sư quan tâm khi thiết kế đó chính là xu hướng mới nhất nội thất phòng khách để có thể bố trí nội thất làm sao cho thật phù hợp với thẩm mỹ đang được ưa chuộng hiện nay.\r\n\r\nHiểu được mối quan tâm của khách hàng nên chính vì thế mà hôm nay Nắng Xanh xin giới thiệu với các bạn những phong cách thiết kế nội thất phòng khách được nhiều gia đình ưa chuộng nhất hiện nay để các bạn có thể chọn được phong cách phù hợp với ngôi nhà và phòng khách của mình.', 'Thiết kế nội thất phòng khách hiện đại sang trọng với gam màu sáng\r\n\r\nĐối với phòng khách, việc sử dụng các gam màu sáng sẽ là xu hướng được ưa chuộng nhất trong năm 2019 này. Các gam màu nhẹ nhàng kết hợp cùng cửa kính lớn sẽ tạo ra hiệu ứng một không gian nội thất phòng khách hiện đại sang trọng.\r\n\r\nThiết kế nội thất phòng khách đẹp luôn sử dụng màu sắc một cách trung lập, thường thì màu trắng sẽ làm nền chủ đạo sau đó thêm một mảng màu nổi bật cho mảng tường đã được lựa chọn như phía sau kệ ti vi, sofa,… để làm điểm nhấn đặc biệt khi trang trí nội thất phòng khách.\r\n\r\nThiết kế nội thất phòng khách hiện đại theo phong cách đơn giản\r\n\r\nThiết kế nội thất phòng khách hiện đại luôn ưu ái các món đồ nội thất đơn giản giúp gia chủ có thể tự do sáng tạo, bài trí theo diện tích và sở thích của bản thân. Các mẫu nội thất phòng khách đẹp luôn khiến gia chủ thích thú và hài lòng chính là sự tiện nghi, hài hòa giữa các món đồ nội thất, sự mềm mại, thanh lịch mà không quá cầu kỳ về các chi tiết cũng như mẫu mã.', 1, 'anhtin1.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Phòng Khách'),
(2, 'Phòng Ngủ'),
(3, 'Phòng Ăn'),
(23, 'Phòng Tắm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`, `admin_id`) VALUES
(1, 'Xu hướng phòng khách', 0),
(2, 'Xu hướng nội thất năm 2020', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(77, 26, 1, '2900', 63, '2020-12-10 06:42:12', 1, 2),
(78, 27, 1, '9546', 63, '2020-12-11 03:42:16', 1, 1),
(79, 23, 2, '9546', 63, '2020-12-11 03:42:16', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(18, 26, 1, '2900', '2020-12-10 06:42:12', 63, 1, 2),
(19, 27, 1, '9546', '2020-12-11 03:42:16', 63, 1, 1),
(20, 23, 2, '9546', '2020-12-11 03:42:16', 63, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(80, 'Phòng Tắm 5', 26, '35000000', 'phongtam5 (1).jpg', 4),
(81, 'Phòng Tắm 4', 25, '35000000', 'phongtam4 (1).jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(63, 'khang', '0989097027', 'ha noi', 'giao gấp', 'khang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL,
  `sanpham_anhchitiet` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`, `sanpham_anhchitiet`) VALUES
(22, 23, 'Phòng Tắm 1', 'Một phòng tắm đẹp đơn giản mà đầy cuốn hút. Điểm nhấn độc lạ cho thiết kế nhà này chính là chiếc đèn vàng đầy tinh tế phủ sáng khắp không gian và những đồ vật xung quanh. Gia chủ cũng không quên sử dụng một chậu cây xanh và những chiếc cuộn khăn nhỏ xinh nhằm tô điểm thêm chút sắc màu cho căn phòng.', 'hững thiết kế theo chủ nghĩa tối giản luôn đem lại cho người nhìn một cảm giác hài lòng và thoải mái đến ngỡ ngàng. Sự đơn giản khiến người ta liên tưởng tới một môi trường sạch sẽ, gọn gàng, một khởi đầu hoàn hảo cho ngày mới đang tới gần.', '15000000', '12000000', 0, 0, 200, 'phongtam1 (1).jpg', 'phongtam1.jpg'),
(23, 23, 'Phòng Tắm 2', 'Một phòng tắm đẹp đơn giản mà đầy cuốn hút. Điểm nhấn độc lạ cho thiết kế nhà này chính là chiếc đèn vàng đầy tinh tế phủ sáng khắp không gian và những đồ vật xung quanh. Gia chủ cũng không quên sử dụng một chậu cây xanh và những chiếc cuộn khăn nhỏ xinh nhằm tô điểm thêm chút sắc màu cho căn phòng.', 'hững thiết kế theo chủ nghĩa tối giản luôn đem lại cho người nhìn một cảm giác hài lòng và thoải mái đến ngỡ ngàng. Sự đơn giản khiến người ta liên tưởng tới một môi trường sạch sẽ, gọn gàng, một khởi đầu hoàn hảo cho ngày mới đang tới gần.', '25000000', '17000000', 0, 0, 200, 'phongtam2 (1).jpg', 'phongtam2.jpg'),
(24, 23, 'Phòng Tắm 3', 'Một phòng tắm đẹp đơn giản mà đầy cuốn hút. Điểm nhấn độc lạ cho thiết kế nhà này chính là chiếc đèn vàng đầy tinh tế phủ sáng khắp không gian và những đồ vật xung quanh. Gia chủ cũng không quên sử dụng một chậu cây xanh và những chiếc cuộn khăn nhỏ xinh nhằm tô điểm thêm chút sắc màu cho căn phòng.', 'hững thiết kế theo chủ nghĩa tối giản luôn đem lại cho người nhìn một cảm giác hài lòng và thoải mái đến ngỡ ngàng. Sự đơn giản khiến người ta liên tưởng tới một môi trường sạch sẽ, gọn gàng, một khởi đầu hoàn hảo cho ngày mới đang tới gần.', '40000000', '25000000', 0, 0, 200, 'phongtam3 (1).jpg', 'phongtam3.jpg'),
(25, 23, 'Phòng Tắm 4', 'Một phòng tắm đẹp đơn giản mà đầy cuốn hút. Điểm nhấn độc lạ cho thiết kế nhà này chính là chiếc đèn vàng đầy tinh tế phủ sáng khắp không gian và những đồ vật xung quanh. Gia chủ cũng không quên sử dụng một chậu cây xanh và những chiếc cuộn khăn nhỏ xinh nhằm tô điểm thêm chút sắc màu cho căn phòng.', 'hững thiết kế theo chủ nghĩa tối giản luôn đem lại cho người nhìn một cảm giác hài lòng và thoải mái đến ngỡ ngàng. Sự đơn giản khiến người ta liên tưởng tới một môi trường sạch sẽ, gọn gàng, một khởi đầu hoàn hảo cho ngày mới đang tới gần.', '50000000', '35000000', 0, 0, 200, 'phongtam4 (1).jpg', 'phongtam4.jpg'),
(26, 23, 'Phòng Tắm 5', 'Một phòng tắm đẹp đơn giản mà đầy cuốn hút. Điểm nhấn độc lạ cho thiết kế nhà này chính là chiếc đèn vàng đầy tinh tế phủ sáng khắp không gian và những đồ vật xung quanh. Gia chủ cũng không quên sử dụng một chậu cây xanh và những chiếc cuộn khăn nhỏ xinh nhằm tô điểm thêm chút sắc màu cho căn phòng.', 'hững thiết kế theo chủ nghĩa tối giản luôn đem lại cho người nhìn một cảm giác hài lòng và thoải mái đến ngỡ ngàng. Sự đơn giản khiến người ta liên tưởng tới một môi trường sạch sẽ, gọn gàng, một khởi đầu hoàn hảo cho ngày mới đang tới gần.', '40000000', '35000000', 0, 0, 200, 'phongtam5 (1).jpg', 'phongtam5.jpg'),
(27, 23, 'Phòng Tắm 6', 'Một phòng tắm đẹp đơn giản mà đầy cuốn hút. Điểm nhấn độc lạ cho thiết kế nhà này chính là chiếc đèn vàng đầy tinh tế phủ sáng khắp không gian và những đồ vật xung quanh. Gia chủ cũng không quên sử dụng một chậu cây xanh và những chiếc cuộn khăn nhỏ xinh nhằm tô điểm thêm chút sắc màu cho căn phòng.', 'hững thiết kế theo chủ nghĩa tối giản luôn đem lại cho người nhìn một cảm giác hài lòng và thoải mái đến ngỡ ngàng. Sự đơn giản khiến người ta liên tưởng tới một môi trường sạch sẽ, gọn gàng, một khởi đầu hoàn hảo cho ngày mới đang tới gần.', '40000000', '2500000', 0, 0, 200, 'phongtam6 (1).jpg', 'phongtam6.jpg'),
(29, 3, 'Phòng Ăn 1', 'Cũng như các phòng khác, phòng ăn nên xây theo dạng hình vuông hoặc chữ nhật, không thiết kế dạng lồi hay lõm vì như thế sẽ làm khiếm khuyết đi vận may của gia đình. Bàn ăn nên đặt ngay chính giữa phòng để làm điểm nhấn và không gian được hài hòa.', 'Nếu như bếp ăn là nơi “thổi hồn” cho những món ăn thì phòng ăn chính là nơi “giữ lửa” hạnh phúc và yêu thương. Bữa cơm gia đình chính là sợi dây vô hình thắt chặt mọi người trong gia đình. Phòng ăn đơn giản chỉ là được trang bị bằng một bàn ăn lớn và một số ghế phục vụ cho hoạt động ăn uống.', '17000000', '12000000', 0, 0, 200, 'phongan11 (1).jpg', 'phongan11.jpg'),
(30, 3, 'Phòng Ăn 2', 'Cũng như các phòng khác, phòng ăn nên xây theo dạng hình vuông hoặc chữ nhật, không thiết kế dạng lồi hay lõm vì như thế sẽ làm khiếm khuyết đi vận may của gia đình. Bàn ăn nên đặt ngay chính giữa phòng để làm điểm nhấn và không gian được hài hòa.', 'Nếu như bếp ăn là nơi “thổi hồn” cho những món ăn thì phòng ăn chính là nơi “giữ lửa” hạnh phúc và yêu thương. Bữa cơm gia đình chính là sợi dây vô hình thắt chặt mọi người trong gia đình. Phòng ăn đơn giản chỉ là được trang bị bằng một bàn ăn lớn và một số ghế phục vụ cho hoạt động ăn uống.', '20000000', '17000000', 0, 0, 200, 'phongan12 (1).jpg', 'phongan12.jpg'),
(31, 3, 'Phòng Ăn 3', 'Cũng như các phòng khác, phòng ăn nên xây theo dạng hình vuông hoặc chữ nhật, không thiết kế dạng lồi hay lõm vì như thế sẽ làm khiếm khuyết đi vận may của gia đình. Bàn ăn nên đặt ngay chính giữa phòng để làm điểm nhấn và không gian được hài hòa.', 'Nếu như bếp ăn là nơi “thổi hồn” cho những món ăn thì phòng ăn chính là nơi “giữ lửa” hạnh phúc và yêu thương. Bữa cơm gia đình chính là sợi dây vô hình thắt chặt mọi người trong gia đình. Phòng ăn đơn giản chỉ là được trang bị bằng một bàn ăn lớn và một số ghế phục vụ cho hoạt động ăn uống.', '40000000', '2500000', 0, 0, 200, 'phongan13 (1).jpg', 'phongan13.jpg'),
(32, 3, 'Phòng Ăn 4', 'Cũng như các phòng khác, phòng ăn nên xây theo dạng hình vuông hoặc chữ nhật, không thiết kế dạng lồi hay lõm vì như thế sẽ làm khiếm khuyết đi vận may của gia đình. Bàn ăn nên đặt ngay chính giữa phòng để làm điểm nhấn và không gian được hài hòa.', 'Nếu như bếp ăn là nơi “thổi hồn” cho những món ăn thì phòng ăn chính là nơi “giữ lửa” hạnh phúc và yêu thương. Bữa cơm gia đình chính là sợi dây vô hình thắt chặt mọi người trong gia đình. Phòng ăn đơn giản chỉ là được trang bị bằng một bàn ăn lớn và một số ghế phục vụ cho hoạt động ăn uống.', '5000000', '4000000', 0, 0, 200, 'phongan14 (1).jpg', 'phongan14.jpg'),
(33, 3, 'Phòng Ăn 5', 'Cũng như các phòng khác, phòng ăn nên xây theo dạng hình vuông hoặc chữ nhật, không thiết kế dạng lồi hay lõm vì như thế sẽ làm khiếm khuyết đi vận may của gia đình. Bàn ăn nên đặt ngay chính giữa phòng để làm điểm nhấn và không gian được hài hòa.', 'Nếu như bếp ăn là nơi “thổi hồn” cho những món ăn thì phòng ăn chính là nơi “giữ lửa” hạnh phúc và yêu thương. Bữa cơm gia đình chính là sợi dây vô hình thắt chặt mọi người trong gia đình. Phòng ăn đơn giản chỉ là được trang bị bằng một bàn ăn lớn và một số ghế phục vụ cho hoạt động ăn uống.', '25000000', '12000000', 0, 0, 200, 'phongan15 (1).jpg', 'phongan15.jpg'),
(34, 3, 'Phòng Ăn 6', 'Cũng như các phòng khác, phòng ăn nên xây theo dạng hình vuông hoặc chữ nhật, không thiết kế dạng lồi hay lõm vì như thế sẽ làm khiếm khuyết đi vận may của gia đình. Bàn ăn nên đặt ngay chính giữa phòng để làm điểm nhấn và không gian được hài hòa.', 'Nếu như bếp ăn là nơi “thổi hồn” cho những món ăn thì phòng ăn chính là nơi “giữ lửa” hạnh phúc và yêu thương. Bữa cơm gia đình chính là sợi dây vô hình thắt chặt mọi người trong gia đình. Phòng ăn đơn giản chỉ là được trang bị bằng một bàn ăn lớn và một số ghế phục vụ cho hoạt động ăn uống.', '40000000', '35000000', 0, 0, 1000, 'phongan16 (1).jpg', 'phongan16.jpg'),
(35, 2, 'Phòng Ngủ 1', 'Vì phòng ngủ hiện đại dễ ứng dụng nên bạn có thể sử dụng phong cách này cho mọi không gian từ diện tích lớn đến diện tích nhỏ. Là phong cách được sử dụng khá phổ biến nhưng để thiết kế nên những mẫu phòng ngủ hiện đại đẹp, chất lượng phù hợp sở thích đa dạng của ngườ...', 'Ngoài các xu hướng thiết kế nội thất theo phong cách: cổ điển, tân cổ điển....thì xu hướng thiết kế nội thất phòng ngủ theo phong cách hiện đại nhận được sự quan tâm của rất nhiều đối tượng khách hàng.', '14000000', '12000000', 0, 0, 2000, 'phongngu11 (1).jpg', 'phongngu11.jpg'),
(36, 2, 'Phòng Ngủ 2', 'Vì phòng ngủ hiện đại dễ ứng dụng nên bạn có thể sử dụng phong cách này cho mọi không gian từ diện tích lớn đến diện tích nhỏ. Là phong cách được sử dụng khá phổ biến nhưng để thiết kế nên những mẫu phòng ngủ hiện đại đẹp, chất lượng phù hợp sở thích đa dạng của ngườ...', 'Ngoài các xu hướng thiết kế nội thất theo phong cách: cổ điển, tân cổ điển....thì xu hướng thiết kế nội thất phòng ngủ theo phong cách hiện đại nhận được sự quan tâm của rất nhiều đối tượng khách hàng.', '40000000', '2500000', 0, 0, 2000, 'phongngu12 (1).jpg', 'phongngu12.jpg'),
(37, 2, 'Phòng Ngủ 3', 'Vì phòng ngủ hiện đại dễ ứng dụng nên bạn có thể sử dụng phong cách này cho mọi không gian từ diện tích lớn đến diện tích nhỏ. Là phong cách được sử dụng khá phổ biến nhưng để thiết kế nên những mẫu phòng ngủ hiện đại đẹp, chất lượng phù hợp sở thích đa dạng của ngườ...', 'Ngoài các xu hướng thiết kế nội thất theo phong cách: cổ điển, tân cổ điển....thì xu hướng thiết kế nội thất phòng ngủ theo phong cách hiện đại nhận được sự quan tâm của rất nhiều đối tượng khách hàng.', '25000000', '17000000', 0, 0, 2000, 'phongngu13 (1).jpg', 'phongngu13.jpg'),
(38, 2, 'Phòng Ngủ 4 ', 'Vì phòng ngủ hiện đại dễ ứng dụng nên bạn có thể sử dụng phong cách này cho mọi không gian từ diện tích lớn đến diện tích nhỏ. Là phong cách được sử dụng khá phổ biến nhưng để thiết kế nên những mẫu phòng ngủ hiện đại đẹp, chất lượng phù hợp sở thích đa dạng của ngườ...', 'Ngoài các xu hướng thiết kế nội thất theo phong cách: cổ điển, tân cổ điển....thì xu hướng thiết kế nội thất phòng ngủ theo phong cách hiện đại nhận được sự quan tâm của rất nhiều đối tượng khách hàng.', '17000000', '12000000', 0, 0, 2000, 'phongngu14 (1).jpg', 'phongngu14.jpg'),
(39, 2, 'Phòng Ngủ 5', 'Vì phòng ngủ hiện đại dễ ứng dụng nên bạn có thể sử dụng phong cách này cho mọi không gian từ diện tích lớn đến diện tích nhỏ. Là phong cách được sử dụng khá phổ biến nhưng để thiết kế nên những mẫu phòng ngủ hiện đại đẹp, chất lượng phù hợp sở thích đa dạng của ngườ...', 'Ngoài các xu hướng thiết kế nội thất theo phong cách: cổ điển, tân cổ điển....thì xu hướng thiết kế nội thất phòng ngủ theo phong cách hiện đại nhận được sự quan tâm của rất nhiều đối tượng khách hàng.', '20000000', '17000000', 0, 0, 2000, 'phongngu15 (1).jpg', 'phongngu15.jpg'),
(40, 2, 'Phòng Ngủ 6', 'Vì phòng ngủ hiện đại dễ ứng dụng nên bạn có thể sử dụng phong cách này cho mọi không gian từ diện tích lớn đến diện tích nhỏ. Là phong cách được sử dụng khá phổ biến nhưng để thiết kế nên những mẫu phòng ngủ hiện đại đẹp, chất lượng phù hợp sở thích đa dạng của ngườ...', 'Ngoài các xu hướng thiết kế nội thất theo phong cách: cổ điển, tân cổ điển....thì xu hướng thiết kế nội thất phòng ngủ theo phong cách hiện đại nhận được sự quan tâm của rất nhiều đối tượng khách hàng.', '20000000', '17000000', 0, 0, 2000, 'phongkhach6 (1).jpg', 'phongngu16.jpg'),
(41, 1, 'Phòng Khách 1', 'Không giống với những phong cách khác, thiết kế nội thất phòng khách đẹp theo phong cách hiện đại có phần đơn giản hơn, bớt rườm rà hơn, song vẫn thể hiện được sự tinh tế và trang nhã của cả căn phòng.', 'Thiết kế phòng khách đơn giản và hiện đại là xu hướng được ưa chuộng nhất hiện nay mang lại một không gian sống thoải mái lại đẹp cho mọi nhà. Cùng tham khảo một số xu hướng thiết kế phòng khách đẹp được ưa chuộng hiện nay để từ đó đưa ra ý tưởng thiết kế phòng khách cho gia đình mình ấn tượng nhất.', '40000000', '17000000', 0, 0, 2000, 'phongkhach1 (1).jpg', 'phongkhach1.jpg'),
(42, 1, 'Phòng Khách 2', 'Không giống với những phong cách khác, thiết kế nội thất phòng khách đẹp theo phong cách hiện đại có phần đơn giản hơn, bớt rườm rà hơn, song vẫn thể hiện được sự tinh tế và trang nhã của cả căn phòng.', 'Thiết kế phòng khách đơn giản và hiện đại là xu hướng được ưa chuộng nhất hiện nay mang lại một không gian sống thoải mái lại đẹp cho mọi nhà. Cùng tham khảo một số xu hướng thiết kế phòng khách đẹp được ưa chuộng hiện nay để từ đó đưa ra ý tưởng thiết kế phòng khách cho gia đình mình ấn tượng nhất.', '20000000', '17000000', 0, 0, 2000, 'phongkhach2 (1).jpg', 'phongkhach2.jpg'),
(43, 1, 'Phòng Khách 3', 'Không giống với những phong cách khác, thiết kế nội thất phòng khách đẹp theo phong cách hiện đại có phần đơn giản hơn, bớt rườm rà hơn, song vẫn thể hiện được sự tinh tế và trang nhã của cả căn phòng.', 'Thiết kế phòng khách đơn giản và hiện đại là xu hướng được ưa chuộng nhất hiện nay mang lại một không gian sống thoải mái lại đẹp cho mọi nhà. Cùng tham khảo một số xu hướng thiết kế phòng khách đẹp được ưa chuộng hiện nay để từ đó đưa ra ý tưởng thiết kế phòng khách cho gia đình mình ấn tượng nhất.', '25000000', '12000000', 0, 0, 2000, 'phongkhach3 (1).jpg', 'phongkhach3.jpg'),
(44, 1, 'Phòng Khách 4', 'Không giống với những phong cách khác, thiết kế nội thất phòng khách đẹp theo phong cách hiện đại có phần đơn giản hơn, bớt rườm rà hơn, song vẫn thể hiện được sự tinh tế và trang nhã của cả căn phòng.', 'Thiết kế phòng khách đơn giản và hiện đại là xu hướng được ưa chuộng nhất hiện nay mang lại một không gian sống thoải mái lại đẹp cho mọi nhà. Cùng tham khảo một số xu hướng thiết kế phòng khách đẹp được ưa chuộng hiện nay để từ đó đưa ra ý tưởng thiết kế phòng khách cho gia đình mình ấn tượng nhất.', '25000000', '14000000', 0, 0, 2000, 'phongkhach4 (1).jpg', 'phongkhach4.jpg'),
(45, 1, 'Phòng Khách 5', 'Không giống với những phong cách khác, thiết kế nội thất phòng khách đẹp theo phong cách hiện đại có phần đơn giản hơn, bớt rườm rà hơn, song vẫn thể hiện được sự tinh tế và trang nhã của cả căn phòng.', 'Thiết kế phòng khách đơn giản và hiện đại là xu hướng được ưa chuộng nhất hiện nay mang lại một không gian sống thoải mái lại đẹp cho mọi nhà. Cùng tham khảo một số xu hướng thiết kế phòng khách đẹp được ưa chuộng hiện nay để từ đó đưa ra ý tưởng thiết kế phòng khách cho gia đình mình ấn tượng nhất.', '40000000', '35000000', 0, 0, 2000, 'phongkhach5 (1).jpg', 'phongkhach5.jpg'),
(46, 1, 'Phòng Khách 6', 'Không giống với những phong cách khác, thiết kế nội thất phòng khách đẹp theo phong cách hiện đại có phần đơn giản hơn, bớt rườm rà hơn, song vẫn thể hiện được sự tinh tế và trang nhã của cả căn phòng.', 'Thiết kế phòng khách đơn giản và hiện đại là xu hướng được ưa chuộng nhất hiện nay mang lại một không gian sống thoải mái lại đẹp cho mọi nhà. Cùng tham khảo một số xu hướng thiết kế phòng khách đẹp được ưa chuộng hiện nay để từ đó đưa ra ý tưởng thiết kế phòng khách cho gia đình mình ấn tượng nhất.', '25000000', '17000000', 0, 0, 1000, 'phongkhach6 (1).jpg', 'phongkhach6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1,
  `slider_caption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_active`, `slider_caption`) VALUES
(4, 'anhnen41.jpg', 0, 'SALE UP TO 50%'),
(5, 'anhnen4.jpg', 1, 'SALE UP TO 50%'),
(6, 'anhnen5.jpg', 0, 'SALE UP TO 50%');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`),
  ADD KEY `danhmuctin_id` (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`),
  ADD KEY `khachhang_id` (`khachhang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`),
  ADD KEY `khachhang_id` (`khachhang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD CONSTRAINT `tbl_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tbl_baiviet` (`baiviet_id`),
  ADD CONSTRAINT `tbl_admin_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `tbl_danhmuc_tin` (`danhmuctin_id`);

--
-- Các ràng buộc cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `tbl_baiviet_ibfk_1` FOREIGN KEY (`danhmuctin_id`) REFERENCES `tbl_danhmuc_tin` (`danhmuctin_id`);

--
-- Các ràng buộc cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `tbl_donhang_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`),
  ADD CONSTRAINT `tbl_donhang_ibfk_2` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD CONSTRAINT `tbl_giaodich_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`),
  ADD CONSTRAINT `tbl_giaodich_ibfk_2` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `tbl_giohang_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`),
  ADD CONSTRAINT `tbl_giohang_ibfk_2` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
