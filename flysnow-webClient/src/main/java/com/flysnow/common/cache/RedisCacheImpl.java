package com.flysnow.common.cache;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Set;

public class RedisCacheImpl implements ICache {

    private static final Logger log = LoggerFactory.getLogger(LocalCacheImpl.class);
    public static RedisCacheImpl redisCacheManager = new RedisCacheImpl();

    private RedisCacheImpl() {
        log.debug("==> 初始化RedisCacheImpl实例");
    }

    public static RedisCacheImpl getInstance() {
        return redisCacheManager;
    }

    @Override
    public void init() {
        log.debug("==> 初始化RedisCacheImpl上下文");
        // TODO Auto-generated method stub
    }

    @Override
    public void destroy() {
        // TODO Auto-generated method stub
    }

    @Override
    public Object put(String key, Object value) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Object put(String key, Object value, int times) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Object get(String key) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Object remove(String key) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Set<String> keySet() {
        // TODO Auto-generated method stub
        return null;
    }

}
