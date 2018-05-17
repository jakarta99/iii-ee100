package org.iii.ee100.animour.member.web;

import java.util.List;

import org.iii.ee100.animour.forum.entity.ThumbsUp;
import org.iii.ee100.animour.member.Mail;
import org.iii.ee100.animour.member.dao.MyFriendDao;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.entity.MyFriend;
import org.iii.ee100.animour.member.service.EmailService;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/member/all")
public class MemberRestfulController {
	@Autowired
	MemberService memberService;

	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public List<Member> findAll() {
		List<Member> members = memberService.getAll();
		return members;
	}

	@RequestMapping(value = "/api/member/{account}", method = RequestMethod.GET, produces = { "application/json" })
	public Member findByAccount(@PathVariable("account") String account) {
		return memberService.getOneByAccount(account);
	}

	@RequestMapping(value = "/member/{id}", method = RequestMethod.GET, produces = { "application/json" })
	public Member findById(@PathVariable("id") Long id) {
		return memberService.getOne(id);
	}

	//不確定能不能用
//	@RequestMapping(value = "/member/{id}", method = RequestMethod.PUT, consumes = { "application/json" })
//	public ResponseEntity<?> updateReservation(@PathVariable(value = "id") Long id, @Valid @RequestBody Member member) {
//		memberService.insert(member);
//		return new ResponseEntity<Member>(member, HttpStatus.OK);
//
//	}

	@Autowired	
	EmailService emailService;
	
	@RequestMapping(value="/adminsendmail",method = RequestMethod.POST)
	public ResponseEntity<?> newMail(Mail mail) {
		String email=memberService.getOneByAccount(mail.getAccount()).getEmail();
		emailService.sendEmail(email, mail.getSubject(), mail.getContext());
		return new ResponseEntity<Mail>(mail,HttpStatus.OK);
	}
	
	
	@RequestMapping(value = { "/addfriend" }, method = RequestMethod.POST)
	public ResponseEntity<?> addFriend(MyFriend friend) {
		friend.setMember(memberService.getNewCurrentMember());
		if(memberService.findByMemberIdAndFriendId(friend.getMember().getId(),friend.getFriendId()) ==null) {
			friend.setLove(true);
			memberService.insertFriend(friend);			
			return new ResponseEntity<MyFriend>(friend, HttpStatus.OK); 
		}else {
			memberService.updateFriend(friend);
			MyFriend newFriend=memberService.findByMemberIdAndFriendId(friend.getMember().getId(),friend.getFriendId());
			return new ResponseEntity<MyFriend>(newFriend, HttpStatus.OK); 
		}

	}
	
	@RequestMapping(value="/member/friend/{Id}",method = RequestMethod.GET, produces = { "application/json" })
	public MyFriend heartStatus(@PathVariable String Id){
		Long friendId=Long.valueOf(Id);
		Long memberId =memberService.getNewCurrentMember().getId();
		MyFriend friend= memberService.findByMemberIdAndFriendId(memberId, friendId);
		if(friend==null) {
			System.out.println("friend.id:"+friend);
			return friend; 

		}else {
			System.out.println("friend.id:"+friend.getId()+"friend.love:"+friend.getLove());

			return friend; 

		}
	}
}
