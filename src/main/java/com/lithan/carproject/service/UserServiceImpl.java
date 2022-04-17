package com.lithan.carproject.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lithan.carproject.dao.UserRepository;
import com.lithan.carproject.dto.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	private PasswordEncoder passwordencoder;
	
	@Autowired
	public UserServiceImpl(PasswordEncoder pass) {
		// TODO Auto-generated constructor stub
		this.passwordencoder=pass;
	}
	
	@Autowired
	UserRepository userrepo;
	
	@Override
	public String addUser(User us) {
		// TODO Auto-generated method stub
		us.setRole("USER");
		us.setPassWord(passwordencoder.encode(us.getPassWord()));
		System.out.println(us);
		userrepo.save(us);
		return "The data has been successfully added.";
	}

	@Override
	public String updateUser(User u) {
		// TODO Auto-generated method stub
		u.setRole("USER");
		userrepo.save(u);
		return "The data has been updated.";
	}

	@Override
	public User updateData(Long id) {
		// TODO Auto-generated method stub
		Optional<User> my = userrepo.findById(id);
		User u = my.get();
		return u;
	}

	@Override
	public void deleteUser(Long id) {
		// TODO Auto-generated method stub
		userrepo.deleteById(id);
	}

	@Override
	public User UpdateaddUser(User us) {
		// TODO Auto-generated method stub
		userrepo.save(us);
		return us;
	}

}
