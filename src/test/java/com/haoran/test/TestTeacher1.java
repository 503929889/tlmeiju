package com.haoran.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haoran.meiju.dao.ITypeDao;
import com.haoran.meiju.entity.User;
import com.haoran.meiju.entity.Users;
import com.haoran.meiju.service.IContentService;
import com.haoran.meiju.service.IDownloadInformationService;
import com.haoran.meiju.service.IMessageService;
import com.haoran.meiju.service.ITitleService;
import com.haoran.meiju.service.MeijuService;
import com.haoran.meiju.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"}) 
public class TestTeacher1{

	@Autowired
	private UserService userService;
	
	@Autowired
	private IContentService contentService;
	
	@Autowired
	private ITitleService titleService;
	
	@Autowired
	private IMessageService messageService; 
	
	@Autowired
	private IDownloadInformationService downloadInformationService;
	
	@Test
	public void getByid(){
		Users user=new Users();
		user.setNickname("兰陵王1");
		user.setReg_ip("192.168.0.1");
		System.out.println("ddd".contains(" "));
		System.out.println(userService.addUser(user));
		System.out.println(userService.isExistUser("  兰陵王 ".trim()));
	}
	@Test
	public void testTitleService(){
		System.out.println(titleService.getPageByNameList("明", 1, 12));
	}
	
}
