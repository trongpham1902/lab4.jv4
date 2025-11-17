<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
    <title>Thống kê Chia sẻ</title>

    <style>
        /* --- Toàn trang --- */
        body {
            background: linear-gradient(135deg, #1f1f1f 0%, #3a3a3a 100%);
            font-family: "Segoe UI", Arial, sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        /* --- Container chính --- */
        .container {
            max-width: 900px;
            margin: 60px auto;
            padding: 40px;
            background: linear-gradient(145deg, #1c1c1c, #2c2c2c);
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.5);
        }

        /* --- Tiêu đề --- */
        h2 {
            text-align: center;
            font-size: 32px;
            font-weight: 800;
            margin-bottom: 30px;
            color: #f0f0f0;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
        }

        /* --- Bảng báo cáo --- */
        .report-table {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.4);
        }

        .report-table thead {
            background: linear-gradient(90deg, #444, #222);
        }

        .report-table th {
            padding: 15px;
            text-align: left;
            font-weight: 700;
            font-size: 16px;
            color: #ffd700;
            border-bottom: 2px solid #333;
        }

        .report-table td {
            padding: 14px;
            font-size: 15px;
            color: #ddd;
            border-bottom: 1px solid #333;
        }

        /* --- Hiệu ứng dòng --- */
        .report-table tbody tr:hover {
            background: rgba(255, 255, 255, 0.06);
            transition: 0.25s ease;
        }

        /* --- Dòng rỗng --- */
        .report-table td[colspan] {
            color: #bbb;
            font-style: italic;
        }

        /* --- Link về trang chủ --- */
        .container a {
            color: #ffd700;
            font-weight: 600;
            text-decoration: none;
            transition: 0.3s;
        }

        .container a:hover {
            color: #fff;
            text-shadow: 0 0 8px #ffd700;
        }
    </style>
</head>

<body>

    <div class="container">
        <h2>Thống kê thông tin chia sẻ</h2>

        <table class="report-table">
            <thead>
                <tr>
                    <th>Tiêu đề video</th>
                    <th>Số lượt chia sẻ</th>
                    <th>Ngày chia sẻ đầu tiên</th>
                    <th>Ngày chia sẻ cuối cùng</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="item" items="${reportList}">
                    <tr>
                        <td>${item.videoTitle}</td>
                        <td>${item.shareCount}</td>
                        <td><fmt:formatDate value="${item.firstDate}" pattern="dd/MM/yyyy" /></td>
                        <td><fmt:formatDate value="${item.lastDate}" pattern="dd/MM/yyyy" /></td>
                    </tr>
                </c:forEach>

                <c:if test="${empty reportList}">
                    <tr>
                        <td colspan="4" style="text-align: center;">Chưa có video nào được chia sẻ.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>

    </div>

</body>
</html>
