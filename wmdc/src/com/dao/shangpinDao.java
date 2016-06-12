package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.shangpin;
import com.util.DBO;
import java.util.List;
import java.sql.ResultSet;

public class shangpinDao {
	private DBO db = null;//
	private shangpin shangpin = null;

	public void insert(shangpin shangpin) throws Exception {// 添加菜品
		db = new DBO();
		db.open();

		String sql = "insert into shangpin (sp,lb,cd,jg,ms,tp,sftj,sl ) values ('"
				+ shangpin.getSp()
				+ "','"
				+ shangpin.getLb()
				+ "','"
				+ shangpin.getCd()
				+ "','"
				+ shangpin.getJg()
				+ "','"
				+ shangpin.getMs()
				+ "','"
				+ shangpin.getTp()
				+ "','"
				+ shangpin.getSftj() + "','"+shangpin.getSl()+"')";

		db.update(sql);
		// db.commit();
		db.close();

	}

	public void modify(shangpin shangpin) throws Exception {// 修改菜品
		db = new DBO();
		db.open();

		String sql = "update shangpin set  sp='" + shangpin.getSp() + "',lb='"
				+ shangpin.getLb() + "',cd='" + shangpin.getCd() + "',jg='"
				+ shangpin.getJg() + "',ms='" + shangpin.getMs() + "',tp='"
				+ shangpin.getTp() + "',sftj='" + shangpin.getSftj()+"',sl='"+shangpin.getSl()+"' where spid ='" + shangpin.getSpid() + "'";
		
		System.out.println(sql);
		db.update(sql);
		// db.commit();
		db.close();

	}

	public void delete(String keyid) throws Exception {// 删除菜品
		db = new DBO();
		db.open();

		String sql = "delete from shangpin where spid='" + keyid + "'";

		db.update(sql);
		// db.commit();
		db.close();

	}

	public ResultSet qlist(String sl) throws Exception {// 查询菜品
		db = new DBO();
		db.open();
		String sql = "select * from shangpin where  1=1 ";
		if (!sl.equals("")) {
			sql += sl;

		}
		System.out.println("sql=" + sql);
		return db.query(sql);

	}
}
