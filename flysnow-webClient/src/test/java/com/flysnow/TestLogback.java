package com.flysnow;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestLogback {
    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    @Test
    public void testInsert() throws Exception {
        logger.trace("----------trace");
        logger.debug("----------debug");
        logger.info("----------info");
        logger.warn("----------warn");
        logger.error("----------error");
    }
}
