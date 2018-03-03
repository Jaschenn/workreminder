package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public  class Timeutil {

	
	public static Date parseDate(String time) throws ParseException{
		//String转换为java.util.Date 
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd-HH:mm"); 
				java.util.Date date=sdf.parse(time); 
				return date;
	}
}
