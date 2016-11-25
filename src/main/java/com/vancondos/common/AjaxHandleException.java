package com.vancondos.common;

public class AjaxHandleException extends Exception {

    public AjaxHandleException() {}

    public AjaxHandleException(String message) {
        super(message);
    }

    public AjaxHandleException(String message, Throwable cause) {
        super(message, cause);
    }

    public AjaxHandleException(Throwable cause) {
        super(cause);
    }

    public static Throwable getRootException(Throwable e) {
        if (e instanceof AjaxHandleException && e.getCause() != null) {
            return getRootException(e.getCause());
        } else {
            return e;
        }
    }

    public static boolean isRootInterruptedException(Throwable e){
        return (getRootException(e) instanceof InterruptedException);
    }
}

