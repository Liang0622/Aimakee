package com.vic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BaseDao {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	/**
	 * 与数据库建立连接
	 * @return
	 */
	public Connection getConnection(){
		try {
			Context ctx=new InitialContext();
			DataSource ds=(DataSource) ctx.lookup("java:comp/env/jdbc/u2case");
			if(ds==null){
				System.out.println("未获取DataSource的实例！");
			}
			conn=ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 关闭资源
	 */
	public void closeAll(){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	/**
	 * 执行增删改的操作
	 * @param sql
	 * @param params
	 * @return
	 */
	public int executeUpdate(String sql,Object...params){
		int resNum=0;
		conn=getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);
				}
			}
			resNum=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return resNum;
	}
	/**
	 * 执行查询的操作
	 * @param sql
	 * @param params
	 * @return
	 */
	public ResultSet executeQuery(String sql,Object...params){
		conn=getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);
				}
			}
			rs=pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
}
