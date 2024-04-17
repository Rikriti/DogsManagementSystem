package com.rikriti.DMS.repos;

import org.springframework.data.repository.CrudRepository;

import com.rikriti.DMS.Models.Dog;

public interface DogRepository extends CrudRepository<Dog,Integer> {
	
}
