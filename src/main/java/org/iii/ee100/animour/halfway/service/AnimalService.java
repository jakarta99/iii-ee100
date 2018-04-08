package org.iii.ee100.animour.halfway.service;

import java.util.List;

import javax.transaction.Transactional;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class AnimalService {
	private static final int PAGE_SIZE = 50;
	
	@Autowired
	private AnimalDao animalDao;
	
	
	public void insert(Animal animal) {
		animalDao.save(animal);
	}

	public void update(Animal animal) {
		animalDao.save(animal);		
	}

	public void delete(Long id) {
		animalDao.delete(id);
	}

	public List<Animal> getAll() {
		return Lists.newArrayList(animalDao.findAll());
	}

	public Animal getOne(Long id) {
		return animalDao.findOne(id);
	}
	
	public List<Animal> getSix(){
		return animalDao.findTop6ByOrderByUploadDesc();
	}
	
	public List<Animal> getAllDesc(){
		return animalDao.findByOrderByUploadDesc();
	}
	
	public List<Animal> searchBySpecie(String specie){
		return animalDao.findBySpecieOrderByUploadDesc(specie);
	}

	public List<String> searchDistinctCity(){
		return animalDao.findDistinctCity();
	}

	public Integer getCityCount(String city) {
		return animalDao.findCityCount(city);
	}
	
	public List<Animal>  getByCity(String city){
		return animalDao.findByCity(city);
	}
	
	public Page<Animal> getAnimalPage(Integer pageNumber){
		PageRequest request = new PageRequest(pageNumber - 1, PAGE_SIZE, Sort.Direction.DESC, "upload");
		return animalDao.findAll(request);
	}
	
	
}
