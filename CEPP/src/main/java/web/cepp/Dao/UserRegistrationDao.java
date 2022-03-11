package web.cepp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import web.cepp.utils.DBConnectionManager;

public class UserRegistrationDao {
	
	public static void insertQuery(int id, String name, String address, String phone_number, String email_id, String gender, String type,String age) {
		Connection connection = DBConnectionManager.getConnection();
		if (connection == null) {
			//System.out.println("db not connected!");
			return ;
		}
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("INSERT INTO registration_info (id, name,address, phone_number, email_id, gender, type, age) VALUES (?, ?, ?,?,?,?,?,?)");
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, address);
			
			
			preparedStatement.setString(4, phone_number);
			preparedStatement.setString(5, email_id);
			
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, type);
			preparedStatement.setString(8, age);
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
