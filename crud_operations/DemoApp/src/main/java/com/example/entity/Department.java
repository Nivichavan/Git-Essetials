package com.example.entity;

import javax.persistence.Column;

//Java Program to Illustrate Department.java File

// Importing required package modules

// Importing required classes
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DEPARTMENT")
public class Department {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	@Column(name ="department_id")
	private Long departmentId;
	@Column(name ="department_name")
	private String departmentName;
	@Column(name ="department_address")
	private String departmentAddress;
	@Column(name ="department_code")
	private String departmentCode;

	public Long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Long departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getDepartmentAddress() {
		return departmentAddress;
	}

	public void setDepartmentAddress(String departmentAddress) {
		this.departmentAddress = departmentAddress;
	}

	public String getDepartmentCode() {
		return departmentCode;
	}

	public void setDepartmentCode(String departmentCode) {
		this.departmentCode = departmentCode;
	}

}
