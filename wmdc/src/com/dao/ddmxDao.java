package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import com.bean.ddmx;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;
public class ddmxDao {
	private DBO db=null;//
	 private ddmx ddmx=null;
	 public void  insert(ddmx ddmx) throws Exception{//Ìí¼Ó¶©µ¥Ã÷Ï¸
			db=new DBO();
		   db.open();
			
			String sql = "insert into ddmx (dd,sp,sl,jg,sj,zt ) values ('"+ddmx.getDd()+"','"+ddmx.getSp()+"','"+ddmx.getSl()+"','"+ddmx.getJg()+"','"+ddmx.getSj()+"','"+ddmx.getZt()+"')";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  modify(ddmx ddmx) throws Exception{//ÐÞ¸Ä¶©µ¥Ã÷Ï¸
			db=new DBO();
		   db.open();
			
			String sql = "update ddmx set  dd='"+ddmx.getDd()+"',sp='"+ddmx.getSp()+"',sl='"+ddmx.getSl()+"',jg='"+ddmx.getJg()+"',sj='"+ddmx.getSj()+"',zt='"+ddmx.getZt()+"' where ddmxid ='"+ddmx.getDdmxid()+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  delete(String keyid) throws Exception{//É¾³ý¶©µ¥Ã÷Ï¸
			db=new DBO();
		        db.open();
			
			String sql = "delete from ddmx where ddmxid='"+keyid+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public ResultSet  qlist(String sl) throws Exception{//²éÑ¯¶©µ¥Ã÷Ï¸
		   db=new DBO();
		   db.open();
		   String sql="select * from ddmx where  1=1 ";
		if(!sl.equals("")){
			sql+=sl;
			
		}
		   System.out.println("sql="+sql);
			return db.query(sql);
			
		}
}
