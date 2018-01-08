package com.vic.dao.user.impl;

import java.sql.SQLException;

import com.vic.dao.BaseDao;
import com.vic.dao.user.UserDao;
import com.vic.entity.User;

public class UserDaoImpl extends BaseDao implements UserDao{

	@Override
	public int addUser(User user) {
		int resNum=0;
		//定义SQL语句
		String sql="insert into easybuy_user " +
				"(loginName,email,password,qq,mobile,pwdQuestion,pwdAnswer)" +
				" values(?,?,?,?,?,?,?)";
		//定义替换参数
		Object[] params={user.getUserName(),user.getUserEmail(),user.getPassword(),
				user.getUserQQ(),user.getMobilePhone(),user.getPasswordQuestion(),user.getPasswordAnswer()};
		//执行添加操作
		resNum=this.executeUpdate(sql, params);
		return resNum;
	}

	@Override
	public int delUser(int userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int changeUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User findUser(String userName) {
		User user=null;
		String sql="select id,loginName,email,password,qq,"
				+ "mobile,password,pwdQuestion,pwdAnswer from easybuy_user "
				+ "where loginName=? ";
		//定义替换参数
		Object[] params={userName};
		//执行添加操作
		rs=this.executeQuery(sql, params);
		try {
			while(rs.next()){
				//将数据添加到用户属性中
				user=new User();
				user.setuId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setUserEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setUserQQ(rs.getString("qq"));
				user.setMobilePhone(rs.getString("mobile"));
				user.setPassword(rs.getString("password"));
				user.setPasswordQuestion(rs.getString("pwdQuestion"));
				user.setPasswordAnswer(rs.getString("pwdAnswer"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public int findUserByName(String loginName) {
		int resNum=0;
		String sql="select 1 from easybuy_user "
				+ "where loginName=?";
		//定义替换参数
		Object[] params={loginName};
		//执行添加操作
		rs=this.executeQuery(sql, params);
		try {
			while(rs.next()){
				resNum++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return resNum;
	}
}
