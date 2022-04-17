package com.lithan.carproject.service;

import com.lithan.carproject.dto.User;

public interface UserService {

	public String addUser(User us);
	public String updateUser(User us);
	public User updateData(Long id);
	public void deleteUser(Long id);
	public User UpdateaddUser(User us);
}
