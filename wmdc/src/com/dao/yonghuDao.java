package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import com.bean.yonghu;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;
public class yonghuDao {
	private DBO db=null;//
	 private yonghu yonghu=null;
	 public void  insert(yonghu yonghu) throws Exception{//添加用户
			db=new DBO();
		   db.open();
			
			String sql = "insert into yonghu (yhm,mm,xm,qx,dh,dz ) values ('"+yonghu.getYhm()+"','"+yonghu.getMm()+"','"+yonghu.getXm()+"','"+yonghu.getQx()+"','"+yonghu.getDh()+"','"+yonghu.getDz()+"')";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  modify(yonghu yonghu) throws Exception{//修改用户
			db=new DBO();
		   db.open();
			
			String sql = "update yonghu set  yhm='"+yonghu.getYhm()+"',mm='"+yonghu.getMm()+"',xm='"+yonghu.getXm()+"',qx='"+yonghu.getQx()+"',dh='"+yonghu.getDh()+"',dz='"+yonghu.getDz()+"' where yhid ='"+yonghu.getYhid()+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  delete(String keyid) throws Exception{//删除用户
			db=new DBO();
		        db.open();
			
			String sql = "delete from yonghu where yhid='"+keyid+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public ResultSet  qlist(String sl) throws Exception{//查询用户
		   db=new DBO();
		   db.open();
		   String sql="select * from yonghu where  1=1 ";
		if(!sl.equals("")){
			sql+=sl;
			
		}
		   System.out.println("sql="+sql);
			return db.query(sql);
			
		}
}
