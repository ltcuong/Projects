package util;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.security.MessageDigest;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

import service.QuanLyNguoiDungService;

public final class WebUtil {
	public static QuanLyNguoiDungService taiKhoanSV = new QuanLyNguoiDungService();

	public static Double fractionToDouble(Double tuSo, Double mauSo)
			throws ParseException {
		Double d = null;
		if (tuSo != null && mauSo != null) {
			if (mauSo != 0) {
				BigDecimal d1 = BigDecimal.valueOf(tuSo);
				BigDecimal d2 = BigDecimal.valueOf(mauSo);
				BigDecimal response = d1.divide(d2, MathContext.DECIMAL128);
				d = response.doubleValue();
			} else {
				d = 0.0;
			}
		}
		return d;
	}
	
	
	public static Double fractionToDouble(String fraction)
			throws ParseException {
		Double d = null;
		if (fraction != null) {
			if (fraction.contains("/")) {
				String[] numbers = fraction.split("/");
				if (numbers.length == 2) {
					BigDecimal d1 = BigDecimal.valueOf(Double
							.valueOf(numbers[0]));
					BigDecimal d2 = BigDecimal.valueOf(Double
							.valueOf(numbers[1]));
					BigDecimal response = d1.divide(d2, MathContext.DECIMAL128);
					d = response.doubleValue();
				}
			} else {
				d = Double.valueOf(fraction);
			}
		}
		if (d == null) {
			throw new ParseException(fraction, 0);
		}
		return d;
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

	public static double diff2Hour(Date dateBegin, Date dateEnd) {
		try {
			long diff = dateEnd.getTime() - dateBegin.getTime();
			double diffInHours = diff / ((double) 1000 * 60 * 60);
			return diffInHours;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public static double diff2HourBySecond(Date dateBegin, Date dateEnd) {
		try {		
		    long diff = dateEnd.getTime() - dateBegin.getTime();
		    double diffInHours = diff / ((double) 1000 * 60 * 60);		  
		    diffInHours = (diffInHours - (int)diffInHours) * 60;
		    return diffInHours;
		} catch (Exception e) {
		    e.printStackTrace();
		    return 0;
		}
	}

	public static Integer getMaSoTinhDefault() {
		try {
			String value = taiKhoanSV.getValueByCode(Const.MASOTINH_PARM);
			return Integer.parseInt(value);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public static String getPathFolderSaveImages() {
		try {
			String value = taiKhoanSV.getValueByCode(Const.IMAGE_PATH_FOLDER);
			return value;
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	public static String getPathFolderSaveReport() {
		try {
			String value = taiKhoanSV.getValueByCode(Const.REPORT_PATH_FOLDER);
			return value;
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	public static String getValueConfigByCode(String code) {
		try {
			String value = taiKhoanSV.getValueByCode(code);
			return value;
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	public static int getAge(Date birthDate) {
	    Calendar a = Calendar.getInstance();
	    a.setTime(birthDate);
	    Calendar b = Calendar.getInstance();
	    int age = b.get(Calendar.YEAR) - a.get(Calendar.YEAR);
	    if (a.get(Calendar.MONTH) > b.get(Calendar.MONTH) || (a.get(Calendar.MONTH) == b.get(Calendar.MONTH) && a.get(Calendar.DATE) > b.get(Calendar.DATE))) {
	        age--;
	    }
	    return age;
	}
	
	public static int getAgeByYear(Integer yearBirth) {
	    Calendar a = Calendar.getInstance();
	    int currentYear = a.get(Calendar.YEAR);
	    return currentYear - yearBirth;
	}
	
	
	
}
