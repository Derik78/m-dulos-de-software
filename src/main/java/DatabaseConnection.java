import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/matchm"; // Cambia el host y el puerto si es necesario
    private static final String USER = "tu_usuario"; // Cambia esto por tu usuario de MySQL
    private static final String PASSWORD = "tu_contraseña"; // Cambia esto por tu contraseña de MySQL

    // Método para obtener la conexión a la base de datos
    public static Connection getConnection() {
        Connection connection = null;
        try {
            // Establece la conexión
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conectado a la base de datos MySQL");
        } catch (SQLException e) {
            System.err.println("Error al conectar a la base de datos: " + e.getMessage());
        }
        return connection; // Devuelve la conexión
    } }
