package com.lithan.carproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.carproject.dao.CarRepository;
import com.lithan.carproject.dao.UserRepository;
import com.lithan.carproject.dto.Car;
import com.lithan.carproject.dto.User;

@Service("storeservice")
public class CarServiceImpl implements CarService {

	@Autowired
	CarRepository carrepo;
	
	@Autowired
	UserRepository userrepo;

	@Override
	public void addCar(Car car) {
		// TODO Auto-generated method stub
		carrepo.save(car);
	}

	@Override
	public List<Car> showAllCar() {
		// TODO Auto-generated method stub
		List<Car> myAllCar = carrepo.findAll();
		return myAllCar;
	}



	@Override
	public Car searchProduct(Integer id) {
		// TODO Auto-generated method stub
		Optional<Car> myData = carrepo.findById(id);
		Car c = myData.get();
		return c;
	}

	@Override
	public void deleteCar(Integer id) {
		// TODO Auto-generated method stub
		carrepo.deleteById(id);
	}

	@Override
	public Car updateData(Integer id) {
		// TODO Auto-generated method stub
		Optional<Car> mydata = carrepo.findById(id);
		Car c = mydata.get();
		return c;
	}

	@Override
	public List<Car> searchCar(String select, String model, Double min, Double max) {
		// TODO Auto-generated method stub
		List<Car> allData;
		if(select.equals("model")) {
			allData=carrepo.findByCarModel(model);
		}else {
			allData=carrepo.findByCarPriceBetween(min, max);
		}
		return allData;
	}

	@Override
	public List<User> showAllUser() {
		// TODO Auto-generated method stub
		List<User> allUser = userrepo.findAll();
		return allUser;
	}
	
}
