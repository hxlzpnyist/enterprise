package com.enterprise.controller.xiping;

import com.enterprise.cache.FrontCache;
import com.enterprise.entity.Home;
import com.enterprise.entity.HomeFeature;
import com.enterprise.service.HomeFeatureService;
import com.enterprise.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 主页
 */
@Controller
@RequestMapping("/xipin")
public class XiPinIndexAction {

    @Autowired
    private FrontCache frontCache;

    @Autowired
    private HomeService homeService;

    @Autowired
    private HomeFeatureService homeFeatureService;

    @RequestMapping({"/", "/index"})
    public String index(HttpServletRequest request) {
        return "/xipin/index";
    }


    @RequestMapping("/template/{style}")
    public String index(@PathVariable("style") String style) {
        return "/" + style + "/index";
    }


}

