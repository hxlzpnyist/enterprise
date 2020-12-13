package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;
import lombok.Data;

/**
 * 案例
 */
@Data
public class Case extends PageModel {

    /**
     * 案例分类id
     */
    private int typeid;

    /**
     * 案例标题
     */
    private String title;

    /**
     * 案例内容
     */
    private String content;

    /**
     * 缩列图
     */
    private String image;

    /**
     * 创建时间
     */
    private String createtime;

    /**
     * 点击次数
     */
    private Integer hit;

    /**
     * 是否显示
     */
    private String display;

    @Override
    public void clean() {
        super.clean();
        title = null;
        content = null;
        createtime = null;
        hit = null;
        display = null;
        image = null;
    }

}
