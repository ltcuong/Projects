package util;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.security.MessageDigest;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import service.QuanLyNguoiDungService;

public final class WebUtil {
	public static QuanLyNguoiDungService taiKhoanSV = new QuanLyNguoiDungService();

	public static String fillInputs(String content, Map<String, String> inputs){
		Set<String> keySet = inputs.keySet();
		List<String> keys = new ArrayList<String>(keySet);
		Collections.sort(keys, new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				if(o1.length() < o2.length())
					return 1;
				if(o1.length() > o2.length())
					return -1;
				return 0;
			}			
		});
		
		for(String key : keys){
				String value = inputs.get(key.toUpperCase());
			if (value != null) {
				content = content.replaceAll(key.toUpperCase(),value);	
			} else {
				content = content.replaceAll(key.toUpperCase(),"");	
			}
		}		
		if(content.contains("#")){
			for(String key : keys){
				String value = inputs.get(key.toUpperCase());
				if (value != null) {
					content = content.replaceAll(key.toUpperCase(),value);
				} else {
					content = content.replaceAll(key.toUpperCase(),"");
				}
			}
		}
		return content;
	}
	private static String formatNumberForRead(double number) {
        NumberFormat nf = NumberFormat.getInstance();
        String temp = nf.format(number);
        String strReturn = "";
        int slen = temp.length();
        for (int i = 0; i < slen; i++) {
            if (String.valueOf(temp.charAt(i)).equals("."))
                break;
            else if (Character.isDigit(temp.charAt(i))) {
                strReturn += String.valueOf(temp.charAt(i));
            }
        }
        return strReturn;

    }
   
	public static String convertNumberToString(Double number) {
        String sNumber = "";
        String sReturn = "";
        if (number != null) {
        	sNumber = formatNumberForRead(number.doubleValue()); 
            // Tao mot bien tra ve
            // Tim chieu dai cua chuoi
            int iLen = sNumber.length();
            // Lat nguoc chuoi nay lai
            String sNumber1 = "";
            for (int i = iLen - 1; i >= 0; i--) {
                sNumber1 += sNumber.charAt(i);
            }
            // Tao mot vong lap de doc so
            // Tao mot bien nho vi tri cua sNumber
            int iRe = 0;
            do {
                // Tao mot bien cat tam
                String sCut = "";
                if (iLen > 3) {
                    sCut = sNumber1.substring((iRe * 3), (iRe * 3) + 3);
                    sReturn = Read(sCut, iRe) + sReturn;
                    iRe++;
                    iLen -= 3;
                } else {
                    sCut = sNumber1.substring((iRe * 3), (iRe * 3) + iLen);
                    sReturn = Read(sCut, iRe) + sReturn;
                    break;
                }
            } while (true);
            if(sReturn.length() > 1){
                sReturn = sReturn.substring(0,1).toUpperCase() + sReturn.substring(1);
            }
            sReturn = sReturn + "đồng";
        }
        return sReturn;
    }

    // Khoi tao ham Read
	private static String Read(String sNumber, int iPo) {
        // Tao mot bien tra ve
        String sReturn = "";
        // Tao mot bien so
        String sPo[] = { "", "ngàn" + " ",
                "triệu" + " ", "tỷ" + " " };
        String sSo[] = { "không" + " ", "một" + " ",
                "hai" + " ", "ba" + " ",
                "bốn" + " ", "năm" + " ",
                "sáu" + " ", "bảy" + " ",
                "tám" + " ", "chín" + " " };
        String sDonvi[] = { "", "mươi" + " ",
                "trăm" + " " };
        // Tim chieu dai cua chuoi
        int iLen = sNumber.length();
        // Tao mot bien nho vi tri doc
        int iRe = 0;
        // Tao mot vong lap de doc so
        for (int i = 0; i < iLen; i++) {
            String sTemp = "" + sNumber.charAt(i);
            int iTemp = Integer.parseInt(sTemp);
            // Tao mot bien ket qua
            String sRead = "";
            // Kiem tra xem so nhan vao co = 0 hay ko
            if (iTemp == 0) {
                switch (iRe) {
                case 0:
                    break;// Khong lam gi ca
                case 1: {
                    if (Integer.parseInt("" + sNumber.charAt(0)) != 0) {
                        sRead = "lẻ" + " ";
                    }
                    break;
                }
                case 2: {
                    if (Integer.parseInt("" + sNumber.charAt(0)) != 0
                            && Integer.parseInt("" + sNumber.charAt(1)) != 0) {
                        sRead = "không trăm" + " ";
                    }
                    break;
                }
                }
            } else if (iTemp == 1) {
                switch (iRe) {
                case 1:
                    sRead = "mười" + " ";
                    break;
                default:
                    sRead = "một" + " " + sDonvi[iRe];
                    break;
                }
            } else if (iTemp == 5) {
                switch (iRe) {
                case 0: {
                    if(sNumber.length() <= 1){
                        sRead = "năm" + " ";
                    }
                    else if (Integer.parseInt("" + sNumber.charAt(1)) != 0) {
                        sRead = "lăm" + " ";
                    } else
                        sRead = "năm" + " ";
                    break;
                }
                default:
                    sRead = sSo[iTemp] + sDonvi[iRe];
                }
            } else {
                sRead = sSo[iTemp] + sDonvi[iRe];
            }

            sReturn = sRead + sReturn;
            iRe++;
        }
        if (sReturn.length() > 0) {
            sReturn += sPo[iPo];
        }

        return sReturn;
    }
    
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
