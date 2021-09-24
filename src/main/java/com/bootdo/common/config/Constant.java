package com.bootdo.common.config;

public class Constant {
    //演示系统账户
    public static String DEMO_ACCOUNT = "test";
    //自动去除表前缀
    public static String AUTO_REOMVE_PRE = "true";
    //停止计划任务
    public static String STATUS_RUNNING_STOP = "stop";
    //开启计划任务
    public static String STATUS_RUNNING_START = "start";
    //通知公告阅读状态-未读
    public static String OA_NOTIFY_READ_NO = "0";
    //通知公告阅读状态-已读
    public static int OA_NOTIFY_READ_YES = 1;

    public static final String SYMBOL_COMMA = ",";
    public static final String SYMBOL_DOT = ".";

    /**
     * 常规肯定
     */
    public static final int YES = 1;

    public static final String LOCK_4_STAT_C_INFO = "LOCK_4_STAT_C_";

    public static final String LOCK_4_STAT_M_INFO = "LOCK_4_STAT_M";

    /**
     * redis中的key
     */
    public static final String PREFIX_OF_STAT_MERCHANT = "STAT_M_";

    /**
     * redis中的key
     */
    public static final String PREFIX_OF_STAT_CODER = "STAT_C_";

    /**
     * redis中商户基本信息的key
     */
    public static final String PREFIX_OF_M_BASIC_INFO = "BIZ_M_";

    //部门根节点id
    public static Long DEPT_ROOT_ID = 0l;
    //缓存方式
    public static String CACHE_TYPE_REDIS = "redis";

    public static String LOG_ERROR = "error";


}
