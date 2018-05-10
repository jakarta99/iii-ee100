package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.model.ResponseForAnimour;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdoptionRestController {

	@Autowired
	AdoptionService adoptionService;

	@Autowired
	AnimalService animalService;

	@Autowired
	ResponseForAnimour response;

	private PageInfo defaultPageInfo = new PageInfo(1, 8);

	// 查詢全部
	@RequestMapping(value = { "/halfway/adoption" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> listAdoption(PageInfo pageinfo) {
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<Adoption> page = adoptionService.getAdoptionPage(pageinfo); // pageNumber=頁數 pageSize=一頁幾筆資料
		List<Adoption> adoptions = page.getContent();
		response.setData(adoptions);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 新增
	@RequestMapping(value = { "/halfway/adoption" }, method = RequestMethod.POST)
	public ResponseEntity<?> addAdoption(@RequestBody Adoption adoption) {

		// 設定送出時間
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		adoption.setRequestDate(ts);
		// 設定登入的會員
		Member current = animalService.getCurrentMember();
		adoption.setMember(current);

		adoptionService.insert(adoption);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 刪除
	@RequestMapping(value = { "/halfway/adoption/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteAdoption(@PathVariable Long id) {
		Adoption ad = adoptionService.getOne(id);
		if (ad != null) {
			adoptionService.delete(id);
		}
		return new ResponseEntity<Adoption>(HttpStatus.OK);
	}

	// 查詢一筆
	@RequestMapping(value = { "/halfway/adoption/{id}" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public Adoption oneAnimal(@PathVariable Long id) {
		Adoption ad = adoptionService.getOne(id);
		return ad;
	}

	// 取得一年內認養次數 (尚未完成)
	@RequestMapping(value = { "/halfway/adoption/check/{member}" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public Boolean checkLimit(@PathVariable Long id) {
		Adoption ad = adoptionService.getOne(id);
		return null;
	}
}