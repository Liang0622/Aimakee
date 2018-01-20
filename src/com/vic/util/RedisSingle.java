package com.vic.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public enum RedisSingle {
	INSTANCE;
	private JedisPool jedisPool;
	
	private RedisSingle() {
		InputStream propInputStream = RedisSingle.class.getClassLoader()
				.getResourceAsStream("redis.properties");
		Properties properties=new Properties();
		try {
			properties.load(propInputStream);
		}catch (IOException e) {
			System.out.println(e.getMessage());
		}
		//配置连接池
		JedisPoolConfig jedisPoolConfig=new JedisPoolConfig();
		//配置
		jedisPoolConfig.setMaxTotal(Integer.parseInt(properties.getProperty("JedisMaxActive")));
		//配置最大空闲数
		jedisPoolConfig.setMaxIdle(Integer.parseInt(properties.getProperty("JedisMaxIdle")));
		//配置最大等待时长
		jedisPoolConfig.setMaxWaitMillis(Integer.parseInt(properties.getProperty("JedisMaxWait")));
		jedisPoolConfig.setTestOnBorrow(Boolean.getBoolean(properties.getProperty("JedisTestOnBorrow")));
		//配置redis服务器IP,端口号
		jedisPool = new JedisPool(jedisPoolConfig,properties.getProperty("JedisURL"),
				Integer.parseInt(properties.getProperty("JedisPort")));
	}
	//获得Jedis的实例
	public Jedis getInstance() {
		return jedisPool.getResource();
	}
	//关闭Jedis的实例
	public void closeInstance(Jedis jedis) {
		jedis.close();
	}
}
