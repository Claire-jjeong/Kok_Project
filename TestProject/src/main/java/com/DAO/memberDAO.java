package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;


import com.smhrd.FamilyVO;
import com.smhrd.HospitalVO;
import com.smhrd.UserVO;
import com.smhrd.VaccineVO;

	public class memberDAO {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		//db���� �޼ҵ�
		public void conn() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
				String dbid = "cgi_6_3";
				String dbpw = "smhrd3"; 
				conn = DriverManager.getConnection(url,dbid,dbpw);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		public void close() { //������ ���� �ݴ�� �ݱ�
			try {
				if(rs!=null) {
					rs.close();
				}
				if(psmt!=null) {
					psmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		public int join(String user_id, String user_pw, String user_name, String email, String addr, String phone, String adm, String gender, int birth_date) { 
			int cnt = 0;
			try {
			
				conn();
				String sql = "insert into users values(?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
				
				psmt = conn.prepareStatement(sql); 
				psmt.setString(1, user_id); 
				psmt.setString(2, user_pw); 
				psmt.setString(3, user_name); 
				psmt.setString(4, email);
				psmt.setString(5, addr);
				psmt.setString(6, phone);
				psmt.setString(7, adm);
				psmt.setString(8, gender);
				psmt.setInt(9, birth_date);
				
				cnt = psmt.executeUpdate();
			
			}catch(Exception e) { 
				e.printStackTrace();
				
			}finally {
				close();
			}
			return cnt;
		}

public UserVO login(String user_id, String user_pw) {
			UserVO vo = null;
	try {
				conn();
				String sql = "select * from users where user_id = ? and user_pw = ?"; 
				psmt = conn.prepareStatement(sql); 
				psmt.setString(1, user_id);
				psmt.setString(2, user_pw);
				
				rs = psmt.executeQuery(); //Ŀ�� �̿�
				//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
				//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
				
				if(rs.next()) {
					String user_name = rs.getString(3);
					String email = rs.getString(4);
					String addr = rs.getString(5);
					String phone = rs.getString(6);
					String adm = rs.getString(7);
					String gender = rs.getString(8);
					int birth_date = rs.getInt(9);
					
					vo = new UserVO(user_id,user_pw,user_name,email,addr,phone,adm,gender,birth_date);
					//���ο� ������ Ÿ�� : VO
				}
				
				
			}catch(Exception e) { 
				e.printStackTrace();
			
			}finally {
				close();
			}
			return vo;
		}
		
public int delete(String user_id) {
			int cnt = 0;
			try {
						conn();
				
						String sql = "delete from users where user_id = ?"; 
						psmt = conn.prepareStatement(sql); 
							
						psmt.setString(1, user_id); 
					
						cnt = psmt.executeUpdate();
						
					}catch(Exception e) { 
						e.printStackTrace();
					
					}finally {
						close();
					}
					return cnt;
					
				}

public int update(String user_pw, String phone, String addr, String email, String user_id) {
	int cnt = 0;
try {
		
		conn();

		String sql = "update users set user_pw = ?, phone = ? , addr = ? email = ? where user_id = ?"; 
		psmt = conn.prepareStatement(sql); 
			
		psmt.setString(1, user_pw ); 
		psmt.setString(2, phone);
		psmt.setString(3, addr);
		psmt.setString(4, email);
		psmt.setString(5, user_id);
	
		cnt = psmt.executeUpdate();
		
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return cnt;
	
}

public ArrayList<HospitalVO> search() {
	ArrayList<HospitalVO> sr = new ArrayList<HospitalVO>();
try {
		conn();
		
		//message_member���̺��� email, pw�� �˻��Ͽ� ��ü ���� �ҷ�����
		String sql = "select hos_name, hos_addr, latitude, longitude, hos_info from hospitals"; 
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery(); //Ŀ�� �̿�
		
		//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
		//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
		
		while(rs.next()) { //Ŀ�� �̵�
			String hos_name = rs.getString(1);
			String hos_addr = rs.getString(2);
			double latitude = rs.getDouble(3);
			double longitude = rs.getDouble(4);
			String hos_info = rs.getString(5);
			
			HospitalVO vo = new HospitalVO(hos_name,hos_addr,latitude,longitude, hos_info);
			//�� �߰����ֱ�
			sr.add(vo);
		}
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return sr;
}

public ArrayList<HospitalVO> search1() {
	ArrayList<HospitalVO> sr = new ArrayList<HospitalVO>();
try {
		conn();
		
		//message_member���̺��� email, pw�� �˻��Ͽ� ��ü ���� �ҷ�����
		String sql = "select hos_name, hos_addr, hos_phone, latitude, longitude, hos_info from hospitals"; 
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery(); //Ŀ�� �̿�
		
		//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
		//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
		
		while(rs.next()) { //Ŀ�� �̵�
			String hos_name = rs.getString(1);
			String hos_addr = rs.getString(2);
			String hos_phone = rs.getString(3);
			double latitude = rs.getDouble(4);
			double longitude = rs.getDouble(5);
			String hos_info = rs.getString(6);
			
			HospitalVO vo = new HospitalVO(hos_name,hos_addr,hos_phone,latitude,longitude, hos_info);
			//�� �߰����ֱ�
			sr.add(vo);
		}
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return sr;
}

public ArrayList<HospitalVO> h_search(String search) {
	ArrayList<HospitalVO> hr = new ArrayList<HospitalVO>();
try {
		//�̰� ���ſ���
		conn();
	
		String sql = "select * from hospitals where instr(hos_info, ?)"; 
		psmt = conn.prepareStatement(sql); 
		psmt.setString(1, search);
		
		rs = psmt.executeQuery(); //Ŀ�� �̿�
		
		while(rs.next()) {

			String hos_name = rs.getString(2);
			String hos_addr = rs.getString(3);
			double latitude = rs.getDouble(5);
			double longitude = rs.getDouble(6);
			HospitalVO vo = new HospitalVO(hos_name,hos_addr,latitude,longitude);
		
			hr.add(vo);
			//���ο� ������ Ÿ�� : VO
		}
		
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return hr;
}



public ArrayList<UserVO> select() {//ȯ������
	ArrayList<UserVO> al = new ArrayList<UserVO>();
try {
		
		conn();
		
		//message_member���̺��� email, pw�� �˻��Ͽ� ��ü ���� �ҷ�����
		String sql = "select user_id, user_name, email, birth_date, addr, phone, gender from users"; 
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery(); //Ŀ�� �̿�
		
		//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
		//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
		
		while(rs.next()) { //Ŀ�� �̵�
			String user_id = rs.getString(1);
			String user_name = rs.getString(2);
			String email = rs.getString(3);
			int birth_date = rs.getInt(4);
			String addr = rs.getString(5);
			String phone = rs.getString(6);
			String gender = rs.getString(7);
			
		
			//�� �����ֱ�
			UserVO vo = new UserVO(user_id,user_name,email,birth_date,addr,phone,gender);
			//�� �߰����ֱ�
			al.add(vo);
		}
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return al;
}

public ArrayList<UserVO> select_admin() 
{
	ArrayList<UserVO> al = new ArrayList<UserVO>();
	
	try 
	{
		conn();
		String sql ="select user_id, user_name, email, birth_date, addr, phone, gender  from users where user_id is not null"; //  ����ڰ� �Է��� ���̵� �־���ϹǷ� ?
		psmt = conn.prepareStatement(sql);
					
		rs = psmt.executeQuery(); // �α��� ������ rs�� ��� �����ͺ��̽��� �����Ѵ�.

		while(rs.next())
		{
			String user_id = rs.getString(1);
			String user_name = rs.getString(2);
			String email =rs.getString(3);
			int birth_date=rs.getInt(4);
			String addr=rs.getString(5);
			String phone=rs.getString(6);
			String gender=rs.getString(7);
			
			UserVO vo = new UserVO(user_id, user_name, email, birth_date, addr, phone, gender); // vo��� �̸��� ������ ���� email, tel, address ������ ��
			al.add(vo); // resultset���� �� �����µ� rs.next���� while���ȿ��� �ݺ��� �� vo�� ����ش�.
		}
	}
	catch (Exception e) 
	{
		e.printStackTrace();
	}
	finally
	{
		close();
	}
	return al;
}
public int update_0(String user_pw, String email, String addr, String phone, String user_id)
{
	int cnt =0 ;
	// 2. JDBC �ڵ带 Ȱ���Ͽ� update SQL�� ���
	try 
	{
		conn();
		
		String sql ="update users set user_pw =?, email=?, addr=?, phone=? where user_id=?"; 
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, user_pw);
		psmt.setString(2, email);
		psmt.setString(3, addr);
		psmt.setString(4, phone);
		psmt.setString(5, user_id);
		cnt = psmt.executeUpdate(); // ��ɹ����� ũ�� update�� Query�� �ִ�.
		
	}
	catch (Exception e) // Exception : �������� �ֻ��� ��޿� �ش�, ������ �߻��ϸ� catch�� �Ʒ��� �����Ѵ�. 
	{
		e.printStackTrace();
	}
	finally
	{
		close();
	}
	return cnt;
}

// id �ߺ�Ȯ�ο� �ʿ��� �Լ�
	public boolean idCheck(String user_id) {
		
		boolean check = false; // �⺻�� ����
		
		conn();
		
		String sql="select user_id from users where user_id=?";
		
		try 
		{
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,user_id);
			rs = psmt.executeQuery();
			
			if(rs.next()) 
			{  //����ڰ� �Է��� id�� �����ͺ��̽��� user ���̺� �����ϴ� ���
				check = true;
			}
			else 
			{  //����ڰ� �Է��� id�� �����ͺ��̽��� user ���̺� �������� ���� ���
				check = false;
			}
			
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			close();
		}
		return check;
	}

	public ArrayList<UserVO> search_f(String fam) // searchFamily���� �˻��ϸ� users ���̺��� ��ġ�ϴ� user_id���� �ҷ����� �Լ�
	{
		ArrayList<UserVO> vo0 = new ArrayList<UserVO>(); // userVO Ÿ�� ���� ����
		try {
				conn();
				
				//  �켱  users ���̺��� �˻����� �Է��� id�� ��ġ�ϴ� id���� �����´�.
				String sql = "select user_id, user_name, email from users where user_id=?"; 
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, fam);
				// �˻��Ϸ��� �Է��� �� fam�� �� ���� ?�� ����...  
				
				rs = psmt.executeQuery(); 
				
				while(rs.next()) 
				{
					String user_id = rs.getString(1);
					String user_name = rs.getString(2);
					String email= rs.getString(3);
					
					UserVO fo = new UserVO(user_id, user_name, email);
					//�� �߰����ֱ�
					vo0.add(fo); // �迭 fo�� �������ش�., �� vo�� �Ʒ� return���� ��������, search_f()�� ���� ���ϰ����� ���
				}
				
			}catch(Exception e) { 
				e.printStackTrace();
			
			}finally {
				close();
			}
		return vo0;
	}
	
	
	public int addfam(String family_id, String user_id) // �̰� ������� �ʴ� �Լ����� �����
	{
		ArrayList<FamilyVO> vo2 = new ArrayList<FamilyVO>(); // userVO Ÿ�� ���� ����
		int cnt = 0;
		try 
		{
			conn();
		
			String sql ="update family set fam1=? where user_id=?"; // "insert into web_member value(id, pw, nick)",,,,,insert, delete, update, select �� �� �ϳ�...�� �� �� ���ε� �̰�...
			
			psmt = conn.prepareStatement(sql);
			// ���� ����ǥ�� ä������ϴ� ��
			psmt.setString(1, family_id);
			psmt.setString(2, user_id);
			
			cnt=psmt.executeUpdate();	
			rs=psmt.executeQuery();
			while(rs.next())
			{
				sql="commit";
				sql="select user_id, fam1 from family where user_id=?";
				psmt.setString(1, user_id);
				String userId = rs.getString(1);
				String famID1 = rs.getString(2);
				
				FamilyVO vo = new FamilyVO(userId, famID1);
				vo2.add(vo); // resultset���� �� �����µ� rs.next���� while���ȿ��� �ݺ��� �� vo�� ����ش�.
			}
		} 
		catch (Exception e) // Exception : �������� �ֻ��� ��޿� �ش�, ������ �߻��ϸ� catch�� �Ʒ��� �����Ѵ�. 
		{
			e.printStackTrace();
			// ���� �� ������ �߻����� �� ������ ����Ѵ�.
		}
		finally
		{
			close();
		}
		return cnt;
	}
	
	public int Upfam(String family_name, String user_id) // �����߰���ư�� ������ fam1Į���� ���� �߰� ����
	{
		int cnt = 0;
		try 
		{
			conn();
		
			String sql ="update family set fam1=? where user_id=?"; // "insert into web_member value(id, pw, nick)",,,,,insert, delete, update, select �� �� �ϳ�...�� �� �� ���ε� �̰�...
			psmt = conn.prepareStatement(sql);
			// ���� ����ǥ�� ä������ϴ� ��
			psmt.setString(1, family_name);
			psmt.setString(2, user_id);
			
			cnt=psmt.executeUpdate();	

		} 
		catch (Exception e) // Exception : �������� �ֻ��� ��޿� �ش�, ������ �߻��ϸ� catch�� �Ʒ��� �����Ѵ�. 
		{
			e.printStackTrace();
			// ���� �� ������ �߻����� �� ������ ����Ѵ�.
		}
		finally
		{
			close();
		}
		return cnt;
	}
	
	public ArrayList<FamilyVO> select_famView(String userID)
	{
		ArrayList<FamilyVO> fva = new ArrayList<FamilyVO>();
		try {
			conn();
			
			String sql = "select user_id, fam1 from family where user_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, userID);
			System.out.println("memberDAO���� �Ѿ���� userID : " + userID);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) 
			{
				String user_id = rs.getString(1);
				String fam1 = rs.getString(2);
				
				FamilyVO vo = new FamilyVO(user_id, fam1);
				//���ο� ������Ÿ�� = VO	
				fva.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return fva; // family ���̺��� user_id, fam1�� ����Ǿ���Ѵ�
	}

	public ArrayList<VaccineVO> VaccineList() {
		ArrayList<VaccineVO> vc = new ArrayList<VaccineVO>();
	try {
			
			conn();
			
			//message_member���̺��� email, pw�� �˻��Ͽ� ��ü ���� �ҷ�����
			String sql = "select vac_seq, vac_name, vac_disease, vac_code from vaccines"; 
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery(); //Ŀ�� �̿�
			
			//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
			//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
			
			while(rs.next()) { //Ŀ�� �̵�
				String vac_seq = rs.getString(1);
				String vac_name = rs.getString(2);
				String vac_disease = rs.getString(3);
				String vac_code = rs.getString(4);
				
			
				//�� �����ֱ�
				VaccineVO vo = new VaccineVO(vac_seq,vac_name,vac_disease,vac_code);
				//�� �߰����ֱ�
				vc.add(vo);
			}
			
		}catch(Exception e) { 
			e.printStackTrace();
		
		}finally {
			close();
		}
		return vc;
	}

	
	public int myIDtoFAM(String user_id) 
	{ 
		int cnt = 0;
		try {
		
			conn();
			String sql = "insert into family (user_id) values(?)"; 
			
			psmt = conn.prepareStatement(sql); 
			psmt.setString(1, user_id); 

			cnt = psmt.executeUpdate();
		
		}catch(Exception e) { 
			e.printStackTrace();
			
		}finally {
			close();
		}
		return cnt;
	}
	
public String ids(String name, String phone) {
		
		String UserID = null;
		conn();
		
		String sql= "select user_id from users where user_name=? and phone=?";
		
		try 
		{
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,name);
			psmt.setString(2,phone);
			rs = psmt.executeQuery();
			
			if(rs.next())
			{
				UserID=rs.getString(1);
				
			}
		
		}
		
		catch(Exception e) { 
			e.printStackTrace();
		
		}finally {
			close();
		}
		return UserID;
		
	}
	
public String pws(String name, String phone, String userId) {
	
	String UserPW = null;
	conn();
	
	String sql= "select user_pw from users where user_name=? and phone=? and user_id=?";
	
	try 
	{
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,name);
		psmt.setString(2,phone);
		psmt.setString(3,userId);
		rs = psmt.executeQuery();
		
		if(rs.next())
		{
			UserPW=rs.getString(1);
			
		}
	
	}
	
	catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return UserPW;
	
}	

}	
