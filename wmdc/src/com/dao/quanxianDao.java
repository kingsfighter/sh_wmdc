package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import com.bean.quanxian;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;
public class quanxianDao {
	private DBO db=null;//
	 private quanxian quanxian=null;
	 public void  insert(quanxian quanxian) throws Exception{//添加权限
			db=new DBO();
		   db.open();
			
			String sql = "insert into quanxian (qx ) values ('"+quanxian.getQx()+"')";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  modify(quanxian quanxian) throws Exception{//修改权限
			db=new DBO();
		   db.open();
			
			String sql = "update quanxian set  qx='"+quanxian.getQx()+"' where qxid ='"+quanxian.getQxid()+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  delete(String keyid) throws Exception{//删除权限
			db=new DBO();
		        db.open();
			
			String sql = "delete from quanxian where qxid='"+keyid+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public ResultSet  qlist(String sl) throws Exception{//查询权限
		   db=new DBO();
		   db.open();
		   String sql="select * from quanxian where  1=1 ";
		if(!sl.equals("")){
			sql+=sl;
			
		}
		   System.out.println("sql="+sql);
			return db.query(sql);
			
		}
}
