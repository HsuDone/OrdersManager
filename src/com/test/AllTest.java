package com.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.smbms.dao.bill.BillMapper;
import com.smbms.dao.provider.ProviderMapper;
import com.smbms.dao.user.UserMapper;
import com.smbms.pojo.Bill;
import com.smbms.pojo.Page;
import com.smbms.pojo.Provider;
import com.smbms.pojo.Role;
import com.smbms.pojo.User;
import com.smbms.service.bill.BillService;
import com.smbms.service.provider.ProviderService;
import com.smbms.service.user.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
public class AllTest {
	@Resource
	BillService bs;
	@Resource
	ProviderMapper pm;
	@Resource
	ProviderService ps;
	@Resource
	UserService us;
	@Resource
	UserMapper um;
	@Resource
	BillMapper bm;
	
	@Test
	public void test01(){
		Page page=new Page();
		page.setCurrentpage(3);
		List<User> list=us.findUserByCount(null, null, page);
		for (User u : list) {
			System.out.println(u);
		}
	}
	@Test
	public void test02(){
		List<Bill> list=bm.findAllBill();
		for (Bill b : list) {
			System.out.println(b);
		}
	}
}
