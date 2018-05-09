﻿package org.iii.ee100.animour.member.web;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.Password;
import org.iii.ee100.animour.member.entity.Member;
//import org.iii.ee100.animour.member.service.EmailService;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.BindingResultUtils;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@Autowired
	AnimalService animalService;

	// 導向註冊頁面
	@RequestMapping(value = "/sign_up", method = RequestMethod.GET)
	public String sign(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "/member/register_original";

	}

	// 送出註冊資料=新增會員
	@RequestMapping(value = "/sign_up", method = RequestMethod.POST)
	public String register(@Valid @ModelAttribute("member") Member member, BindingResult bindingResult) {
		if (bindingResult.hasErrors() || 
				memberService.emailExist(member.getEmail()) ||
				memberService.getOneByAccount(member.getUsername())!=null) {
            List<FieldError> errorList = bindingResult.getFieldErrors();
            for(FieldError error : errorList){
            	System.out.println("error-param:"+error.getField());
                System.out.println("error-message:"+error.getDefaultMessage());
            }
			
			if (memberService.emailExist(member.getEmail())) {bindingResult.rejectValue("email","email message", "email exist");}
			if (memberService.getOneByAccount(member.getUsername())!=null) {bindingResult.rejectValue("account","account message", "帳號重複");}

			return "/member/register_original";
		}		
		else {
			member.setRegistrationTime(new Timestamp(System.currentTimeMillis()));
			member.setStatus(1);
			memberService.insert(member);
			return "redirect:/";// 註冊成功跳轉 login
		}
	}

	// <會員>(get)修改個人資料頁面
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Model model) {
		Member userDetails = memberService.getNewCurrentMember();
		model.addAttribute("member", userDetails);
		return "/member/update";
	}

	// <會員>(post)修改個人資料頁面
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatemember(@Valid Member member, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "/member/update";
		} else {
			memberService.update(member);
			return "redirect:/";
		}
	}

	// <會員>(get)修改密碼頁面
	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public String changePassword() {
		return "/member/updatepassword";
	}

	// <會員>(post)修改密碼頁面
	@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public String updatePassword(@Valid Password password,BindingResult result,Map<String,Object> map) {
		if(memberService.getNewCurrentMember().getPassword().equals(password.getOldpassword())) {
			if(result.hasErrors()) {
				map.put("newpassword", "請輸入3-10");
				return "/member/updatepassword";
			}
			else {
				memberService.update(memberService.getNewCurrentMember(), password.getNewpassword());
				return "redirect:/logout";
			}
		}
		else {
			result.rejectValue("oldpassword", "oldpassword", "請確定密碼");
			map.put("oldpassword", result.getFieldError("oldpassword").getDefaultMessage());
			map.put("newpassword", "請輸入3-10");
			return "/member/updatepassword";	
			
		}

	}

	// 刪除會員(管理員才有資格)
	@RequestMapping(value = "/deletemember", method = RequestMethod.POST)
	public String delete(String account, Model model) {
		memberService.delete(account);
		return "redirect:/admin/user";// 回到主頁
	}

	// 列出(全部)會員
	@RequestMapping("/users")
	public String findAll() {
		return "/member/users";// 先傳送頁面
	}

	// 顯示個人首頁
	@RequestMapping(value = "/{account}", method = RequestMethod.GET)
	public String profile(Model model, @PathVariable String account) {
		Member userDetails = memberService.getOneByAccount(account);
		model.addAttribute("member", userDetails);

		List<Animal> animalls = animalService.getHomepageAnimalList(userDetails.getId());
		model.addAttribute("animalls", animalls);

		return "/member/homepage";

	}

	// 前往後台頁
    @PreAuthorize("hasRole('Admin')")
	@RequestMapping(value = "/admin/member", method = RequestMethod.GET)
	public String admin() {
		return "/admin/member/admin";

	}

	@RequestMapping(value = "/admin/user", method = RequestMethod.GET)
	public String usermange() {
		return "/member/back_user";

	}
	
	
	// 前往mail寄信頁面
		@RequestMapping(value = "/mailto", method = RequestMethod.GET)
		public String mailPage() {
			return "/member/mail";

		}
		
//		@Autowired
//		EmailService mailService;
//		
//		@RequestMapping(value = "/mailto", method = RequestMethod.POST)
//		public String mailSussese(@RequestParam(value="email") String email,
//				@RequestParam(value="subject") String subject,
//				@RequestParam(value="text") String text) {
//			mailService.sendEmail(email,subject, text);
//			return "/member/mail";
//		}
}
