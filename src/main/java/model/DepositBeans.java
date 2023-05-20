package model;

import java.io.Serializable;

public class DepositBeans implements Serializable {
	private static final long serialVersionUID = 1L;

	private int userId;
	private int dep_id;
	private int dep_value;
	private int dep_sum;
	private String budget_id;
	private String assets_id;
	private String date;
	private String content;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getDep_id() {
		return dep_id;
	}

	public void setDep_id(int dep_id) {
		this.dep_id = dep_id;
	}

	public int getDep_value() {
		return dep_value;
	}

	public void setDep_value(int dep_value) {
		this.dep_value = dep_value;
	}

	public int getDep_sum() {
		return dep_sum;
	}

	public void setDep_sum(int dep_sum) {
		this.dep_sum = dep_sum;
	}
	
	public String getBudget_id() {
		return budget_id;
	}

	public void setBudget_id(String budget_id) {
		this.budget_id = budget_id;
	}

	public String getAssets_id() {
		return assets_id;
	}

	public void setAssets_id(String assets_id) {
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