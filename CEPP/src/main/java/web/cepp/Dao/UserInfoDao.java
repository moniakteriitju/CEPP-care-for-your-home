package web.cepp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.cepp.Model.UserInfo;
import web.cepp.utils.DBConnectionManager;

public class UserInfoDao {
	
	public static void insertQuery(int id, String email, String password) {
		Connection connection = DBConnectionManager.getConnection();
		if (connection == null) {
			System.out.println("db not connected!");
			return ;
		}
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("INSERT INTO user_info (id, email, password) VALUES (?, ?, ?)");
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, password);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static List<UserInfo> getQuery() {
		Connection connection = DBConnectionManager.getConnection();
		if (connection == null) {
			System.out.println("db not connected!");
			return null;
		}
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		List<UserInfo> userList = new ArrayList<UserInfo>();
		try {
			preparedStatement = connection.prepareStatement("SELECT * FROM user_info");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				UserInfo user = new UserInfo(resultSet.getInt("id"), resultSet.getString("email"), resultSet.getString("password"));
				userList.add(user);
				System.out.println(resultSet.getString("email") + " " + resultSet.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}
	
	//public static void main(String args[]) {
		//insertQuery(420, "tani@gmail.com", "hisajjad");
		//getQuery();
	}

}