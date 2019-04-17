/**
*
* Copyright (C) 2009 RedSoft. All Rights
*
* Created on   : 2012-6-20 10:22:58
* Target OS    : Java VM 1.5.0
*
* ------------------------------
* Change Revision
* ------------------------------
* Author   : RedSoft
* Date     : 2012-6-20 10:22:58
* Revision : 1.0   First release.
* -------------------------------
* Class Description
* -------------------------------
*
*/
package base.prj.common.login.service.impl;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("loginDAO")
public class LoginDAO  {

	
	private SqlSession sqlSession;
	

}