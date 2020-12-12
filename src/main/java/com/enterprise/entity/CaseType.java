package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;
import lombok.Data;

/**
 * 案例分类
 */
@Data
public class CaseType extends PageModel {

    /**
     * 分类名称
     */
    private String name;

    /**
     * 创建时间
     */
    private String createtime;  //创建时间

    /**
     * 是否显示
     */
    private String display;

    /**
     * 排序
     */
    private Integer sort;

    @Override
    public void clean() {
        super.clean();

        name = null;
        createtime = null;
        display = null;
        sort = null;
    }

}
