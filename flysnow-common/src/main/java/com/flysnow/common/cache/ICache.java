package com.flysnow.common.cache;

import java.util.Set;

/**
 * 缓存接口，所有缓存实现均需要实现此接口
 * 
 * @author heming
 *
 *   2015.12.4
 */
public interface ICache {

	/**
	 * 初始化缓存配置
	 * 
	 * @return
	 * 
	 */
	public void init();

	/**
	 * 清理缓存，释放资源
	 * @param
	 * @return
	 */
	public void destroy();

	/**
	 * 保存数据至缓存
	 * @param
	 * @return
	 */
	public Object put(String key, Object value);

	/**
	 * 保存数据至缓存
	 * @param
	 * @return
	 */
	public Object put(String key, Object value, int times);

   /**
    * 通过key从缓存中获取数据
    * @param key
    * @return
    */
	public Object get(String key);

	/**
	 * 通过key删除缓存中的数据
	 * @param key
	 * @return Object
	 */
	public Object remove(String key);

	
	/**
	 * 返回缓存中key的集合
	 * @return
	 */
    public Set<String> keySet();
    
    
   
}
