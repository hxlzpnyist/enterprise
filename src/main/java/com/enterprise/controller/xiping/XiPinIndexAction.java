package com.enterprise.controller.xiping;

import com.enterprise.cache.FrontCache;
import com.enterprise.entity.Home;
import com.enterprise.entity.HomeFeature;
import com.enterprise.entity.IndexImg;
import com.enterprise.service.HomeFeatureService;
import com.enterprise.service.HomeService;
import com.enterprise.service.IndexImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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

    @Autowired
    private IndexImgService indexImgService;


    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String index(@RequestParam("caseType") int caseType, HttpServletRequest request) {

        // 门户滚动图片
        List<IndexImg> indexImgs = indexImgService.selectList(new IndexImg());

        request.setAttribute("indexImgs", indexImgs);
        // 案例分类

        // 当前案例分类下的案例，若未指定案例分类 则默认展示第一个案例分类


        // 合作伙伴

        // 新闻 取最新的 4 条





        return "/xipin/index";
    }


    @RequestMapping("/template/{style}")
    public String index(@PathVariable("style") String style) {
        return "/" + style + "/index";
    }


}

