package com.flysnow.login;

import com.flysnow.common.util.TokenUtil;
import com.flysnow.login.model.LoginUser;
import com.flysnow.login.service.LoginService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath:config/spring/spring-service.xml",
        "classpath:config/spring/spring-mybatis.xml",
        "classpath:config/spring/login-*.xml",
        "classpath:config/spring/authority-dao.xml"
})
public class LoginServiceImplTest {
    @Autowired
    private LoginService loginService;

    @Test
    public void testLogin() throws Exception {
        String userAccount = "admin";
        String password = "111111";
        String token = TokenUtil.genToken(userAccount, password);
        LoginUser loginUser = loginService.checkUserAuth(userAccount, password, token);
        System.out.println(loginUser.getLoginStatus());
    }
}
