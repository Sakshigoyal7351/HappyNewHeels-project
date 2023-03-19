package coms.HappyNewHeels.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coms.HappyNewHeels.model.User;
import coms.HappyNewHeels.repository.UserRepository;



@Service(value = "userService")//service interface  first letter is small
public class UserServiceImpl implements UserService{
	
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public List<User> fetchUserList() {
		System.out.println(userRepository.findAll().toString());
		return (List<User>) userRepository.findAll();
	}

	@Override
	public User saveUser(User user) {
		System.out.println("Save User");
		return userRepository.save(user);
	}

	@Override
	public void deleteByEmailId(String emailId) {
		 userRepository.deleteById(emailId);
	}

	@Override
	public User getUser(String emailId) {
		
		return userRepository.findById(emailId).get();
	}

	
	@Override
	public User getUser(String emailId, String password) {
		
		return userRepository.findByEmailIdAndPassword(emailId, password);
	}

	
	@Override
	public void updateUser(User user) {
		System.out.println(user.getEmailId() + user.getFirstName());
	if(userRepository.findById(user.getEmailId()).get() != null)
		
	   userRepository.save(user);
	System.out.println(user.getEmailId() + user.getFirstName());
		
	}

}
