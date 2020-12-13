package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;
import lombok.Data;

/**
 * 合作伙伴
 */
@Data
public class Friend extends PageModel {

    /**
     * 案例标题
     */
    private String title;

    /**
     * 缩列图
     */
    private String image;

    /**
     * 创建时间
     */
    private String createtime;

    /**
     * 是否显示
     */
    private String display;

    @Override
    public void clean() {
        super.clean();
        title = null;
        createtime = null;
        display = null;
        image = null;
    }

}
