package com.flysnow.common.cache;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * LocalCacheImpl缓存
 */
public class LocalCacheImpl implements ICache {

    private static final Logger log = LoggerFactory.getLogger(LocalCacheImpl.class);
    private static LocalCacheImpl localCacheManager = new LocalCacheImpl();
    private static ConcurrentHashMap cache = new ConcurrentHashMap();

    private LocalCacheImpl() {
        log.debug("==> 初始化LocalCacheImpl实例");
    }

    public static LocalCacheImpl getInstance() {
        return localCacheManager;
    }

    @Override
    public void init() {
        log.debug("==> 初始化LocalCacheImpl上下文");
    }

    @Override
    public void destroy() {
        cache.clear();
    }

    @Override
    public Object put(String key, Object value) {
        return cache.put(key, value);
    }

    @Override
    public Object put(String key, Object value, int times) {
        return cache.put(key, value);

    }

    @Override
    public Object get(String key) {
        return cache.get(key);
    }

    @Override
    public Object remove(String key) {
        return cache.remove(key);
    }

    @Override
    public Set<String> keySet() {
        return cache.keySet();
    }

}
