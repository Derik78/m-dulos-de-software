import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/createUser")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String description = request.getParameter("description");
        String seeking = request.getParameter("seeking");
        String gender = request.getParameter("gender");

        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "INSERT INTO usuarios (first_name, last_name, email, password, description, seeking, gender) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, password);
            statement.setString(5, description);
            statement.setString(6, seeking);
            statement.setString(7, gender);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("home.jsp"); // Redirige a la página de inicio
    }
}