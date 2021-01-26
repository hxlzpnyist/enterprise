package com.enterprise.controller.xiping;

import com.enterprise.cache.FrontCache;
import com.enterprise.entity.*;
import com.enterprise.entity.page.PageModel;
import com.enterprise.service.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 主页
 */
@Controller
@RequestMapping("/")
public class XiPinIndexAction {

    @Autowired
    private FrontCache frontCache;

    @Autowired
    private HomeService homeService;

    @Autowired
    private HomeFeatureService homeFeatureService;

    @Autowired
    private IndexImgService indexImgService;

    @Autowired
    private CaseTypeService caseTypeService;

    @Autowired
    private CaseService caseService;

    @Autowired
    private FriendService friendService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private BusinessService businessService;

    @Autowired
    private ContactService contactService;

    @Autowired
    private AboutService aboutService;

    @Autowired
    private AboutUserService aboutUserService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(@RequestParam(value = "caseType", required = false) Integer caseType, HttpServletRequest request) {

        // 门户滚动图片
        List<IndexImg> indexImgs = indexImgService.selectList(new IndexImg());
        request.setAttribute("indexImgs", indexImgs);

        // 案例分类
        List<CaseType> caseTypes = caseTypeService.selectList(new CaseType());
        request.setAttribute("caseTypes", caseTypes);

        // 当前案例分类下的案例，若未指定案例分类 则默认展示第一个案例分类
        if (caseType == null) {
            caseType = caseTypes.get(0).getId();
        }

        List<Case> cases = caseService.getByCaseTypeId(caseType);
        request.setAttribute("cases", cases);

        // 合作伙伴
        List<Friend> friends = friendService.selectList(new Friend());
        request.setAttribute("friends", friends);

        // 新闻 取最新的 4 条
        List<News> news = newsService.selectList(new News());
        request.setAttribute("news", news);

        return "/xipin/index";
    }

    /**
     * 跳转到新闻页
     *
     * @return
     */
    @RequestMapping(value = "/xipin/tonews", method = RequestMethod.GET)
    public String toNews() {
        return "/xipin/news";
    }

    @RequestMapping(value = "/xipin/tocase", method = RequestMethod.GET)
    public String toCase() {
        return "/xipin/case";
    }

    @RequestMapping(value = "/xipin/tobusiness", method = RequestMethod.GET)
    public String toBusiness(@RequestParam(value = "type", required = false) String type, HttpServletRequest request) {
        request.setAttribute("type", type);
        return "/xipin/business";
    }

    @RequestMapping(value = "/xipin/toabout", method = RequestMethod.GET)
    public String toAbout(HttpServletRequest request) {
        About about = aboutService.selectOne(new About());
        List<AboutUser> aboutUsers = aboutUserService.selectList(new AboutUser());

        request.setAttribute("about", about);
        request.setAttribute("aboutUsers", aboutUsers);

        return "/xipin/about";
    }

    @RequestMapping(value = "/xipin/tocontact", method = RequestMethod.GET)
    public String toContact(HttpServletRequest request) {
        Contact contact = contactService.selectOne(new Contact());
        request.setAttribute("contact", contact);

        return "/xipin/contact";
    }

    /**
     * 查询案例分类下的案例
     */
    @ResponseBody
    @RequestMapping(value = "/xipin/caseByType", method = RequestMethod.GET)
    public List<Case> listCaseTypes(@RequestParam(value = "caseType", required = false) Integer caseType) {
        List<Case> cases = caseService.getByCaseTypeId(caseType);
        return cases;
    }

    /**
     * 获取所有业务介绍
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/xipin/business", method = RequestMethod.GET)
    public List<Business> listBusiness() {
        List<Business> businesses = businessService.selectList(new Business());
        return businesses;
    }

    @ResponseBody
    @RequestMapping(value = "/xipin/businessInfo", method = RequestMethod.GET)
    public Business getBusinessById(@RequestParam("id") int id) {
        Business businesse = businessService.selectById(id);
        return businesse;
    }

    /**
     * 新闻列表
     *
     * @param pageNum
     * @param title
     * @param pageSize
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/xipin/news", method = RequestMethod.GET)
    public PageModel listNews(@RequestParam("pageNum") int pageNum, @RequestParam(value = "title", required = false) String title, @RequestParam("pageSize") int pageSize) {
        News news = new News();

        news.setTitle(title);
        news.setOffset(pageNum * pageSize);
        news.setPageSize(pageSize);

        PageModel page = newsService.selectPageList(news);

        if(page == null){
            page = new PageModel();
        }

        page.setPageNum(pageNum);
        page.setPagerSize((page.getTotal() + pageSize - 1) / pageSize);

        return page;
    }

    @ResponseBody
    @RequestMapping(value = "/xipin/cases", method = RequestMethod.GET)
    public PageModel listCase(@RequestParam("pageNum") int pageNum, @RequestParam("pageSize") int pageSize) {
        Case aCase = new Case();

        aCase.setOffset(pageNum * pageSize);
        aCase.setPageSize(pageSize);

        PageModel page = caseService.selectPageList(aCase);

        if(page == null){
            page = new PageModel();
        }

        page.setPageNum(pageNum);
        page.setPagerSize((page.getTotal() + pageSize - 1) / pageSize);

        return page;
    }


    @RequestMapping("/template/{style}")
    public String index(@PathVariable("style") String style) {
        return "/" + style + "/index";
    }

    @RequestMapping(value = "/xipin/case/info", method = RequestMethod.GET)
    public String getCaseById(@RequestParam("id") Integer id, HttpServletRequest request) {
        request.setAttribute("ca", caseService.selectById(id));
        return "/xipin/caseshow";
    }

    @RequestMapping(value = "/xipin/news/info", method = RequestMethod.GET)
    public String getNewsById(@RequestParam("id") Integer id, HttpServletRequest request) {
        request.setAttribute("news", newsService.selectById(id));
        return "/xipin/newsshow";
    }
}

