package com.zkteco.springboot.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Entity(name = "Device")
@Data
@Table(name = "Device")
public class Device 
{
	@Id
	
	private int id;
	
	@NotEmpty
	@Size(min = 5, message = "User name should have at least 5 charecters")
	private String deviceName;
	
	@NotEmpty
	@Size(min = 3, message = "User name should have at least 3 charecters")
	private String doorName;
	
	
	private Date date;
	
	@NotNull
	private boolean entry;
	
	private String entryAlias;
	
}


