package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import com.bean.pinglun;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;
public class pinglunDao {
	private DBO db=null;//
	 private pinglun pinglun=null;
	 public void  insert(pinglun pinglun) throws Exception{//添加评论
			db=new DBO();
		   db.open();
			
			String sql = "insert into pinglun (sp,pl,yh,sj ) values ('"+pinglun.getSp()+"','"+pinglun.getPl()+"','"+pinglun.getYh()+"','"+pinglun.getSj()+"')";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  modify(pinglun pinglun) throws Exception{//修改评论
			db=new DBO();
		   db.open();
			
			String sql = "update pinglun set  sp='"+pinglun.getSp()+"',pl='"+pinglun.getPl()+"',yh='"+pinglun.getYh()+"',sj='"+pinglun.getSj()+"' where plid ='"+pinglun.getPlid()+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  delete(String keyid) throws Exception{//删除评论
			db=new DBO();
		        db.open();
			
			String sql = "delete from pinglun where plid='"+keyid+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public ResultSet  qlist(String sl) throws Exception{//查询评论
		   db=new DBO();
		   db.open();
		   String sql="select * from pinglun where  1=1 ";
		if(!sl.equals("")){
			sql+=sl;
			
		}
		   System.out.println("sql="+sql);
			return db.query(sql);
			
		}
}
