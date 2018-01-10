package com.vic.util;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 当前页数据集合类
 * @author Liang
 *
 */
public class PageResultUtil {
	
	public static <T> List<T> eachResultSet(ResultSet rs,Class<T> clazz){
		List<T> list=new ArrayList<T>();
		T t=null;
		try {
			while(rs.next()) {
				//获取传入类的实例
				t=clazz.newInstance();
				//获取传入类的所有属性的集合
				Field[] fields=clazz.getDeclaredFields();
				for(Field f:fields) {
					if(f.getName().equals("page")) {
						continue;
					}
					f.setAccessible(true);
					f.set(t, rs.getObject(f.getName()));
				}
				list.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static <T> T eachOneResultSet(ResultSet rs,Class<T> clazz) {
		T t = null;
		try {
			while (rs.next()) {
				t = clazz.newInstance(); // 通过反射的机制获取对象的实例
				Field[] fields = clazz.getDeclaredFields();
				for (Field f : fields) {
					f.setAccessible(true);
					f.set(t, rs.getObject(f.getName()));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return t;
	}
}
