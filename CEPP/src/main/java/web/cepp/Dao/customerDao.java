package web.cepp.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.cepp.Model.Customer;
//import web.cepp.Model.UserInfo;
import web.cepp.utils.Cus_Connection;
//import web.cepp.utils.DBConnectionManager;

public class customerDao {
	public static void insertQuery(int id, String Name, String Address, int Phone, int Plumber, int Carpentar, int Painter, int  Electrician) {
		Connection connection = Cus_Connection.getConnection();


        //Class.forName("com.mysql.jdbc.Driver");
        
		if (connection == null) {
			System.out.println("db not connected...1...!");
			return ;
		}
		
		PreparedStatement preparedStatement;
        try{

            // Step 2:Create a statement using connection object
            preparedStatement = connection.prepareStatement("INSERT INTO form_table (id, Name, Address, Phone, Plumber, Carpentar, Painter, Electrician) VALUES (?, ?, ?, ?, ?, ?, ?, ?)") ;
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, Name);
            preparedStatement.setString(3, Address);
            preparedStatement.setInt(4,Phone);
            preparedStatement.setInt(5, Plumber);
            preparedStatement.setInt(6, Carpentar);
            preparedStatement.setInt(7, Painter);
            preparedStatement.setInt(8, Electrician);

            //System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            preparedStatement.executeUpdate();

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
				Customer user = new Customer(resultSet.getInt("id"), 
						                      resultSet.getString("Name"), 
						                      resultSet.getString("Address"), 
						                      resultSet.getInt("Phone"),
						                      resultSet.getInt("Plumber"), 
						                      resultSet.getInt("Carpentar"), 
						                      resultSet.getInt("Painter"), 
						                      resultSet.getInt("Electrician"));
				userList.add(user);
				//System.out.println(userList);
				System.out.println(resultSet.getString("id") + " " + resultSet.getString("Electrician"));
			}
			//System.out.println(preparedStatement);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(userList + "AAA");
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
    
    
	
	  public static void main(String args[]) {
		  insertQuery(420, "Arpita", "Campus", 0170147, 2, 3, 0, 1); //printSQLException(); 
	  getQuery(); }
	 
}
