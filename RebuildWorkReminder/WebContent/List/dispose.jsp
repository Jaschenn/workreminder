<%@page import="model.Work"%>
<%@page import="dao.WorkDaoImpl"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

	//接受数据
	String name=request.getParameter("name");
	String remark=request.getParameter("remark");
	int status=0;//未完成
	int priority=Integer.valueOf(request.getParameter("priority"));
	//时间问题有待解决
	
	WorkDaoImpl workDao=new WorkDaoImpl();
	Work work=new Work();
	work.setName(name);
	work.setRemark(remark);
	work.setStatus(status);
	work.setPriority(priority);
	work.setDate(null);
	workDao.addWork(work);
	System.out.println("添加成功");
%>

	<jsp:forward page="workList.jsp"></jsp:forward>