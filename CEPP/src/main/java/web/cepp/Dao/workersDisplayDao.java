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
			preparedStatement = connection.prepareStatement("select * from registration_info where type='carpentar';");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				WorkersDisplayMod user = new WorkersDisplayMod(resultSet.getInt("id"), resultSet.getString("name"), resultSet.getString("address"),
				resultSet.getString("phone_number"),resultSet.getString("email_id"),resultSet.getString("gender"),resultSet.getString("type"),
				resultSet.getString("age"));
				
				workerList.add(user);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(workerList);
		return workerList;
	}
	
	
	
	
	public static List<WorkersDisplayMod> getQuery2() {
		Connection connection = DBConnectionManager.getConnection();
		if (connection == null) {
			System.out.println("db not connected!");
			return null;
		}
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		List<WorkersDisplayMod> workerList2 = new ArrayList<WorkersDisplayMod>();
		try {
			preparedStatement = connection.prepareStatement("select * from registration_info where type='painter';");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				WorkersDisplayMod user = new WorkersDisplayMod(resultSet.getInt("id"), resultSet.getString("name"), resultSet.getString("address"),
				resultSet.getString("phone_number"),resultSet.getString("email_id"),resultSet.getString("gender"),resultSet.getString("type"),
				resultSet.getString("age"));
				
				workerList2.add(user);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//System.out.println(workerList2);
		return workerList2;
	}
	
	
	
	
	public static List<WorkersDisplayMod> getQuery3() {
		Connection connection = DBConnectionManager.getConnection();
		if (connection == null) {
			System.out.println("db not connected!");
			return null;
		}
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		List<WorkersDisplayMod> workerList3 = new ArrayList<WorkersDisplayMod>();
		try {
			preparedStatement = connection.prepareStatement("select * from registration_info where type='plumber';");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				WorkersDisplayMod user = new WorkersDisplayMod(resultSet.getInt("id"), resultSet.getString("name"), resultSet.getString("address"),
				resultSet.getString("phone_number"),resultSet.getString("email_id"),resultSet.getString("gender"),resultSet.getString("type"),
				resultSet.getString("age"));
				
				workerList3.add(user);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//System.out.println(workerList2);
		return workerList3;
	}
	
	
	public static List<WorkersDisplayMod> getQuery4() {
		Connection connection = DBConnectionManager.getConnection();
		if (connection == null) {
			System.out.println("db not connected!");
			return null;
		}
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		List<WorkersDisplayMod> workerList4 = new ArrayList<WorkersDisplayMod>();
		try {
			preparedStatement = connection.prepareStatement("select * from registration_info where type='electrician';");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				WorkersDisplayMod user = new WorkersDisplayMod(resultSet.getInt("id"), resultSet.getString("name"), resultSet.getString("address"),
				resultSet.getString("phone_number"),resultSet.getString("email_id"),resultSet.getString("gender"),resultSet.getString("type"),
				resultSet.getString("age"));
				
				workerList4.add(user);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		return workerList4;
	}
	
	
	

	

}