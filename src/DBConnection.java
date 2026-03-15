import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/coffincart_desktop";
    private static final String USER = "root";
    private static final String PASS = "";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USER, PASS);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(
                null,
                "Database connection failed:\n" + e.getMessage(),
                "DB Error",
                JOptionPane.ERROR_MESSAGE
            );
        }
        return conn;
    }

    // Optional: run this alone to test on school PC
    public static void main(String[] args) {
        Connection conn = getConnection();
        if (conn != null) {
            JOptionPane.showMessageDialog(null, "✅ Database connected successfully!");
        }
    }
}

