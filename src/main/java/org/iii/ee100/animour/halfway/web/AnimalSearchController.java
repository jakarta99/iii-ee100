package org.iii.ee100.animour.halfway.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AnimalSearchController {

	@Autowired
	AnimalService animalservice;
	@Autowired
	AnimalDao animalDao;

	@RequestMapping(value="/queryByCity",method = { RequestMethod.GET })
	public String queryAnimalByCity(@RequestParam("city") City city, @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		
		Page<Animal> page = animalservice.getByCity(city, pageNumber, pageSize);
		model.addAttribute("animalpage", page);
		
		animalservice.updateAnimalCount();
		List<City> citys = new ArrayList<>();
		
		for (City cityforeach :  animalservice.getAllCity()) {
			if (cityforeach.getAnimalCount() >0) {
				citys.add(cityforeach);
			}
		}
		model.addAttribute("citys", citys);
		return "/halfway/halfwayIndex";
	}
	
	@RequestMapping(value="/queryContaining",method = { RequestMethod.GET })
	public String queryAnimalByName(@RequestParam("name") String name, @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		
		
		Page<Animal> page = animalservice.getAnimalConatainingPage(name, pageNumber, pageSize);
		model.addAttribute("animalpage", page);
		
		animalservice.updateAnimalCount();
		List<City> citys = new ArrayList<>();
		
		for (City city :  animalservice.getAllCity()) {
			if (city.getAnimalCount() >0) {
				citys.add(city);
			}
		}
		model.addAttribute("citys", citys);
		return "/halfway/halfwayIndex";
	}
	
	
	
	
	

//	@RequestMapping(value="", method= {RequestMethod.GET})
//	public Page<Animal> getEntryByPageable(@PageableDefault(value=2, sort= {"id"}, direction = Sort.Direction.DESC) Pageable pageable){
//		return animalDao.findAll(pageable);
//	}

}
