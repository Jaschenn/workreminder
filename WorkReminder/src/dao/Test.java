package dao;

import java.sql.Date;

import model.Work;

public class Test {

	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		
			Work work=new Work();
			work.setTitle("标题");
			work.setConent("connent");
			work.setTime(new Date(2018, 2, 20));
			work.setProity(2);
			work.setStatus(0);
			
			workDao w=new workDao();
			w.addWork(work);
			
	}

}
