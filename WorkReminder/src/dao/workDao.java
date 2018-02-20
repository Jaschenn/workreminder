package dao;

import java.sql.Date;
import java.sql.DriverManager;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


import model.Work;

public class workDao implements IworkDao{

	// JDBC 驱动名及数据库 URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost:3306/WORKREMINDER";
    // 数据库的用户名与密码，需要根据自己的设置
    static final String USER = "root";
    static final String PASS = "root";
	@Override
	public void addWork(Work work) {
		// TODO Auto-generated method stub
		 	Connection conn = null;
		 	PreparedStatement preparedStatement = null;
	        try{
	            // 注册 JDBC 驱动
	            Class.forName("com.mysql.jdbc.Driver");
	            // 打开链接
	            System.out.println("连接数据库...");
	            conn = (Connection) DriverManager.getConnection(DB_URL,USER,PASS);
	        
	          String sql; 
	          sql = "insert into work values(?,?,?,?,?)";
	          preparedStatement=(PreparedStatement) conn.prepareStatement(sql);
	          preparedStatement.setString(1,work.getTitle());
	          preparedStatement.setString(2,work.getConent());
	          preparedStatement.setDate(3,(Date) work.getTime());
	          preparedStatement.setInt(4, work.getProity());
	          preparedStatement.setInt(5, work.getStatus());
	          preparedStatement.execute();
	          preparedStatement.close();
	          conn.close();
	        }catch(SQLException se){
	            // 处理 JDBC 错误
	            se.printStackTrace();
	        }catch(Exception e){
	            // 处理 Class.forName 错误
	            e.printStackTrace();
	        }finally{
	            // 关闭资源
	         
	        }
		
	}

	@Override
	public void updateWork(Work work) {
		// TODO Auto-generated method stub
		Connection conn = null;
	 	PreparedStatement preparedStatement = null;
        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");
            // 打开链接
            System.out.println("连接数据库...");
            conn = (Connection) DriverManager.getConnection(DB_URL,USER,PASS);
        
          String sql; 
          sql = "update work set status=? where tittle=?";
          preparedStatement=(PreparedStatement) conn.prepareStatement(sql);
          preparedStatement.setInt(1, work.getStatus());
          preparedStatement.setString(2, work.getTitle());
          preparedStatement.executeUpdate();
          preparedStatement.close();
          conn.close();
        }catch(SQLException se){
            // 处理 JDBC 错误
            se.printStackTrace();
        }catch(Exception e){
            // 处理 Class.forName 错误
            e.printStackTrace();
        }finally{
            // 关闭资源
         
        }
		
		
	}

	@Override
	public void deleteWork(Work work) {
		// TODO Auto-generated method stub
		Connection conn = null;
	 	PreparedStatement preparedStatement = null;
        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");
            // 打开链接
            System.out.println("连接数据库...");
            conn = (Connection) DriverManager.getConnection(DB_URL,USER,PASS);
        
          String sql; 
          sql = "delete from work where title=?";
          preparedStatement=(PreparedStatement) conn.prepareStatement(sql);
          preparedStatement.setString(1, work.getTitle());
          preparedStatement.executeUpdate();
          preparedStatement.close();
          conn.close();
        }catch(SQLException se){
            // 处理 JDBC 错误
            se.printStackTrace();
        }catch(Exception e){
            // 处理 Class.forName 错误
            e.printStackTrace();
        }finally{
            // 关闭资源
         
        }
		
		
	}

}
