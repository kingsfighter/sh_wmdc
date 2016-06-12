package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import com.bean.splb;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;
public class splbDao {
	private DBO db=null;//
	 private splb splb=null;
	 public void  insert(splb splb) throws Exception{//添加菜品类别
			db=new DBO();
		   db.open();
			
			String sql = "insert into splb (lb ) values ('"+splb.getLb()+"')";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  modify(splb splb) throws Exception{//修改菜品类别
			db=new DBO();
		   db.open();
			
			String sql = "update splb set  lb='"+splb.getLb()+"' where splbid ='"+splb.getSplbid()+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  delete(String keyid) throws Exception{//删除菜品类别
			db=new DBO();
		        db.open();
			
			String sql = "delete from splb where splbid='"+keyid+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public ResultSet  qlist(String sl) throws Exception{//查询菜品类别
		   db=new DBO();
		   db.open();
		   String sql="select * from splb where  1=1 ";
		if(!sl.equals("")){
			sql+=sl;
			
		}
		   System.out.println("sql="+sql);
			return db.query(sql);
			
		}
}
