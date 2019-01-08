package com.flysnow.base;

import com.flysnow.common.util.JsonUtils;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.context.WebApplicationContext;

import java.util.HashMap;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath:config/spring/spring-mvc.xml",
        "classpath:config/spring/spring-mybatis.xml",
        "classpath:config/spring/spring-service.xml",
        "classpath:config/spring/*-dao.xml",
        "classpath:config/spring/*-service.xml"
})
@WebAppConfiguration
@Rollback
@Transactional
public class BaseTest {

    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    private MockMvc mockMvc;

    @Autowired
    private WebApplicationContext webApplicatoinContext;

    @Before
    public void setUp() throws Exception {
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicatoinContext).build();
    }

    protected String performGet(String urlTemplate, String data) throws Exception {
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("data", data);
        return perform(HttpMethod.GET, urlTemplate, params);
    }

    protected String performGet(String urlTemplate, Map<String, String> dataMap) throws Exception {
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        for (String key : dataMap.keySet()) {
            params.add(key, dataMap.get(key));
        }
        return perform(HttpMethod.GET, urlTemplate, params);
    }

    protected String performPost(String urlTemplate, String data) throws Exception {
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("data", data);
        return perform(HttpMethod.POST, urlTemplate, params);
    }

    protected String performPost(String urlTemplate, Map<String, String> dataMap) throws Exception {
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        for (String key : dataMap.keySet()) {
            params.add(key, dataMap.get(key));
        }
        return perform(HttpMethod.POST, urlTemplate, params);
    }

    private String perform(HttpMethod httpMethod, String urlTemplate, MultiValueMap<String, String> params) throws Exception {
        MockHttpServletRequestBuilder mockHttp = MockMvcRequestBuilders.request(httpMethod, urlTemplate);
        mockHttp.contentType(MediaType.APPLICATION_FORM_URLENCODED);
        mockHttp.params(params);
        ResultActions resultActions = mockMvc.perform(mockHttp);
        //resultActions.andExpect(MockMvcResultMatchers.constant().isOk());
        //resultActions.andDo(MockMvcResultHandlers.print());
        MvcResult mvcResult = resultActions.andReturn();
        String result = mvcResult.getResponse().getContentAsString();
        return result;
    }
}
