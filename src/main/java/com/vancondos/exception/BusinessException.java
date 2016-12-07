package com.vancondos.exception;

public class BusinessException  extends Exception {
    public BusinessException() {
        super();
    }
    public BusinessException(String s) {
        super(s);
    }
    public BusinessException(String s, Throwable throwable) {
        super(s, throwable);
    }
    public BusinessException(Throwable throwable) {
        super(throwable);
    }
}
