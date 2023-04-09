package model;

import java.io.Serializable;

public class DepositBeans implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String userId;
	private String dep_value;
	private String budget_id;
	private String assets_id;
	private String date;
	private String content;
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getDepValue() {
		return dep_value;
	}
	
	public void setDepValue(String dep_value) {
		this.dep_value = dep_value;
	}

	public String getBudgetId() {
		return budget_id;
	}
	
	public void setBudgetId(String budget_id) {
		this.budget_id = budget_id;
	}
	
	public String getAssetsId() {
		return assets_id;
	}
	
	public void setAssetsId(String assets_id) {
		this.assets_id = assets_id;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
}