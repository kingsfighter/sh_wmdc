package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import com.bean.dingdan;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;
public class dingdanDao {
	private DBO db=null;//
	 private dingdan dingdan=null;
	 public void  insert(dingdan dingdan) throws Exception{//��Ӷ���
			db=new DBO();
		   db.open();
			
			String sql = "insert into dingdan (ddmc,yh,gmsj,zt,dz,dh,shr ) values ('"+dingdan.getDdmc()+"','"+dingdan.getYh()+"','"+dingdan.getGmsj()+"','"+dingdan.getZt()+"','"+dingdan.getDz()+"','"+dingdan.getDh()+"','"+dingdan.getShr()+"')";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  modify(dingdan dingdan) throws Exception{//�޸Ķ���
			db=new DBO();
		   db.open();
			
			String sql = "update dingdan set  ddmc='"+dingdan.getDdmc()+"',yh='"+dingdan.getYh()+"',gmsj='"+dingdan.getGmsj()+"',zt='"+dingdan.getZt()+"',dz='"+dingdan.getDz()+"',dh='"+dingdan.getDh()+"',shr='"+dingdan.getShr()+"' where ddid ='"+dingdan.getDdid()+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public void  delete(String keyid) throws Exception{//ɾ������
			db=new DBO();
		        db.open();
			
			String sql = "delete from dingdan where ddid='"+keyid+"'";
		
			
			db.update(sql);
			//db.commit();
			db.close();
		
		}
	 public ResultSet  qlist(String sl) throws Exception{//��ѯ����
		   db=new DBO();
		   db.open();
		   String sql="select * from dingdan where  1=1 ";
		if(!sl.equals("")){
			sql+=sl;
			
		}
		   System.out.println("sql="+sql);
			return db.query(sql);
			
		}
}
