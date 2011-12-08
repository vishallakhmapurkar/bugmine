package com.bugmine.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.bugmine.bean.LoginForm;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class JdbcUserDao implements UserDao {
	
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	

	public boolean loginCheck(LoginForm loginForm) {
			String sql = DBSql.LOGIN_SQL_QUERY;
			Connection conn = null;
			 
			try {
				conn = (Connection) dataSource.getConnection();
				PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setString(1, loginForm.getUserName());
				ps.setString(2, loginForm.getUserName());
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					if (rs.getString("password").equalsIgnoreCase(loginForm.getPassword())) {
						loginForm.setUsrType(rs.getString("ut"));
						return true;
						
					} 
				}
				ps.close();
	 
			} catch (SQLException e) {
				throw new RuntimeException(e);
	 
			} finally {
				if (conn != null) {
					try {
						conn.close();
					} catch (SQLException e) {}
				}
			}
		return false;
	}

	

}
