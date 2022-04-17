package com.lithan.carproject.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lithan.carproject.dto.Car;

public interface CarRepository extends JpaRepository<Car, Integer> {
	List<Car> findByCarModel(String model);

	public List<Car> findByCarPriceBetween(Double minp, Double maxp);
}
