<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Báo cáo lượt thích</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        /* Body nền tối gradient */
        body {
            background: linear-gradient(135deg, #1f1f1f 0%, #3a3a3a 100%);
            font-family: "Segoe UI", Arial, sans-serif;
            min-height: 100vh;
            padding: 40px 20px;
        }

        /* Tiêu đề báo cáo */
        h2 {
            color: #f0f0f0;
            text-align: center;
            font-size: 32px;
            font-weight: 800;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
            margin-bottom: 40px;
        }

        /* Card chứa bảng */
        .card {
            border-radius: 20px;
            background: linear-gradient(145deg, #1c1c1c, #2c2c2c);
            box-shadow: 0 15px 40px rgba(0,0,0,0.5);
            padding: 20px;
        }

        /* Bảng hoành tráng */
        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            color: #fff;
            font-weight: 500;
        }

        thead.table-dark {
            background: linear-gradient(90deg, #333, #111) !important;
            color: #fff;
            font-weight: 700;
            font-size: 16px;
            text-align: center;
        }

        thead.table-dark th {
            border: none;
            padding: 12px;
        }

        tbody tr {
            background: #2a2a2a;
            transition: transform 0.3s, box-shadow 0.3s, background 0.3s;
            border-radius: 10px;
        }

        tbody tr:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.6);
            background: #3a3a3a;
        }

        tbody td {
            padding: 12px;
            vertical-align: middle;
        }

        .text-muted {
            color: #bbbbbb !important;
        }

        /* Nút quay về */
        .btn-back {
            margin-top: 20px;
            display: inline-block;
            background: linear-gradient(90deg, #444, #111);
            color: #fff;
            font-weight: 700;
            border-radius: 12px;
            padding: 12px 20px;
            text-decoration: none;
            transition: all 0.4s ease;
            box-shadow: 0 6px 15px rgba(0,0,0,0.4);
        }

        .btn-back:hover {
            background: linear-gradient(90deg, #666, #222);
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 10px 25px rgba(0,0,0,0.6);
            color: #ffd700;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>BÁO CÁO LƯỢT THÍCH (FAVORITE REPORT)</h2>

        <div class="card shadow">
            <div class="card-body p-0">
                <table class="table table-hover align-middle mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>Video title</th>
                            <th>Người thích</th>
                            <th>Ngày thích</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="fav" items="${favorites}" varStatus="loop">
                            <tr>
                                <td class="text-center">${loop.index + 1}</td>
                                <td>${fav.video.title}</td>
                                <td>${fav.user.fullname}</td>
                                <td><fmt:formatDate value="${fav.likeDate}" pattern="dd/MM/yyyy"/></td>
                            </tr>
                        </c:forEach>

                        <c:if test="${empty favorites}">
                            <tr>
                                <td colspan="4" class="text-center text-muted">
                                    Không có dữ liệu lượt thích nào được tìm thấy.
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>

       
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

