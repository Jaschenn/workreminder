<%@page import="java.util.Date"%>
<%@page import="util.Timeutil"%>
<%@page import="model.Work"%>
<%@page import="dao.WorkDaoImpl"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

	//接受数据
	String name=request.getParameter("name");
	String remark=request.getParameter("remark");
	int status=0;//未完成
	int priority=Integer.valueOf(request.getParameter("priority"));
	String time=request.getParameter("time");
	System.out.println("name"+name);
	System.out.println("remark"+remark);
	System.out.println("time"+time);
	System.out.println("表单输入的userName值为：" +  new String(name.getBytes("ISO-8859-1"),"utf-8")+"<br>");  
	
	WorkDaoImpl workDao=new WorkDaoImpl();
	Work work=new Work();
	work.setName(new String(name.getBytes("ISO-8859-1"),"utf-8"));
	work.setRemark(new String(remark.getBytes("ISO-8859-1"),"utf-8"));
	work.setStatus(status);
	work.setPriority(priority);
	work.setDate(time);
	int result=0;
	try{
	workDao.addWork(work);
	}catch(Exception e){
		
		System.out.println("添加失败，该任务已经存在");
		session.setAttribute("result", result);
		%>
		
		<jsp:forward page="workList.jsp"></jsp:forward>
		<% 
	}
	result=1;
	System.out.println("添加成功");
	session.setAttribute("result", result);
%>

	<jsp:forward page="workList.jsp"></jsp:forward>