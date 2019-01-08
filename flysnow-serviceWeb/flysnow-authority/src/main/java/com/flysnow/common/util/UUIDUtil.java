package com.flysnow.common.util;

import java.util.UUID;

/**
 * s
 */
public class UUIDUtil {

    public static String genKey() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}
