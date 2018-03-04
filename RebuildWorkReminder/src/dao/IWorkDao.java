package dao;

import java.sql.Date;
import java.util.List;

import model.Work;
import util.WorkException;

public interface IWorkDao {
	public void addWork(Work work) throws WorkException;//添加事件
	public void markWork(String workname,Date date);//标记为已完成
	public void deleteWork(String workname,Date date);//删除事件
	public void updateWork(String workname,Date date);//修改事件时间
	public List<Work> loadWork(String workname,Date date);
	
}
