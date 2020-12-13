package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;
import lombok.Data;

/**
 * 业务范围
 */
@Data
public class Business extends PageModel {

    /**
     * 业务标题
     */
    private String title;

    /**
     * 业务详情
     */
    private String content;

    /**
     * 创建时间
     */
    private String createtime;  //创建时间

    private String display;

    @Override
    public void clean() {
        super.clean();
        title = null;
        content = null;
        createtime = null;
        display = null;
    }

}
