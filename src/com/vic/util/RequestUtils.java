package com.vic.util;

import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestUtils {
	public static String getCSessionId(HttpServletRequest request,HttpServletResponse response) {
		//从Request中取Cookie
		Cookie[] cookies=request.getCookies();
		//从cookie数据中遍历查找，并取CSessionID
		if(null!=cookies && cookies.length>0) {
			for(Cookie cookie:cookies) {
				if("CSESSIONID".equals(cookie.getName())) {
					//有，直接返回
					return cookie.getValue();
				}
			}
		}
		//没有，创建一个CSessionId,并且放到Cookie再返回浏览器，返回新的CSessionID
		String csessionid=UUID.randomUUID().toString().replaceAll("-", "");
		//并且放到Cookie中
		Cookie cookie= new Cookie("CSESSIONID", csessionid);
		//每次都带来，设置路径
		cookie.setPath("/");
		cookie.setMaxAge(-1);
		return csessionid;
	}
}
