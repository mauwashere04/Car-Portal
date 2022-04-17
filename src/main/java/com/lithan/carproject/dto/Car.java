package com.lithan.carproject.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="car_db")
public class Car {

	@Id
	private Integer carId;
	private String carRegNumber;
	private String carModel;
	private Double carPrice;
	@Column(name = "file_name")
	private String fileName;
	
	@Column(name = "file_path")
	private String filePath;
	
	@Column(name = "file_type")
	private String fileType;
	
	@Column(name = "file_size")
	private String fileSize;

	@Override
	public String toString() {
		return "Car [carId=" + carId + ", carRegNumber=" + carRegNumber + ", carModel=" + carModel + ", carPrice="
				+ carPrice + ", fileName=" + fileName + ", filePath=" + filePath
				+ ", fileType=" + fileType + ", fileSize=" + fileSize + "]";
	}
	
	
	public Car() {
		// TODO Auto-generated constructor stub
	}

	
	
	public Integer getCarId() {
		return carId;
	}
	public void setCarId(Integer carId) {
		this.carId = carId;
	}
	public String getCarRegNumber() {
		return carRegNumber;
	}
	public void setCarRegNumber(String carRegNumber) {
		this.carRegNumber = carRegNumber;
	}
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public Double getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(Double carPrice) {
		this.carPrice = carPrice;
	}

	public Car(Integer carId, String carRegNumber, String carModel, Double carPrice) {
		super();
		this.carId = carId;
		this.carRegNumber = carRegNumber;
		this.carModel = carModel;
		this.carPrice = carPrice;
	}
	
	public Car(String fileName, String filePath, String fileType, String fileSize) {
		super();
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileType = fileType;
		this.fileSize = fileSize;
	}



	public String getFileName() {
		return fileName;
	}


	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public String getFilePath() {
		return filePath;
	}


	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}


	public String getFileType() {
		return fileType;
	}


	public void setFileType(String fileType) {
		this.fileType = fileType;
	}


	public String getFileSize() {
		return fileSize;
	}


	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

}
