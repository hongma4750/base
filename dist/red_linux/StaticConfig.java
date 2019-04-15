/**
*
* Copyright (C) 2009 HONGMA. All Rights
*
* Created on   : 2009-6-11 10:23:05
* Target OS    : Java VM 1.5.0
*
* ------------------------------
* CHANGE REVISION
* ------------------------------
* AUTHOR   : HONGMA
* DATE     : 2009-6-11 10:23:05
* REVISION : 1.0   First release.
* -------------------------------
* CLASS DESCRIPTION
* -------------------------------
*
*/
package hongma.frm.config;


/**
 * <p>Title: 정적변수 세팅 클래스</p>
 * <p>Description: Static변수를 관리하는 객체 StaticConfig.xml과 매칭</p>
 * <p>Copyright: Copyright (c) 2009</p>
 * <p>Company: HONGMA</p>
 * @author 이선호
 * @version 1.0
 */
public class StaticConfig {
    
    /**
     * 연계시스템 테이블을 사용할지 여부
     */
    public static String PRODUCT_MODE = "info";    // debug or info
    /**
     * Quartz 스케쥴러 실행명
     */
    public static String PRODUCT_NAME = "REDVOC";    // GEPSVOCDEV or GEPSVOC

    /**
     * APP_INFO
     */
    public static String APP_COMPANY        = "RED-VOC시스템";
    public static String APP_DOMAIN         = "http://voc.devplace.co.kr";
    public static String APP_TITLE          = "RED-VOC시스템 고객의소리";
    public static String APP_CHMN_NAME      = "레드소프트";  
    public static String APP_CHMN_CALL      = "02-6220-3901";  
    public static String APP_DEP_CODE       = "120200";  

    /**
     * 외부 웹서버 URL
     */
    public static String OUTAP_DOMAIN       = "http://192.168.123.27";

    
    public static String CONTEXT_PATH       = "/attach/cont/";

    /**
     * SKIN Info
     */
    public static String SKIN_VIEW          = "skin/default";
    public static String SKIN_IMAGE         = "/html/skin/default/images";
    public static String SKIN_CSS           = "/html/skin/default/css";

    public static String SITE_LOG_LOGIN     = "/html/skin/default/images/loginform/login_logo.jpg";
    public static String SITE_LOG_TOP       = "/html/skin/default/images/main/top/logo.gif";

    
    public static String AUTH_PAGE_TABLE    = "AUTH_PAGE_T";    // 페이지 권한 테이블
    public static String NAVIGATION_TABLE   = "MENU_USE_T";     // 메뉴이용정보에 대한 테이블 명
    public static String SESSION_TABLE      = "USER_SESSION";   // 세션정보를 저장할 테이블
    public static String LOGIN_TABLE        = "LOGIN_T";        // 사용자의 로그인 정보를 설정
    
    public static final String DB_SERVER_USER = "REDVOC";

    /**
     * 메시지헤더, 메시지코드 및 메시지내용을 구분하기 위한 Delimiter.
     */
    public static final String MESSAGE_DELIMITER = new Character( (char) 0x8).toString();


    /**
     * 외부 FTP서버정보
     */
    //외부 FTP 정보 변경시 수정해야 할 부분 Start
    public static final String SFTP_UPLOAD_IP     = "172.21.2.109"; //61.108.180.151;61.108.180.152;
    public static final String SFTP_UPLOAD_PORT   = "7775";  //;122;122
    public static final String WEBTOBE_HOME       = "/geps/home/WebContent";  ///web/home/WebContent;/web/home/WebContent;
    public static final String SFTP_UPLOAD_USER   = "jeus6;jeus6;jeus6;";
    public static final String SFTP_UPLOAD_PWD    = "rhdeks!12;rhdeks!12;rhdeks!12;";
    //외부 FTP 정보 변경시 수정해야 할 부분 End
    
    public static final String FTP_IP             = "www.devplace.co.kr";
    public static final String FTP_USER           = "";
    public static final String FTP_PWD            = "";
    public static final String FTP_DIR            = "";
    
    public static final String FTP_IP_DEBUG       = "172.21.2.204";
    public static final String FTP_USER_DEBUG     = "jeus6ep";
    public static final String FTP_PWD_DEBUG      = "devwas!12";
    public static final String FTP_DIR_DEBUG      = "/geps/home/WebContent/upload/redvoc/";

      
    /**   
     * 파일업로드 관련
     */
//    public static final String APP_ROOT_DIR             = "D:/dev/projects/KTCU/inap/REDVOC-JQ";    //"D:/dev/projects/GEPSVOC";  //  "/GEPS/VOC/";
//    public static final String APP_WEB_DIR              = StaticConfig.APP_ROOT_DIR + "/src/main/webapp";
    public static final String APP_ROOT_DIR             = "/home/hongma/app/REDVOC-JQ";    //"D:/dev/projects/GEPSVOC";  //  "/GEPS/VOC/";
    public static final String APP_WEB_DIR              = StaticConfig.APP_ROOT_DIR + "/inap/REDVOC-JQ/src/main/webapp";
    public static final String FTP_ATTACH_DIR           = "/upload/redvoc/files/";

    public static final String ATTACH_FILE              = "attach";
    public static final String ATTACH_OBJECT            = "files";

    // 일반파일
    public static final String ATTACH_TEMP_DIR          = StaticConfig.APP_ROOT_DIR + "/attach/temp/";
//    public static final String ATTACH_FILE_DIR          = "/upload/gepsvoc/files/";
    
    /**
     * [템플릿] 이미지 관련
     */
    public static final String ATTACH_TMPL_CODE             = "TEMPLATE";
    public static final String ATTACH_TMPL_FILE_DIR         = "/upload/template/";
    public static final String ATTACH_TMPL_FTP_DIR          = FTP_ATTACH_DIR + "/template/";
    
    /**
     * 내부업로드 관련(공지사항, 개선과제, 개선및 건의사항)
     */
    public static final String FTP_IP1              = ""; //172.21.97.101
    public static final String FTP_IP2              = ""; //172.21.97.102
    public static final String APP_WAS_DIR              = "/attach/files";
        
    
    /**
     * [VOC] 관련
     */
    public static final String ATTACH_VOC_CODE          = "VOCFILE";
    public static final String ATTACH_VOC_CODE_ANS      = "VOCFILEANS";
    public static final String ATTACH_VOC_DIR    		= APP_WAS_DIR+"/voc/";
    
    /**
     * [상담지식] 관련
     */
    public static final String ATTACH_CNSL_CODE			= "CNSLKNOW";
    public static final String ATTACH_CNSL_DIR    		=  APP_WAS_DIR+"/cnsl/";
    
    /**
     * [개선과제] 관련
     */
    public static final String ATTACH_PRJ_CODE          = "PRJFILE";
    public static final String ATTACH_PRJ_CODE_ANS      = "PRJFILEANS";
    public static final String ATTACH_PRJ_DIR           = APP_WAS_DIR+"/prj/";
    
    /**
     * [공지사항] 관련
     */
    public static final String ATTACH_NOTI_CODE          = "NOTIFILE";
    public static final String ATTACH_NOTI_DIR           = APP_WAS_DIR+"/noti/";
    

    
    
    
    /**
     * 게시물 코드 정의
     */
    public static final String VOC_BOARD_NOTICE         = "NOTICE"; //공지사항
    public static final String VOC_BOARD_QA             = "20080223000002"; // Q&A
    public static final String VOC_BOARD_SAMPLE         = "20150325000001"; // SAMPLE 게시판
    
    public static final String OUTAP_SRVY_URL           = OUTAP_DOMAIN + ":9080/op/vocsatisfaction.voc";
    
    /**
     * SMS 발송시 발송자번호
     */
    public static final String SMS_FROM                 = "0211111111";
    public static final String SMS_FROM_NM              = "(주)레드소프트";

    /**
     * EMAIL 발송시 발송자번호
     */
    public static final String EMAIL_FROM                 = "admin@hongma.co.kr";
    public static final String EMAIL_FROM_NM              = "(주)레드소프트";
    
    /**
     * 메신저 발송시 발송자번호
     */
    public static final String MESSINGER_FROM                 = "00000";
    public static final String MESSINGER_FROM_NM              = "(주)레드소프트";
    
}
