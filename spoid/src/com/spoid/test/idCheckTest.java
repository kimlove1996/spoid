package com.spoid.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.spoid.dao.SpoidDAO;

public class idCheckTest {
	String userid = "spoid05";

	@Test
	public void testConfirmID() {
		SpoidDAO sDao = SpoidDAO.getInstance();
		
		/*sDao.confirmID(userid);*/
	}

}
