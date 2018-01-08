package com.vic.entity;
/**
 * 用户实体类
 * @author Liang
 *
 */
public class User {
	/**
	 * 用户属性
	 */
	private int uId;//用户编号
	private String userName;//用户名
	private String userEmail;//邮箱
	private String password;//用户密码
	private String userQQ;//
	private String mobilePhone;//手机
	private String passwordQuestion;//密码提示问题
	private String passwordAnswer;//密码问题答案
	/**
	 * 无参构造
	 */
	public User() {
		super();
	}
	/**
	 * 有参构造
	 */
	public User(int uId, String userName, String userEmail, String password,
			String userQQ, String workPhone, String familyPhone,
			String mobilePhone, String passwordQuestion, String passwordAnswer) {
		super();
		this.uId = uId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.password = password;
		this.userQQ = userQQ;
		this.mobilePhone = mobilePhone;
		this.passwordQuestion = passwordQuestion;
		this.passwordAnswer = passwordAnswer;
	}
	/**
	 * setter和getter方法
	 */
	public int getuId() {
		return uId;
	}
	public void setuId(int uId) {
		this.uId = uId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserQQ() {
		return userQQ;
	}
	public void setUserQQ(String userQQ) {
		this.userQQ = userQQ;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getPasswordQuestion() {
		return passwordQuestion;
	}
	public void setPasswordQuestion(String passwordQuestion) {
		this.passwordQuestion = passwordQuestion;
	}
	public String getPasswordAnswer() {
		return passwordAnswer;
	}
	public void setPasswordAnswer(String passwordAnswer) {
		this.passwordAnswer = passwordAnswer;
	}
	
}
