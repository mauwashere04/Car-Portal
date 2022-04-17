package com.lithan.carproject.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.carproject.dao.CarRepository;
import com.lithan.carproject.dto.Car;
import com.lithan.carproject.dto.User;
import com.lithan.carproject.service.CarService;
import com.lithan.carproject.service.Customeservice;
import com.lithan.carproject.service.UserService;


@Controller
public class CarController {
	String msg;
	
	@Autowired
	CarService carservice;
	
	public static String uploadDirectory = System.getProperty("user.dir") + "/uploads";
	
	@Autowired
	CarRepository carrepo;
	
	@Autowired
	UserService uservice;
	
	@Autowired
	Customeservice cservice;
	
	@GetMapping(value = "/")
	public String myHomePage() {
		return "home";
	}
	
	@GetMapping(value = "myregister")
	public String getRegister(@ModelAttribute("myuser") User p) {
		return "register";
		
	}
	
	@PostMapping(value = "myregistration")
	public String addRegister(@ModelAttribute("myuser") User p) {
		uservice.addUser(p);
		System.out.println("User Added");
		return "redirect:/home";
		
	}
	
	@GetMapping(value = "/aboutus")
	public String myaboutPage() {
	return "About";
		}
	
	@GetMapping(value = "/contactus")
	public String mycontactPage() {
	return "Contact";
		}
	
	@GetMapping(value = "/apage")
	public String myAdminPage() {
		return "adminpage";
	}
	
	@GetMapping(value = "/upage")
	public String myUserPage() {
		return "userpage";
	}
	
	@GetMapping(value = "/add")
	public String addPage(@ModelAttribute("ant") Car c) {
		return "addcar";
	}
	
	@PostMapping (value = "/adddata")
	public String addCar(
			@RequestParam("carId") Integer carId,
			@RequestParam("carRegNumber") String carRegNumber,
			@RequestParam("carModel") String carModel,
			@RequestParam("carPrice") Double carPrice,
			@RequestParam("file") MultipartFile file) {
		
		String fileName = file.getOriginalFilename();
		String filePath = Paths.get(uploadDirectory, fileName).toString();
		String fileType = file.getContentType();
		long size = file.getSize();
		String fileSize = String.valueOf(size);
		
		try {
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
			stream.write(file.getBytes());
			stream.close();
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		Car c = new Car();
		c.setCarId(carId);
		c.setCarRegNumber(carRegNumber);
		c.setCarModel(carModel);
		c.setCarPrice(carPrice);
		c.setFileName(fileName);
		c.setFilePath(filePath);
		c.setFileSize(fileSize);
		c.setFileType(fileType);
		
		System.out.println(c);
		carservice.addCar(c);
		return "redirect:/show";
	}
	
	@GetMapping(value = "/add2")
	public String addPage2(@ModelAttribute("ant") Car c) {
		return "addcar";
	}
	
	@PostMapping (value = "/adddata2")
	public String addCar2(
			@RequestParam("carId") Integer carId,
			@RequestParam("carRegNumber") String carRegNumber,
			@RequestParam("carModel") String carModel,
			@RequestParam("carPrice") Double carPrice,
			@RequestParam("file") MultipartFile file) {
		
		String fileName = file.getOriginalFilename();
		String filePath = Paths.get(uploadDirectory, fileName).toString();
		String fileType = file.getContentType();
		long size = file.getSize();
		String fileSize = String.valueOf(size);
		
		try {
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
			stream.write(file.getBytes());
			stream.close();
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		Car c = new Car();
		c.setCarId(carId);
		c.setCarRegNumber(carRegNumber);
		c.setCarModel(carModel);
		c.setCarPrice(carPrice);
		c.setFileName(fileName);
		c.setFilePath(filePath);
		c.setFileSize(fileSize);
		c.setFileType(fileType);
		
		System.out.println(c);
		carservice.addCar(c);
		return "redirect:/upage";
	}
	
	@GetMapping(value = "/show")
	public ModelAndView getAllCar() {
		List<Car> myData = carservice.showAllCar();
		return new ModelAndView("datashow", "ant2", myData);
	}
	
	@GetMapping(value = "/show2")
	public ModelAndView getAllCar2() {
		List<Car> myData = carservice.showAllCar();
		return new ModelAndView("datashow2", "ant2", myData);
	}
	
	@RequestMapping("/delete")
	public String deletePage(@RequestParam int id) {
		carservice.deleteCar(id);
		return "redirect:/show";
	}
	
	@GetMapping(value = "update/{ant3}")
	public ModelAndView updatePage(@PathVariable("ant3") Integer id) {
		Car c = carservice.searchProduct(id);
		System.out.println("Updating");
		return new ModelAndView("updatecar", "ant4", c);
	}
	
	@PostMapping(value = "update/dataupdate")
	public String updateData(@RequestParam("carId") Integer carId,
			@RequestParam("carRegNumber") String carRegNumber,
			@RequestParam("carModel") String carModel,
			@RequestParam("carPrice") Double carPrice,
			@RequestParam("file") MultipartFile file) {
		System.out.println(file);
		String fileName = file.getOriginalFilename();
		String filePath = Paths.get(uploadDirectory, fileName).toString();
		String fileType = file.getContentType();
		long size = file.getSize();
		String fileSize = String.valueOf(size);
		
		try {
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
			stream.write(file.getBytes());
			stream.close();
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		Car c = new Car();
		c.setCarId(carId);
		c.setCarRegNumber(carRegNumber);
		c.setCarModel(carModel);
		c.setCarPrice(carPrice);
		c.setFileName(fileName);
		c.setFilePath(filePath);
		c.setFileSize(fileSize);
		c.setFileType(fileType);
		
		System.out.println(c);
		carservice.addCar(c);
		return "redirect:/show";
	}
	
	@GetMapping(value = "search")
	public String getSearchPage() {

		return "searchcar";
	}
	@GetMapping(value = "searchpage/{data}")
	public String getSearchPage(@PathVariable("data") String my
			,Map<String,String> mymap) {
		msg=my;
	   mymap.put("keydata",my);
		return "searchcar";
	}
	@GetMapping(value = "/searchpage/searchmodel")
	public ModelAndView searchCarModel(
			@RequestParam("cmodel") String model
			) {
		System.out.println("in search page"+model);
		List<Car> dataAll=carservice.searchCar(msg, model, 0.0,0.0);
		System.out.println(dataAll);
		return new ModelAndView("showpage", "Tony", dataAll);
		
	}
	@GetMapping(value = "/searchpage/searchprice")
	public ModelAndView searchCarPrice(
			@RequestParam("cmin") Double min,
			@RequestParam("cmax") Double max
			) {
		
		List<Car> dataAll=carservice.searchCar(msg,"",min,max);
		return new ModelAndView("showpage", "Tony", dataAll);
	}
	
	@GetMapping(value = "/usershow")
	public ModelAndView AdminlistUser() {
		List<User> myData=carservice.showAllUser();
		return new ModelAndView("userlist","show", myData);
	}
		
	@GetMapping(value ="/deleteuser")
	public String deletelistUser(@RequestParam("userId") Long Id) {
		uservice.deleteUser(Id);
		return "redirect:/listuser";
	}
	
	@GetMapping(value = "/listuser/update/{id}")
	public ModelAndView updatelistUserPage(@PathVariable("id") Long id) {
		User myData=uservice.updateData(id);
		return new ModelAndView("userlistupdate","update", myData);	
	}
	
	@PostMapping(value = "/listuser/update/listuserupdate")
	public String listUserupdateData(
			@RequestParam("userId") Long userId,
			@RequestParam("userName") String userName,
			@RequestParam("passWord") String passWord,
			@RequestParam("mailid") String mailid,
			@RequestParam("role") String role
			)
			 {
		System.out.println(userId+" "+userName+" "+passWord+" "+mailid+" "+role);
		User u = new User(userId,userName,passWord,mailid,role);
		uservice.UpdateaddUser(u);
		System.out.println(u);
		return "redirect:/listuser";
	}
	
	@GetMapping(value="/userprofile")
	public ModelAndView updateProfile() {
	User u=	cservice.allUserData();
	
		return new ModelAndView("userupdate","ua",u);
		
	}
	@GetMapping(value = "myprofile")
	public String updateAction(
			@RequestParam("userId") Long userId,
			@RequestParam("userName") String userName,
			@RequestParam("mailid") String mailid,
			@RequestParam("passWord") String passWord) {
		
		User userUpdated=new User();
		userUpdated.setUserId(userId);
		userUpdated.setUserName(userName);
		userUpdated.setMailid(mailid);
		userUpdated.setPassWord(passWord);
		
		uservice.updateUser(userUpdated);
		return "redirect:/upage";
		
	}

}