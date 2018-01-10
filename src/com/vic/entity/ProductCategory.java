package com.vic.entity;

public class ProductCategory {
	private int id;//主键
	private String name;//名称
	private int parentId;//父级目录
	private int type;//级别（一级，二级，三级）
	private String iconClass;//图标
	
	public ProductCategory() {
		super();
	}

	public ProductCategory(int id, String name, int parentId, int type, String iconClass) {
		super();
		this.id = id;
		this.name = name;
		this.parentId = parentId;
		this.type = type;
		this.iconClass = iconClass;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getIconClass() {
		return iconClass;
	}

	public void setIconClass(String iconClass) {
		this.iconClass = iconClass;
	}
	
	
}
