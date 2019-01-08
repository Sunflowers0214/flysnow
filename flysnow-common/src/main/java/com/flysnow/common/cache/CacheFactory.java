package com.flysnow.common.cache;

import com.flysnow.common.base.BaseDao;
import com.flysnow.common.helper.ContextHelper;
import com.flysnow.common.util.ResourcesUtil;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.SqlSessionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Set;

public class CacheFactory {

    private static final Logger log = LoggerFactory.getLogger(CacheFactory.class);
    //缓存管理器名称
    private static String cacheTypeName;
    //缓存管理器
    private static ICache cache;
    //获取缓存标识
    private static String catalog;

    static {
        try {
            log.debug("==> 初始化缓存管理");
            Properties property = ResourcesUtil.getResourceAsProperties("sys.properties");
            if (property != null) {
                cacheTypeName = property.getProperty("cache.cacheType");
            } else {
                cacheTypeName = "LocalCacheImpl";
            }

            log.debug("==> 缓存管理器名称：" + cacheTypeName);
            switch (cacheTypeName) {
                case "MemcachedCacheImpl":
                    cache = MemcachedCacheImpl.getInstance();
                    break;
                case "RedisCacheImpl":
                    cache = RedisCacheImpl.getInstance();
                    break;
                default:
                    cache = LocalCacheImpl.getInstance();
                    break;
            }

            catalog = cacheTypeName;
            log.debug("==> 缓存标识：" + catalog);
        } catch (Exception e) {
            log.error("==> 初始化缓存管理器失败:" + e.getMessage());
        }
    }

    /**
     * 获取缓存管理器
     *
     * @return
     */
    @Deprecated
    public static ICache getCacheManager() {
        log.debug("==> 获取缓存管理器");
        return cache;
    }

    /**
     * 清理全部缓存
     */
    public static void destroy() {
        log.debug("==> 清理全部缓存");
        cache.destroy();
    }

    /**
     * 保存缓存对象
     *
     * @param key
     * @param value
     * @return
     */
    public static void put(String key, Object value) {
        log.debug("==> 保存缓存对象 ==> key:" + key + "|| value:" + value);
        cache.put(key, value);
    }

    /**
     * 保存缓存对象
     *
     * @param key
     * @param value
     * @param times
     * @return
     */
    public static void put(String key, Object value, int times) {
        log.debug("==> 保存缓存对象 ==> key:" + key + "|| value:" + value);
        cache.put(key, value, times);
    }

    /**
     * 获取缓存对象
     *
     * @param key
     * @return
     */
    public static Object get(String key) {
        log.debug("==> 获取缓存对象 ==> key:" + key);
        Object value = cache.get(key);
        log.debug("==> 缓存对象：value:" + value);
        return value;
    }

    /**
     * 清理缓存对象
     *
     * @param key
     * @return
     */
    public static Object remove(String key) {
        log.debug("==> 清理缓存对象 ==> key:" + key);
        return cache.remove(key);
    }

    /**
     * 清理缓存对象
     *
     * @return
     */
    public static Set<String> keySet() {
        Set<String> set = cache.keySet();
        log.debug("==> 缓存对象的key集合 ==> keyset:" + set);
        return set;
    }

    /**
     * 获取缓存标识
     *
     * @return
     */
    public static String getCatalog() {
        log.info("==> 获取缓存标识:" + catalog);
        return catalog;
    }

    /**
     * 初始化缓存标识
     */
    private static void createCatalog() {
        try {
            log.info("==> 初始化缓存标识");
            BaseDao dao = (BaseDao) ContextHelper.getBean("dictDao");
            SqlSession sqlSession = SqlSessionUtils.getSqlSession(((SqlSessionTemplate) dao.getSqlSession()).getSqlSessionFactory());
            Connection connection = sqlSession.getConnection();
            String sUrl = connection.getMetaData().getURL();
            String userName = connection.getMetaData().getUserName();
            if (sUrl.indexOf("oracle") != -1) {
                sUrl = sUrl.substring(sUrl.indexOf("@") + 1);
            } else if (sUrl.indexOf("mysql") != -1) {
                String url[] = sUrl.split("\\?");
                sUrl = url[0];
                sUrl = sUrl.substring(sUrl.indexOf("//") + 2);
                userName = userName.substring(0, userName.indexOf("@"));
            }
            catalog = sUrl + ":" + userName;
            log.info("==> 初始化缓存标识:" + catalog);
        } catch (SQLException be) {
            log.error(be.getMessage(), be);
        }
    }
}
