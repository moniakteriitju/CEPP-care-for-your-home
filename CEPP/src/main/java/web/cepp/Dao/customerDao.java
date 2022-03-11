package web.cepp.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.cepp.Model.Customer;
import web.cepp.Model.UserInfo;
import web.cepp.utils.Cus_Connection;
import web.cepp.utils.DBConnectionManager;

public class customerDao {
	public static void insertQuery(int id, String Name, String Address, int Phone, int Plumber, int Carpentar, int Painter, int  Electrician) {
        String INSERT_USERS_SQL = "INSERT INTO form_table" +
            "  (id, Name, Address, Phone, Plumber, Carpentar, Painter, Electrician) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?)";

        int result = 0;

        //Class.forName("com.mysql.jdbc.Driver");
        
        Connection connection = Cus_Connection.getConnection();
		if (connection == null) {
			System.out.println("db not connected...1...!");
			return ;
		}
        
        try{

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL) ;
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, Name);
            preparedStatement.setString(3, Address);
            preparedStatement.setInt(4,Phone);
            preparedStatement.setInt(5, Plumber);
            preparedStatement.setInt(6, Carpentar);
            preparedStatement.setInt(7, Painter);
            preparedStatement.setInt(7, Electrician);

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            e.printStackTrace();
        }
       // return result;
    
}
/*
 * private void printSQLException(SQLException ex) { for (Throwable e: ex) { if
 * (e instanceof SQLException) { e.printStackTrace(System.err);
 * System.err.println("SQLState: " + ((SQLException) e).getSQLState());
 * System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
 * System.err.println("Message: " + e.getMessage()); Throwable t =
 * ex.getCause(); while (t != null) { System.out.println("Cause: " + t); t =
 * t.getCause(); } } } }
 */
    
    public static List<Customer> getQuery() {
		Connection connection = Cus_Connection.getConnection();
		if (connection == null) {
			System.out.println("db not connected!");
			return null;
		}
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		List<Customer> userList = new ArrayList<Customer>();
		try {
			preparedStatement = connection.prepareStatement("SELECT * FROM form_table");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Customer user = new Customer (resultSet.getInt("id"), 
						                      resultSet.getString("name"), 
						                      resultSet.getString("address"), 
						                      resultSet.getInt("plumber"), 
						                      resultSet.getInt("carpentar"), 
						                      resultSet.getInt("painter"), 
						                      resultSet.getInt("electrician"));
				userList.add(user);
				System.out.println(userList);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(userList);
		return userList;
	}
    
    
	/*
	 * public static List<UserInfo> getQuery() { Connection connection =
	 * DBConnectionManager.getConnection(); if (connection == null) {
	 * System.out.println("db not connected!"); return null; } PreparedStatement
	 * preparedStatement; ResultSet resultSet; List<UserInfo> userList = new
	 * ArrayList<UserInfo>(); try { preparedStatement =
	 * connection.prepareStatement("SELECT * FROM user_info"); resultSet =
	 * preparedStatement.executeQuery(); while (resultSet.next()) { UserInfo user =
	 * new UserInfo(resultSet.getInt("id"), resultSet.getString("email"),
	 * resultSet.getString("password")); userList.add(user);
	 * System.out.println(resultSet.getString("email") + " " +
	 * resultSet.getString("password")); } } catch (SQLException e) {
	 * e.printStackTrace(); } return userList; }
	 */
    
    
	/*
	 * public static void main(String args[]) { insertQuery(420, "Arpita", "Campus",
	 * 0170147, 2, 3, 0, 1); //printSQLException(); getQuery(); }
	 */
}
