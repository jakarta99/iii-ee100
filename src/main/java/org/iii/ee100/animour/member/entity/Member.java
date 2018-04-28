package org.iii.ee100.animour.member.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "MEMBER")
public class Member extends GenericEntity implements UserDetails {

	@Column(name = "ACCOUNT")
	private String account;// 帳號
	@Column(name = "PASSWORD")
	private String password;// 密碼

	@Column(name = "NAME")
	private String name;// 姓名
	@Column(name = "NICKNAME")
	private String nickname;// 暱稱

	@Column(name = "CELL")
	private String cell;// 手機
	@Column(name = "EMAIL")
	private String email;// 信箱
	@Column(name = "ADDRESS")
	private String address;// 地址
	@Column(name = "REGISTRATIONTIME")
	private java.sql.Timestamp registrationTime;
	@Column(name = "FREQ")
	private Integer freq;
	@Column(name = "STATUS")//(0:封鎖,1:使用)
	private Integer status;
	@Column(name = "ROLE")//("member","admin")
	private String role;
	
	

//	@JsonIgnore
//	@OneToMany(fetch=FetchType.EAGER,mappedBy = "member", cascade = { CascadeType.ALL })
//	private List<Animal> animals;
//
//	@JsonIgnore
//	@OneToOne(mappedBy = "member", cascade = { CascadeType.ALL })
//	private Adoption adoption;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<>();
		GrantedAuthority auth = new SimpleGrantedAuthority("ROLE_Member");
		if(account.equals("admin")) {
			auth = new SimpleGrantedAuthority("ROLE_Admin");
		}		
		authorities.add(auth);
		return authorities;
	}

	@Override
	public String getUsername() {
		return account;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {

		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
