package web.cepp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import web.cepp.Model.WorkersDisplayMod;
import web.cepp.utils.DBConnectionManager;

public class workersDisplayDao {
	
	
	
	public static List<WorkersDisplayMod> getQuery() {
		Connection connection = DBConnectionManager.getConnection();
		if (connection == null) {
			System.out.println("db not connected!");
			return null;
		}
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		List<WorkersDisplayMod> workerList = new ArrayList<WorkersDisplayMod>();
		try {
			preparedStatement = connection.prepareStatement("select * from registration_info;");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				WorkersDisplayMod user = new WorkersDisplayMod(resultSet.getInt("id"), resultSet.getString("name"), resultSet.getString("address"),
				resultSet.getString("phone_number"),resultSet.getString("email_id"),resultSet.getString("gender"),resultSet.getString("type"),
				resultSet.getString("age"));
				
				workerList.add(user);
				//System.out.println(resultSet.getString("email_id") + " " + resultSet.getString("age"));
				
				//System.out.println(workerList);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(workerList);
		return workerList;
	}
	
	
	

	//public static void main(String args[]) {
		//insertQuery(420, "tani@gmail.com", "hisajjad");
		//getQuery();
	//}

}