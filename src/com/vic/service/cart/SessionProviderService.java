package com.vic.service.cart;

import com.vic.util.RedisSingle;

import redis.clients.jedis.Jedis;

public class SessionProviderService {
	public String getAttributerForUsername(String jessionId) {
		Jedis jedis=RedisSingle.INSTANCE.getInstance();
		String value=jedis.get(jessionId+":USER_NAME");
		if(null!=value) {
			//计算session过期时间是 用户最后一次请求开始计时
			jedis.expire(jessionId+":USER_NAME",60*60);
			RedisSingle.INSTANCE.closeInstance(jedis);
			return value;
		}
		RedisSingle.INSTANCE.closeInstance(jedis);
		return null;
	}
}
