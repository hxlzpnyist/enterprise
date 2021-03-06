package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;
import lombok.Data;

import java.text.SimpleDateFormat;

/**
 * 文章实体类
 */
@Data
public class News extends PageModel {

    private String title;       //文章标题

    private String content;     //文章内容

    private String createtime;  //创建时间

    private Integer hit;         //点击次数

    private String display;

    private String viewTime;

    @Override
    public void clean() {
        super.clean();
        title = null;
        content = null;
        createtime = null;
        hit = null;
        display = null;
    }

    public String getViewTime() {
        return createtime.split(" ")[0];
    }
}
