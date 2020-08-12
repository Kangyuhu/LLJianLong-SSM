package com.lljl.lu.result;

/**
 * 返回结果
 */
public class Result {

    boolean judge;

    String message;

    public Result() {
    }

    public Result(boolean judge, String message) {
        this.judge = judge;
        this.message = message;
    }

    public boolean isJudge() {
        return judge;
    }

    public void setJudge(boolean judge) {
        this.judge = judge;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
