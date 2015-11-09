package com.avenuecode.sqlj.helloworld;

import java.sql.Date;
import java.sql.SQLException;

import com.avenuecode.sqlj.helloworld.dao.HelloWorldDAO;

/**
 * Executes the HelloWorld SQLJ's application.
 * 
 * @author finx
 * @since Nov 9, 2015
 */
public class Main {

	public static void main(String[] args) {
		HelloWorldDAO dao = new HelloWorldDAO();
		try {
			dao.connectToDatabase();;
			Date currentDate = dao.getCurrentDate();
			System.out.println("Hello World! The current date is " + currentDate);
		} catch (SQLException e) {
			System.err.println("Error connecting to database: " + e.getMessage());
		} finally {
			try {
				dao.close();
			} catch (SQLException e) {
				System.err.println("Error closing connection: " + e.getMessage());
			}
		}
	}

}
