package com.kodNest.customer;

import com.kodNest.dbHandler.DataFetcher;

public class Validator {
    public static boolean isValid(String uname,String pass) {
    	String dbPass=DataFetcher.fetchPassword(uname);
    	if(pass.equals(dbPass)) {
    		return true;
    	}
    	else {
    		return false;
    	}
    }
    public static boolean validMail(String mail) {
		boolean res=DataFetcher.getPassword(mail);
		
		if (res) {
			return true;
		}
		else {
			return false;
		}
    }
}
