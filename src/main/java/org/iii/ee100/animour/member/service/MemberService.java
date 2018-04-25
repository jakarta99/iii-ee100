package org.iii.ee100.animour.member.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

@Service
public class MemberService extends GenericService<Member> {

	@Autowired
	MemberDao memberDao;
	
	public void insert(Member member)  {
		memberDao.save(member);
	}

	public void update(String password,String name,String nickname,String cell,String email,String account)  {
		Member memberToUpdate = memberDao.findByAccount(account);
				memberToUpdate.setPassword(password);
				memberToUpdate.setName(name);
				memberToUpdate.setNickname(nickname);
				memberToUpdate.setCell(cell);
				memberToUpdate.setEmail(email);
				
		memberDao.save(memberToUpdate);
	}
	
	
	public void delete(String account) {
		Member deletemember = memberDao.findByAccount(account);
		deletemember.setStatus(0);
		memberDao.save(deletemember);

	}

	public Member getOne(Long id) {
		return memberDao.findOne(id);
	}

	public ArrayList<Member> getAll() {
		return (ArrayList<Member>) memberDao.findAll();
	}

	
	public Member getOneByAccount(String account) {
		return memberDao.findByAccount(account);
	}
	
	
	public UserDetails getCurrentMember() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal instanceof UserDetails) {
			return (UserDetails) principal;
		}else {
			return null;
		}
		
	}
}

