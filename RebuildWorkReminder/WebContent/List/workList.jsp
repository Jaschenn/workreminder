<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="model.Work"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.WorkDaoImpl"%>
<%@page import="dao.IWorkDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

   
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>WorkReminder</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">

    <link href="../bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	
	<script src="/bootstrap-3.3.7-dist/js/jquery-3.3.1.js"></script>

	<script src="/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js"></script>
	
</head>
<body>
<script type="text/javascript" src="../jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>

	<div class="container">
	
	<% if(session.getAttribute("result")!=null){
	int result=(int)session.getAttribute("result");
	if(result==1){
		%>
		<div id="myAlert" class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert">&times;</a>
		<strong>添加事件成功</strong>少年强则中国强。
	</div>
	<% 
		
	}else{
		%>
		<div id="myAlert" class="alert alert-warning">
		<a href="#" class="close" data-dismiss="alert">&times;</a>
		<strong>添加事件失败</strong>请检查是否重复！
	</div>
		
		<% 
	} 
	}%>
	
	
	
	
    <form action="" class="form-horizontal">
        <fieldset>
            <legend>Test</legend>
            <div class="control-group">
                <label class="control-label">DateTime Picking</label>
                <div class="controls input-append date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                    <input size="16" type="text" value="" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span>
                </div>
				<input type="hidden" id="dtp_input1" value="" /><br/>
            </div>
        </fieldset>
    </form>
	</div>
	
	
	
	
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>
							事件标题
						</th>
						<th>
							备注
						</th>
						<th>
							到期时间
						</th>
						<th>
							优先级
						</th>
					</tr>
				</thead>
				<tbody>
				<%
				 WorkDaoImpl wdI=new WorkDaoImpl();
				List<Work> worklist=wdI.loadWork(null, null);
				int j=worklist.size();
				for(int i=0;i<j;i++){
					%>
					<% if(worklist.get(i).getPriority()==1){
						%>
						<tr class="success">
						<% 		
					}else if(worklist.get(i).getPriority()==2){
						
						%>
						<tr class="warning">
						<% 	
		
					} else if(worklist.get(i).getPriority()==3){
						
						%>
						<tr class="info">
						<% 	
						
					}else {
						
						%>
						<tr >
						<% 	
						
					}
					%>
					<td>
						<%=worklist.get(i).getName() %>
					</td>
					<td>
						<%=worklist.get(i).getRemark() %>
					</td>
					<td>
						<%=worklist.get(i).getDate() %>
					</td>
					<td>
						<%=worklist.get(i).getPriority() %>
					</td>
				</tr>
					
				<% 
				}
				
				
				
				
				
				%>
				
				
				
					<tr>
						<td>
							1
						</td>
						<td>
							TB - Monthly
						</td>
						<td>
							01/04/2012
						</td>
						<td>
							Default
						</td>
					</tr>
					<tr class="success">
						<td>
							1
						</td>
						<td>
							TB - Monthly
						</td>
						<td>
							01/04/2012
						</td>
						<td>
							Approved
						</td>
					</tr>
					<tr class="error">
						<td>
							2
						</td>
						<td>
							TB - Monthly
						</td>
						<td>
							02/04/2012
						</td>
						<td>
							Declined
						</td>
					</tr>
					<tr class="warning">
						<td>
							3
						</td>
						<td>
							TB - Monthly
						</td>
						<td>
							03/04/2012
						</td>
						<td>
							Pending
						</td>
					</tr>
					<tr class="info">
						<td>
							4
						</td>
						<td>
							TB - Monthly
						</td>
						<td>
							04/04/2012
						</td>
						<td>
							Call in to confirm
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		
		
		<div class="col-md-4 column">
			
			<form class="form-horizontal" role="form" action="dispose.jsp" method="post">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">事件</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="name" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">备注</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="remark" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">时间</label>

					    <div class="col-sm-10">
						<input type="text" class="form-control" id="timepicker" name="time"  readonly/>
					</div>
     
   					 <script type="text/javascript">
    					    $('#timepicker').datetimepicker({
     				       format: "yyyy-MM-dd-HH:mm",
    			        autoclose: true,
    					todayBtn: true,
    			        pickerPosition: "bottom-left"
   							     });
   					 </script>            
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">优先级</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="priority" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">Let it Go ！</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	
</body>
</html>