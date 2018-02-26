package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Work;
import util.DBUtil;
import util.WorkException;

public class WorkDaoImpl implements IWorkDao{

	@Override
	public void addWork(Work work) throws WorkException {
		// TODO Auto-generated method stub
		//获得链接对象
		Connection connection=DBUtil.getConnection();
		//准备sql语句
		String sql="select count(*) from worklist where name = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, work.getName());
		resultSet=preparedStatement.executeQuery();
		while (resultSet.next()) {
			if(resultSet.getInt(1)>0) {
				throw new WorkException("事件已经存在！");
			}
		}
		
		sql="insert into worklist(name,remark,status,priority,date) value (?,?,?,?,?)";
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, work.getName());
		preparedStatement.setString(2, work.getRemark());
		preparedStatement.setInt(3, work.getStatus());
		preparedStatement.setInt(4, work.getPriority());
		preparedStatement.setDate(5, work.getDate());
		preparedStatement.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
				
		}
		
		
	}

	@Override
	public void markWork(String workname, Date date) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteWork(String workname, Date date) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateWork(String workname, Date date) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Work loadWork(String workname, Date date) {
		// TODO Auto-generated method stub
		return null;
	}

}
