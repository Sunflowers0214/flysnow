package com.flysnow.common.exception;

public class StatusException extends Exception {

    public StatusException(String message) {
        super(message);
    }

    public StatusException(String message, Throwable cause) {
        super(message, cause);
    }
}
