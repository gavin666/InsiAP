package org.jeecgframework.core.enums;

import org.jeecgframework.core.util.StringUtil;

/**
 * ACEInsiAP样式类型
 *
 * @author Gavin
 */
public enum SysACEInsiAPIconEnum {
	
	default_icon("default","menu-icon fa fa-list", "默认"),
	back_icon("back","icon-briefcase", "返回"),
	pie_icon("pie","menu-icon fa fa-file-o", "小饼状图"),
	pictures_icon("pictures","menu-icon fa fa-picture-o", "图片"),
	pencil_icon("pencil","menu-icon fa fa-pencil-square-o", "笔"),
	map_icon("map","menu-icon fa fa-file-o", "小地图"),
	group_add_icon("group_add","menu-icon fa fa-list-alt", "组"),
	calculator_icon("calculator","menu-icon fa fa-tag", "计算器"),
	folder_icon("folder","menu-icon fa fa-list","文件夹");


    /**
     * 风格
     */
    private String style;
    
    
    /**
     * 样式
     */
    private String themes;
    /**
     * 描述
     */
    private String desc;

    private SysACEInsiAPIconEnum(String style, String themes, String desc) {
        this.style = style;
        this.themes = themes;
        this.desc = desc;
    }
    
	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getThemes() {
		return themes;
	}

	public void setThemes(String themes) {
		this.themes = themes;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}


	public static SysACEInsiAPIconEnum toEnum(String style) {
		if (StringUtil.isEmpty(style)) {
			//默认风格
			return default_icon;
        }
		for(SysACEInsiAPIconEnum item : SysACEInsiAPIconEnum.values()) {
			if(item.getStyle().equals(style)) {
				return item;
			}
		}
		//默认风格
		return default_icon;
	}

    public String toString() {
        return "{style: " + style + ", themes: " + themes + ", desc: " + desc +"}";
    }
}
