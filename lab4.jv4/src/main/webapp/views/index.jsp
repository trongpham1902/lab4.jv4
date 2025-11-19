<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Bài Lab Java 4 - PolyOE</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<style>
/* Background toàn trang */
body {
	background: linear-gradient(135deg, #1f1f1f 0%, #3a3a3a 100%);
	font-family: "Segoe UI", Arial, sans-serif;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* Card chính */
.card {
	max-width: 600px;
	width: 100%;
	padding: 40px;
	background: linear-gradient(145deg, #1c1c1c, #2c2c2c);
	border-radius: 20px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.5);
	color: #fff;
	text-align: center;
}

.title {
	font-size: 32px;
	font-weight: 800;
	color: #f0f0f0;
	text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
}

.text-muted {
	color: #bbbbbb !important;
	font-size: 16px;
}

/* Nút hoành tráng */
.btn-dark-gray {
	background: linear-gradient(90deg, #444, #111);
	color: #fff;
	font-weight: 700;
	font-size: 20px;
	border-radius: 12px;
	padding: 18px 0;
	width: 100%;
	transition: all 0.4s ease;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.4);
}

.btn-dark-gray:hover {
	background: linear-gradient(90deg, #666, #222);
	transform: translateY(-3px) scale(1.02);
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.6);
	color: #ffd700;
}

/* Chú thích nút */
.note {
	font-size: 14px;
	color: #ccc;
	margin-top: 6px;
	text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
}

/* Khoảng cách giữa các nút */
.d-grid>div {
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="card">
		<h2 class="title mb-3">Bài Lab Java 4 - PolyOE</h2>
		<p class="text-muted mb-4">Chọn một chức năng để xem:</p>

		<div class="d-grid gap-4">
			<div>
				<a href="${pageContext.request.contextPath}/profile"
					class="btn btn-dark-gray"> Bài 3: Trang Video yêu thích </a>
				<div class="note">(Hiển thị video anh "Nguyễn Văn Tèo" đã
					thích)</div>
			</div>

			<div>
				<a href="${pageContext.request.contextPath}/favorite-report"
					class="btn btn-dark-gray"> Bài 4: Thống kê Video </a>
				<div class="note">(Hiển thị danh sách tất cả video đã được yêu
					thích)</div>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/share-report"class="btn btn-dark-gray"> Bài 1-Lab4: Thống kê
					Chia sẻ dùng JPQL </a>

				<div class="note">(Hiển thị tổng hợp số lượt chia sẻ, ngày
					đầu, ngày cuối)</div>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/login" class="btn btn-dark-gray">  Bài 2-Lab4: Đăng nhập</a>

				<div class="note">(Đăng nhập bằng ID hoặc Email)</div>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/video-search" class="btn btn-dark-gray"> Tìm kiếm video</a>

			</div>
		</div>
	</div>
</body>
</html>

