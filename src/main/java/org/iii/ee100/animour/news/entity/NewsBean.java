package org.iii.ee100.animour.news.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="NEWSBEAN")
public class NewsBean {

	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	@Column(name="SEQNO")
	private Long seqno;
	@Column(name="SUBJECT")
	private String subject;
	@Column(name="CONTENT")
	private String content;
	@Column(name="PUBLISHTIME")
	private java.sql.Date publishTime;
	@Column(name="PUBLISHTIMEEND")
	private java.sql.Date publishTimeEnd;
	@Column(name="CREATEUSER")
	private String createUser;
	@Column(name="CREATETIME")
	private java.sql.Timestamp createTime;
	@Column(name="UPDATEUSER")
	private String updateUser;
	@Column(name="UPDATETIME")
	private java.sql.Timestamp updateTime;
	@Column(name="ISDEL")
	private String isDel;
	@Column(name="ISON")
	private String isOn;
	
	
	@Override
	public String toString() {
		return "NewsBean [seqno=" + seqno + ", subject=" + subject + ", content=" + content + ", publishTime="
				+ publishTime + ", publishTimeEnd=" + publishTimeEnd + ", createUser=" + createUser + ", createTime="
				+ createTime + "]";
	}
	public Long getSeqno() {
		return seqno;
	}
	public void setSeqno(Long seqno) {
		this.seqno = seqno;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public java.sql.Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(java.sql.Date publishTime) {
		this.publishTime = publishTime;
	}
	public java.sql.Date getPublishTimeEnd() {
		return publishTimeEnd;
	}
	public void setPublishTimeEnd(java.sql.Date publishTimeEnd) {
		this.publishTimeEnd = publishTimeEnd;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public java.sql.Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.sql.Timestamp createTime) {
		this.createTime = createTime;
	}
	public String getUpdateUser() {
		return updateUser;
	}
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	public java.sql.Timestamp getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(java.sql.Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public String getIsOn() {
		return isOn;
	}
	public void setIsOn(String isOn) {
		this.isOn = isOn;
	}

}
