package poly.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import poly.dao.UserDAO;
import poly.dao.UserDAOImpl;
import poly.entity.User;

import java.io.IOException;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    private UserDAO userDAO;

    public void init() {
        this.userDAO = new UserDAOImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User sessionUser = (User) session.getAttribute("currentUser");
        User user = null;

        if (sessionUser != null) {
            // Chỉ lấy userId nếu sessionUser tồn tại
            String userId = sessionUser.getId();
            user = userDAO.findById(userId);
        }

        // Đặt user vào request scope, có thể là null
        request.setAttribute("user", user);

        // Chuyển tiếp đến JSP
        request.getRequestDispatcher("/views/profile.jsp").forward(request, response);
    }

}
