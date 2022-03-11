package web.cepp.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Cus_Connection {
	public static Connection getConnection()
    {
        Connection connection = null;
        try {
        	String dbName = "fillup";
            String driverClass = "com.mysql.cj.jdbc.Driver";
            String dbUrl = "jdbc:mysql://localhost/" + dbName +  "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String dbUser = "root";
            String dbPass = "root";
            
            Class.forName(driverClass);
            connection = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            System.out.println("Connected_Connection");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void close(ResultSet resultSet) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void close(PreparedStatement preparedStatement) {
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void close(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public static void main(String args[]) {
    	Connection connection = getConnection();
    }
}
