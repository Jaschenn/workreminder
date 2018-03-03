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
							编号
						</th>
						<th>
							产品
						</th>
						<th>
							交付时间
						</th>
						<th>
							状态
						</th>
					</tr>
				</thead>
				<tbody>
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