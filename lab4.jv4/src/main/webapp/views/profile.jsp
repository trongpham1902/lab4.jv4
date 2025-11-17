<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Trang cá nhân</title>
    <!-- Link Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- CSS tùy chỉnh -->
    <style>
        body {
            background: linear-gradient(135deg, #1f1f1f 0%, #3a3a3a 100%);
            font-family: "Segoe UI", Arial, sans-serif;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .card-user {
            max-width: 700px;
            width: 100%;
            padding: 40px;
            background: linear-gradient(145deg, #1c1c1c, #2c2c2c);
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.5);
            color: #fff;
            text-align: center;
        }

        .card-user h1 {
            font-size: 36px;
            font-weight: 800;
            color: #f0f0f0;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
        }

        .card-user h3 {
            font-size: 24px;
            margin-top: 30px;
            margin-bottom: 20px;
            color: #cccccc;
        }

        .list-group-item {
            background: #2a2a2a;
            border: none;
            margin-bottom: 10px;
            border-radius: 10px;
            color: #fff;
            font-weight: 500;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .list-group-item:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.5);
            background: #3a3a3a;
        }

        .text-muted {
            color: #bbbbbb !important;
        }

        .text-danger {
            color: #ff6666 !important;
            font-weight: 600;
        }

        .btn-back {
            margin-top: 20px;
            background: linear-gradient(90deg, #444, #111);
            color: #fff;
            font-weight: 700;
            border-radius: 12px;
            padding: 12px 20px;
            text-decoration: none;
            display: inline-block;
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
    <div class="card-user">
        <c:if test="${not empty user}">
            <h1>${user.fullname}</h1>
            <h3>Các video đã yêu thích</h3>

            <ul class="list-group favorite-list">
                <c:forEach var="fav" items="${user.favorites}">
                    <li class="list-group-item">${fav.video.title}</li>
                </c:forEach>

                <c:if test="${empty user.favorites}">
                    <li class="list-group-item text-muted">
                        Bạn chưa thích video nào.
                    </li>
                </c:if>
            </ul>

           
        </c:if>

        <c:if test="${empty user}">
            <p class="text-danger mt-3">Không tìm thấy người dùng.</p>
            
        </c:if>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
