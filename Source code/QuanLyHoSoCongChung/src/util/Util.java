package util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Util implements Const{
	
	public static SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	public static SimpleDateFormat dateTimeFormat = new SimpleDateFormat("m:H dd/MMM");
	public static DecimalFormat formatter = new DecimalFormat("###,###,###");
	
	public static int generateRandomID(int lenght){
		int max = (int) Math.pow(10, lenght);
		int result = 0;
		while (result < max/10)
			result = (int) (Math.random() * max);		
		return result;
	}
	
	public static Date getFirstDateOfWeek(Date today){
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(today.getTime());
		int removeDays;
		if(cal.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY)
			removeDays = -6;
		else
			removeDays = 2 - cal.get(Calendar.DAY_OF_WEEK);		
		cal.add(Calendar.DATE, removeDays);				
		return cal.getTime();
	}
	
	public static int getTotalPage(int size){
		if(size % ROW_PER_PAGE == 0){
			return size / ROW_PER_PAGE;
		}else{
			return size / ROW_PER_PAGE + 1;
		}
	}
	
	public static String md5(String pass) {
		try {
			MessageDigest m = MessageDigest.getInstance("MD5");
			byte[] data = pass.getBytes();
			m.update(data, 0, data.length);
			BigInteger i = new BigInteger(1, m.digest());
			return String.format("%1$032X", i);
		} catch (Exception e) {
			return "";
		}
	}
}
