package com.flysnow.common.util;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.util.Properties;

/**
 * 
 * 
 * 描述: 资源处理
 * 
 * Copyright © 2015 Goodwill All rights reserved
 * 
 * @author Frank
 * @version 1.0
 */
public class ResourcesUtil extends Object {

	private static ClassLoader defaultClassLoader;

	private ResourcesUtil() {
	}

	/**
	 * 
	 * 描述：获取默认ClassLoader
	 *
	 * 例子：
	 *
	 * @return
	 */
	public static ClassLoader getDefaultClassLoader() {
		return defaultClassLoader;
	}

	/**
	 * 
	 * 描述：设置ClassLoader
	 *
	 * 例子：
	 *
	 * @param defaultClassLoader
	 */
	public static void setDefaultClassLoader(ClassLoader defaultClassLoader) {
		ResourcesUtil.defaultClassLoader = defaultClassLoader;
	}

	/**
	 * 
	 * 描述：获取资源URL
	 *
	 * 例子：
	 *
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static URL getResourceURL(String resource) throws IOException {
		return getResourceURL(getClassLoader(), resource);
	}

	/**
	 * 
	 * 描述：获取资源URL
	 *
	 * 例子：
	 *
	 * @param loader
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static URL getResourceURL(ClassLoader loader, String resource)
			throws IOException {
		URL url = null;
		if (loader != null)
			url = loader.getResource(resource);
		if (url == null)
			url = ClassLoader.getSystemResource(resource);
		if (url == null)
			throw new IOException("Could not find resource " + resource);
		return url;
	}

	/**
	 * 
	 * 描述：获取资源输入流
	 *
	 * 例子：
	 *
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static InputStream getResourceAsStream(String resource)
			throws IOException {
		return getResourceAsStream(getClassLoader(), resource);
	}

	/**
	 * 
	 * 描述：获取资源输入流
	 *
	 * 例子：
	 *
	 * @param loader
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static InputStream getResourceAsStream(ClassLoader loader,
			String resource) throws IOException {
		InputStream in = null;
		if (loader != null)
			in = loader.getResourceAsStream(resource);
		if (in == null)
			in = ClassLoader.getSystemResourceAsStream(resource);
		if (in == null)
			throw new IOException("Could not find resource " + resource);
		return in;
	}

	/**
	 * 
	 * 描述：获取资源属性文件
	 *
	 * 例子：
	 *
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static Properties getResourceAsProperties(String resource)
			throws IOException {
		Properties props = new Properties();
		InputStream in = null;
		String propfile = resource;
		in = getResourceAsStream(propfile);
		props.load(in);
		in.close();
		return props;
	}

	/**
	 * 
	 * 描述：获取资源属性文件
	 *
	 * 例子：
	 *
	 * @param loader
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static Properties getResourceAsProperties(ClassLoader loader,
			String resource) throws IOException {
		Properties props = new Properties();
		InputStream in = null;
		String propfile = resource;
		in = getResourceAsStream(loader, propfile);
		props.load(in);
		in.close();
		return props;
	}

	/**
	 * 
	 * 描述：获取资源Reader
	 *
	 * 例子：
	 *
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static Reader getResourceAsReader(String resource)
			throws IOException {
		return new InputStreamReader(getResourceAsStream(resource));
	}

	/**
	 * 
	 * 描述：获取资源Reader
	 *
	 * 例子：
	 *
	 * @param loader
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static Reader getResourceAsReader(ClassLoader loader, String resource)
			throws IOException {
		return new InputStreamReader(getResourceAsStream(loader, resource));
	}

	/**
	 * 
	 * 描述：获取资源File
	 *
	 * 例子：
	 *
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static File getResourceAsFile(String resource) throws IOException {
		return new File(getResourceURL(resource).getFile());
	}

	/**
	 * 
	 * 描述：获取资源File
	 *
	 * 例子：
	 *
	 * @param loader
	 * @param resource
	 * @return
	 * @throws IOException
	 */
	public static File getResourceAsFile(ClassLoader loader, String resource)
			throws IOException {
		return new File(getResourceURL(loader, resource).getFile());
	}

	/**
	 * 
	 * 描述：根据URL获取输入流
	 *
	 * 例子：
	 *
	 * @param urlString
	 * @return
	 * @throws IOException
	 */
	public static InputStream getUrlAsStream(String urlString)
			throws IOException {
		URL url = new URL(urlString);
		URLConnection conn = url.openConnection();
		return conn.getInputStream();
	}

	/**
	 * 
	 * 描述：根据URL获取Reader
	 *
	 * 例子：
	 *
	 * @param urlString
	 * @return
	 * @throws IOException
	 */
	public static Reader getUrlAsReader(String urlString) throws IOException {
		return new InputStreamReader(getUrlAsStream(urlString));
	}

	/**
	 * 
	 * 描述：根据URL获取Properties
	 *
	 * 例子：
	 *
	 * @param urlString
	 * @return
	 * @throws IOException
	 */
	public static Properties getUrlAsProperties(String urlString)
			throws IOException {
		Properties props = new Properties();
		InputStream in = null;
		String propfile = urlString;
		in = getUrlAsStream(propfile);
		props.load(in);
		in.close();
		return props;
	}

	/**
	 * 
	 * 描述：获取Class
	 *
	 * 例子：
	 *
	 * @param className
	 * @return
	 * @throws ClassNotFoundException
	 */
	public static Class classForName(String className)
			throws ClassNotFoundException {
		Class clazz = null;
		try {
			clazz = getClassLoader().loadClass(className);
		} catch (Exception e) {
			// Ignore. Failsafe below.
		}
		if (clazz == null) {
			clazz = Class.forName(className);
		}
		return clazz;
	}

	public static Object instantiate(String className)
			throws ClassNotFoundException, InstantiationException,
			IllegalAccessException {
		return instantiate(classForName(className));
	}

	/**
	 * 
	 * 描述：实例化对象
	 *
	 * 例子：
	 *
	 * @param clazz
	 * @return
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public static Object instantiate(Class clazz)
			throws InstantiationException, IllegalAccessException {
		return clazz.newInstance();
	}

	
	
	private static ClassLoader getClassLoader() {
		if (defaultClassLoader != null) {
			return defaultClassLoader;
		} else {
			return Thread.currentThread().getContextClassLoader();
		}
	}

}
