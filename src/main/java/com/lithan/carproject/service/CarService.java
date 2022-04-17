package com.lithan.carproject.service;

import java.util.List;

import com.lithan.carproject.dto.Car;
import com.lithan.carproject.dto.User;

public interface CarService {
	
	public void addCar(Car car);
	public List<Car> showAllCar();
	public void deleteCar(Integer id);
	public Car searchProduct(Integer id);
	public Car updateData(Integer id);
	public List<Car> searchCar(String select,String model,Double min,Double max);
	public List<User> showAllUser();
}
