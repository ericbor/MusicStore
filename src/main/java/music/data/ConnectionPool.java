package music.data;

import java.sql.*;
import javax.sql.DataSource;
import javax.naming.*;

public class ConnectionPool {

    public static final String HSQLDB = "com.mysql.jdbc.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/music";
    public static final String USER = "root";
    public static final String PASS = "pass";
    private static Connection conn;

    private static void init() {
        try {
            Class.forName(HSQLDB);
            conn = DriverManager.getConnection(URL, USER, PASS);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        if (conn != null){
            return conn;
        } else {
            init();
            return conn;
        }
    }

    public static void freeConnection(Connection c) {
        try {
            c.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
