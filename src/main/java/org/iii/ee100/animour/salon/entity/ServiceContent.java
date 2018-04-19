package org.iii.ee100.animour.salon.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Entity
@Table(name="SERVICECONTENT")
@Data
public class ServiceContent extends GenericEntity{

	@Column(name ="CONTENT")
	String Content;
	@Column(name ="TIME")
	Integer time;
	@Column(name ="PRICE")
	Integer price;
	
	
	

	
	}