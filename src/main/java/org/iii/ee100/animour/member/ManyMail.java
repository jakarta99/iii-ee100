package org.iii.ee100.animour.member;

import java.util.List;

public class ManyMail {

    List<String> account;
	
	String subject;
	
	String context;

	public List<String> getAccount() {
		return account;
	}

	public void setAccount(List<String> account) {
		this.account = account;
	}


	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}
}
