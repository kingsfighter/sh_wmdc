package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import com.bean.xinwen;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;
public class xinwenDao {
	private DBO db=null;//
	 private xinwen xinwen=null;
	 public void  insert(xinwen xinwen) throws Exception{//添加新闻
			db=new DBO();
		   db.open();
			
			String sql = "insert into xinwen (bt,nr,sj,yh ) values ('"+xinwen.getBt()+"','"+xinwen.getNr()+"','"+xinwen.getSj()+"','"+xinwen.getYh()+"')";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  modify(xinwen xinwen) throws Exception{//修改新闻
			db=new DBO();
		   db.open();
			
			String sql = "update xinwen set  bt='"+xinwen.getBt()+"',nr='"+xinwen.getNr()+"',sj='"+xinwen.getSj()+"',yh='"+xinwen.getYh()+"' where xwid ='"+xinwen.getXwid()+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  delete(String keyid) throws Exception{//删除新闻
			db=new DBO();
		        db.open();
			
			String sql = "delete from xinwen where xwid='"+keyid+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public ResultSet  qlist(String sl) throws Exception{//查询新闻
		   db=new DBO();
		   db.open();
		   String sql="select * from xinwen where  1=1 ";
		if(!sl.equals("")){
			sql+=sl;
			
		}
		   System.out.println("sql="+sql);
			return db.query(sql);
			
		}
}
