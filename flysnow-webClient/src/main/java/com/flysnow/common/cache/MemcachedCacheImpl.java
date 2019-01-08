/**
 *
 */
package com.flysnow.common.cache;

import com.alisoft.xplatform.asf.cache.ICacheManager;
import com.alisoft.xplatform.asf.cache.IMemcachedCache;
import com.alisoft.xplatform.asf.cache.memcached.CacheUtil;
import com.alisoft.xplatform.asf.cache.memcached.MemcachedCacheManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Set;

/**
 * MemcachedCacheImpl缓存
 */
public class MemcachedCacheImpl implements ICache {

    private static final Logger log = LoggerFactory.getLogger(LocalCacheImpl.class);
    public static ICacheManager<IMemcachedCache> manager;
    public static MemcachedCacheImpl memCacheManager = new MemcachedCacheImpl();
    public static IMemcachedCache cache;

    public static MemcachedCacheImpl getInstance() {
        return memCacheManager;
    }

    private MemcachedCacheImpl() {
        log.debug("==> 初始化MemcachedCacheImpl实例");
        manager = CacheUtil.getCacheManager(IMemcachedCache.class, MemcachedCacheManager.class.getName());
        manager.setConfigFile("memcached.xml");
        manager.setResponseStatInterval(5 * 1000);
        manager.start();
        cache = manager.getCache("mclient0");
    }

    @Override
    public void init() {
        log.debug("==> 初始化MemcachedCacheImpl上下文");
        getInstance();
    }

    @Override
    public void destroy() {
        cache.destroy();
    }

    @Override
    public Object put(String key, Object value) {
        return cache.put(key, value);
    }

    @Override
    public Object put(String key, Object value, int times) {
        return cache.put(key, value, times);
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
