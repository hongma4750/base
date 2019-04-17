package base.prj.common.login.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import base.prj.common.login.service.LoginService;

//import com.ubintis.common.util.StrUtil;

/**
 * <p>Title: LoginController</p>
 * <p>Description: Control Class</p>
 * <p><b>History</b></p>
 * <pre>      : 2013.12.18 초기작성(김태호)</pre>
 * @author <a href="mailto:thkim@hongma.co.kr">김태호</a>
 * @version 1.0
 */
@Controller
public class LoginController  {
	
	/** LoginService */
//    @Resource(name = "loginService")
	@Autowired
    private LoginService loginService;
    
	/** CommonService */
//    @Resource(name = "commonService")
//    private CommonService commonService;
//    
//    private LoginManager loginManager;
    
    
    /**
     * 로그인폼
     * 
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/loginform.do")
    public ModelAndView loginform(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("main/loginform");
//        SkinMstVO skin = commonService.getSkinInfo();
//        if(null != skin) {
//            mav = new ModelAndView(skin.getPathView() + "/loginform");
//        }
        
//        UserSession uskin = new UserSession(null, skin);
//        mav.addObject("uskin", uskin);
        return mav;
    }
    
    /**
     * 로그인처리
     * 
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
//    @RequestMapping(value="/login.do")
//    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
//
//    	UserVO userVO = new UserVO();
//        bind(request, userVO); 
//        SkinMstVO skinInfo = commonService.getSkinInfo();
//        
//        if (StringUtil.null2void(userVO.getUserId()).equals("")){
//            ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform");
//            return mav ;
//        }
//        if (userVO.getUserId() == null) return new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform");
//        String localIP = request.getRemoteAddr(); 
//        UserVO userInfo = null;
//        
//        if(StringUtil.null2void(EncryptUtil.DecodeBySType(StringUtil.null2void(userVO.getRequestIp()))).equals("192.168.1.6")) 
//        {
//            userInfo = loginService.getUserInfo(userVO, true);
//        }
//        else if("Z".equals(userVO.getMode())){
//            userInfo = loginService.getUserInfo(userVO, false);
//        }
//        else if(localIP.equals("127.0.0.1") ){
//        	userVO.setPwd(null);
//        	userInfo = loginService.getUserInfo(userVO, false);
//        }
//        else{
//            userInfo = loginService.getUserInfo(userVO, true);
//        }
//        
//        //사용자 정보가 없으면 로그인 페이지로 이동
//        if(userInfo == null || !"N".equals(userInfo.getRtmYn())){
//        	
//        	/**
//        	 * 로그인 실패시 로그정보를 쌓는다.
//        	 */
//        	loadDate();
//            LoginLogVO loginLogVO = new LoginLogVO();
//            loginLogVO.setUserId(userVO.getUserId());
//            loginLogVO.setCnctPath(request.getRequestURI());
//            loginLogVO.setCnctStrtDd(SYSTEM.getInstance().getDate() + "" + SYSTEM.getInstance().getTime());
//            loginLogVO.setCnctEndDd("");
//            loginLogVO.setIpPath(request.getRemoteAddr());
//            loginLogVO.setCnctYn("N");
//            loginLogVO.setLoginYn("N");
//            loginService.updateUserLogin(loginLogVO);
//        	
//            ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform", "LoginErr01", "아이디 또는 비밀번호가 일치하지 않습니다.");
//            UserSession uskin = new UserSession(null, skinInfo);
//            mav.addObject("uskin", uskin);
//            return mav;
//        }    
//
////        //사용자 등록후 최초 접속이라면 비밀번호 변경 팝업창 호출
////        if(userInfo.getPwdChangYmd() == null || "".equals(userInfo.getPwdChangYmd())){
////            ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform", "PwdChangYn", userVO.getUserId());
////            UserSession uskin = new UserSession(null, skinInfo);
////            mav.addObject("uskin", uskin);
////            return mav;
////        }
////        //사용자 정보가 없으면 로그인 페이지로 이동
////        if("Y".equals(userInfo.getPwdChangYn())){
////        	
////        	/**
////        	 * 로그인 실패시 로그정보를 쌓는다.
////        	 */
////        	loadDate();
////            LoginLogVO loginLogVO = new LoginLogVO();
////            loginLogVO.setUserId(userVO.getUserId());
////            loginLogVO.setCnctPath(request.getRequestURI());
////            loginLogVO.setCnctStrtDd(SYSTEM.getInstance().getDate() + "" + SYSTEM.getInstance().getTime());
////            loginLogVO.setCnctEndDd("");
////            loginLogVO.setIpPath(request.getRemoteAddr());
////            loginLogVO.setCnctYn("N");
////            loginLogVO.setLoginYn("N");
////            loginService.updateUserLogin(loginLogVO);
////        	
////            ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform", "PwdChangYn", userVO.getUserId());
////            UserSession uskin = new UserSession(null, skinInfo);
////            mav.addObject("uskin", uskin);
////            return mav;
////        }    
//        
//        String loginKey = userInfo.getUserId() + ";" + localIP;
//        
//        //Session 처리부분---------------------------------------------------/
//        loginManager = LoginManager.getInstance();
//        HttpSession httpSession = request.getSession(true);
//        
//        httpSession.setAttribute("DA_DVN", "1");
//        
//        if (loginManager.isUsing(loginKey))
//        {
//            if(!loginManager.isDuplicateIP(loginKey)) {
//                
//                httpSession.setAttribute("USER_ID", userInfo.getUserId());
//                httpSession.setAttribute("USER_PW", userVO.getPwd());
//                
//                ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform", "LoginErr02", "접속된 사용자가 있습니다.");
//                UserSession uskin = new UserSession(null, skinInfo);
//                mav.addObject("uskin", uskin);
//                return mav;
//            }
//        }
//
//        try {
//            loginManager.printloginUsers();
//            loginManager.setSession(httpSession, loginKey);
//        }catch(Exception e) {
//            System.out.println(e.getLocalizedMessage());
//        }
//        
//        String sDiv = StringUtil.getParam(request, "sDiv", "");
//        if(sDiv.equals("saeall"))
//        {
//            logger.debug("CommonController >>>>>>>>>>> 접촉구분 : " + sDiv);
//            logger.debug("CommonController >>>>>>>>>>> 세션유무 : "+loginManager.isUsing(userInfo.getUserId()));  
//        }
////        if(userInfo.getCnfmYn().equals("N")){
////            UserSession userSession = new UserSession(userInfo, skinInfo);
////            WebUtils.setSessionAttribute(request, "userSession", userSession);
////            ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform", "userInfo", userInfo);
////            UserSession uskin = new UserSession(null, skinInfo);
////            mav.addObject("uskin", uskin);
////            return mav;
////        }else{
//            loginProcess(userInfo, skinInfo, request, response);
//            return null;
////        }
//        
//    }

    /**
     * 로그인(SSO)처리
     * 
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
//    @RequestMapping(value="/ssologin.do")
//    public ModelAndView ssologin(HttpServletRequest request, HttpServletResponse response) throws Exception {
//
//        SkinMstVO skinInfo = commonService.getSkinInfo();
//        
//        HttpSession httpSession = request.getSession(true);
////        String ARGV1 = StrUtil.NVL( (String)httpSession.getAttribute("ARGV1") );
////        String ARGV2 = StrUtil.NVL( (String)httpSession.getAttribute("ARGV2") );
////        String ARGV3 = StrUtil.NVL( (String)httpSession.getAttribute("ARGV3") );
////        String ARGV4 = StrUtil.NVL( (String)httpSession.getAttribute("ARGV4") );
////        String ARGV5 = StrUtil.NVL( (String)httpSession.getAttribute("ARGV5") );
////        String ARGV99 = StrUtil.NVL( (String)httpSession.getAttribute("ARGV99") );
////        String retUrl = StrUtil.NVL( (String)httpSession.getAttribute("retUrl") );
//        
////        com.ubintis.app.BaseMgt baseMgt = new com.ubintis.app.BaseMgt();
////        String responseAppID       = StrUtil.NVL( baseMgt.getSSO_AGENT_ID() );
//        
//        String cf_remote_ip = request.getRemoteAddr();
//        String cf_remote_host = request.getRemoteHost();
//        logger.info("SERVER INFO : ["+cf_remote_ip+"] "+cf_remote_host);
//        
////        if ("".equals(ARGV1)){
////            UserSession uskin = new UserSession(null, skinInfo);
////            ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform");
////            mav.addObject("uskin", uskin);
////            mav.addObject("sso", "fail_SSO");
////            return mav;
////        }
//
////        Tbcr1300 userInfo = null;
////        Tbcr1300 tbcr1300 = new Tbcr1300();
////        tbcr1300.setUserId(ARGV1);
//        UserVO userInfo = null;
//        UserVO userVO = new UserVO();
////        userVO.setUserId(ARGV1);
//        userInfo = loginService.getUserInfo(userVO, false);
//
//        //사용자 정보가 없으면 로그인 페이지로 이동
//        if(userInfo == null){
//            ModelAndView mav =  new ModelAndView(((null != skinInfo) ? skinInfo.getPathView() : "") + "/loginform");
//            UserSession uskin = new UserSession(null, skinInfo);
//            mav.addObject("uskin", uskin);
//            mav.addObject("sso", "fail_VOC");
//            return mav;
//        }    
//
//        String loginKey = userInfo.getUserId() + ";" + cf_remote_ip;
//        
//        //Session 처리부분---------------------------------------------------/
//        loginManager = LoginManager.getInstance();
//        
//        if (loginManager.isUsing(loginKey))
//        {
//            if(!loginManager.isDuplicateIP(loginKey)) {
//                
//                httpSession.setAttribute("USER_ID", userInfo.getUserId());
//                httpSession.setAttribute("USER_PW", userInfo.getPwd());
//            }
//        }
//
//        try {
//            loginManager.printloginUsers();
//            loginManager.setSession(httpSession, loginKey);
//        }catch(Exception e) {
//            System.out.println(e.getLocalizedMessage());
//        }
//        
//        logger.debug("CommonController >>>>>>>>>>> 접촉구분 : SSO");
//        logger.debug("CommonController >>>>>>>>>>> 세션유무 : "+loginManager.isUsing(userInfo.getUserId()));  
//             
//        loginProcess(userInfo, skinInfo, request, response);
//
//        return null;
//    }
    
    /**
     * 다시로그인처리(중복된 세션이 존재했을 경우 다시 로그인)
     * 
     * @param request
     * @param response
     * @return ModelAndView
     * @throws Exception
     */
//    @RequestMapping(value="/relogin.do")
//    public ModelAndView relogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        
//        String userId = (String)request.getSession().getAttribute("USER_ID");
//        String userPw = (String)request.getSession().getAttribute("USER_PW");
//        
//        if (!StringUtil.null2void(userId).equals(""))
//        {
//            loginManager = LoginManager.getInstance();
//            
//            UserVO userVO = new UserVO();
//            userVO.setUserId(userId);
//            userVO.setPwd(userPw);
//            
//            UserVO userInfo  = loginService.getUserInfo(userVO, false);            
//            SkinMstVO skinInfo = commonService.getSkinInfo();
//            
//            HttpSession httpSession = request.getSession(true);
//            
//            httpSession.setAttribute("USER_ID", userId);
//            httpSession.setAttribute("USER_PW", userPw);
//
//            String localIP = request.getRemoteAddr();
//            String loginKey = userId + ";" + localIP;
//
//            try {
//                loginManager.setSession(httpSession, loginKey);
//            }catch(Exception e) {
//                System.out.println(e.getLocalizedMessage());
//            }
//
//            if(userInfo != null && userInfo.getCnfmYn().equals("N")){
//                UserSession userSession = new UserSession(userInfo, skinInfo);      
//                WebUtils.setSessionAttribute(request, "userSession", userSession);
//                ModelAndView mav =  new ModelAndView("/loginform", "userInfo", userInfo);
//                return mav;
//            }else{
//                loginProcess(userInfo, skinInfo, request, response);     
//            }
//        }
//        
//        return null;
//    }
    
    /**
     * 로그인 후 처리
     * 
     * @param request
     * @param response
     * @return ModelAndView
     * @throws Exception
     */
//    @RequestMapping(value="/loginProcess.do")
//    public ModelAndView loginProcess(UserVO userInfo, SkinMstVO skin, HttpServletRequest request, HttpServletResponse response) throws Exception {
//        
//    	UserSession userSession = new UserSession(userInfo, skin);      
//        WebUtils.setSessionAttribute(request, "userSession", userSession);
//        
//        try {
//            loadDate();
//            
//            // 사용자 접속 로그 기록
//            LoginLogVO loginLogVO = new LoginLogVO();
//            loginLogVO.setUserId(userInfo.getUserId());
//            loginLogVO.setCnctPath(request.getRequestURI());
//            loginLogVO.setCnctStrtDd(SYSTEM.getInstance().getDate() + "" + SYSTEM.getInstance().getTime());
//            loginLogVO.setCnctEndDd("");
//            loginLogVO.setIpPath(request.getRemoteAddr());
//            loginLogVO.setCnctYn("Y");  
//            loginLogVO.setLoginYn("Y");
//            loginService.updateUserLogin(loginLogVO);
//        }
//        catch(Exception e) {
//            
//        }
//        
////        String adGotoPage   = StringUtil.getParam(request, "adGotoPage", "");
//        String mainPage     = StringUtil.getParam(request, "url", "");
//        
////        if(!("").equals(adGotoPage)) adGotoPage = EncryptUtil.DecodeBySType(adGotoPage);
////        
////        if(("").equals(adGotoPage)) {
//        	logger.debug("getContextPath()="+ request.getContextPath()+ "/vocindex.voc?url="+mainPage);
//            response.sendRedirect(request.getContextPath()+ "/vocindex.voc?url="+mainPage);
////        }
////        else {
////            if(!"".equals(cstNo)){       //연계시스템 VOC등록버튼 클릭시
////                response.sendRedirect(request.getContextPath()+ adGotoPage + "?srchCstName="+cstNo);
////            }
////            else if(!"".equals(vocId)){ //그룹웨어 이슈VOC상세내용 클릭시
////                response.sendRedirect(request.getContextPath()+ adGotoPage + "?vocId="+vocId);
////            }
////            else{
////                response.sendRedirect(request.getContextPath()+ adGotoPage);
////            }
////        }
//        
//        return null;
//    }
}
