package me.ilt.Bean;

public class smallTypeBeanTo {
private int id;
private String name;
private int bigTypeId;
private String remarks;
	private String  bigTypeName;

public smallTypeBeanTo() {
}

	public smallTypeBeanTo(int id, String name, int bigTypeId, String remarks, String bigTypeName) {
		this.id = id;
		this.name = name;
		this.bigTypeId = bigTypeId;
		this.remarks = remarks;
		this.bigTypeName = bigTypeName;
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
public int getBigTypeId() {
	return bigTypeId;
}
public void setBigTypeId(int bigTypeId) {
	this.bigTypeId = bigTypeId;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}

	public String getBigTypeName() {
		return bigTypeName;
	}

	public void setBigTypeName(String bigTypeName) {
		this.bigTypeName = bigTypeName;
	}
}
