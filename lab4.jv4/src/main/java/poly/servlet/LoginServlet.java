package poly.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import poly.dao.UserDAOImpl;
import poly.entity.User;

import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	UserDAOImpl userDAO = new UserDAOImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. Lấy thông tin từ form
		String uidOrEmail = request.getParameter("usernameOrEmail");
		String password = request.getParameter("password");

		// 2. Gọi DAO để tìm user (bằng ID hoặc Email)
		// Đây chính là phần được hướng dẫn trong hình ảnh
		User user = userDAO.findByIdOrEmail(uidOrEmail);

		// 3. Kiểm tra
		if (user == null) {
			// Trường hợp: Không tìm thấy User
			request.setAttribute("errorMessage", "Sai tài khoản hoặc email!");
			request.getRequestDispatcher("/views/login.jsp").forward(request, response);

		} else if (!user.getPassword().equals(password)) {
			// Trường hợp: Tìm thấy User nhưng sai mật khẩu
			request.setAttribute("errorMessage", "Sai mật khẩu!");
			request.getRequestDispatcher("/views/login.jsp").forward(request, response);

		} else {
			// 4. Đăng nhập thành công
			// Lưu thông tin user vào Session
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", user); // Lưu user object
			session.setAttribute("username", user.getFullname()); // Lưu tên để chào

			// Thay vì chuyển về index.jsp, chuyển đến trang success
			response.sendRedirect(request.getContextPath() + "/views/login-success.jsp");
		}
	}
}
