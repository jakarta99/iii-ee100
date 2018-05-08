package org.iii.ee100.animour.member.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Past;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "NOTICE")
public class Notice extends GenericEntity{

	@ManyToOne
	@JoinColumn(name = "MEMBER_ID", referencedColumnName = "ID")
	private Member member;
	
	@Column(name = "NOTICETIME")
	private java.sql.Timestamp noticeTime;
	
	@Column(name = "STATUS")
	private boolean status;
	
	@Column(name = "DETAIL")
	private boolean detail;

}
