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
		//db연결 메소드
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
		public void close() { //생성한 순서 반대로 닫기
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
				
				rs = psmt.executeQuery(); //커서 이용
				//페이지 이동만 시키면 되기 때문에 보여주지 않아도 됨 -> while문 필요 x
				//검색된 값이 있으면 true, 일치하지 않으면 검색창이 비어있음 -> false
				
				if(rs.next()) {
					String user_name = rs.getString(3);
					String email = rs.getString(4);
					String addr = rs.getString(5);
					String phone = rs.getString(6);
					String adm = rs.getString(7);
					String gender = rs.getString(8);
					int birth_date = rs.getInt(9);
					
					vo = new UserVO(user_id,user_pw,user_name,email,addr,phone,adm,gender,birth_date);
					//새로운 데이터 타입 : VO
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
		
		//message_member테이블에서 email, pw로 검색하여 전체 정보 불러오기
		String sql = "select hos_name, hos_addr, latitude, longitude, hos_info from hospitals"; 
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery(); //커서 이용
		
		//페이지 이동만 시키면 되기 때문에 보여주지 않아도 됨 -> while문 필요 x
		//검색된 값이 있으면 true, 일치하지 않으면 검색창이 비어있음 -> false
		
		while(rs.next()) { //커서 이동
			String hos_name = rs.getString(1);
			String hos_addr = rs.getString(2);
			double latitude = rs.getDouble(3);
			double longitude = rs.getDouble(4);
			String hos_info = rs.getString(5);
			
			HospitalVO vo = new HospitalVO(hos_name,hos_addr,latitude,longitude, hos_info);
			//값 추가해주기
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
		
		//message_member테이블에서 email, pw로 검색하여 전체 정보 불러오기
		String sql = "select hos_name, hos_addr, hos_phone, latitude, longitude, hos_info from hospitals"; 
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery(); //커서 이용
		
		//페이지 이동만 시키면 되기 때문에 보여주지 않아도 됨 -> while문 필요 x
		//검색된 값이 있으면 true, 일치하지 않으면 검색창이 비어있음 -> false
		
		while(rs.next()) { //커서 이동
			String hos_name = rs.getString(1);
			String hos_addr = rs.getString(2);
			String hos_phone = rs.getString(3);
			double latitude = rs.getDouble(4);
			double longitude = rs.getDouble(5);
			String hos_info = rs.getString(6);
			
			HospitalVO vo = new HospitalVO(hos_name,hos_addr,hos_phone,latitude,longitude, hos_info);
			//값 추가해주기
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
		//이거 쓸거에요
		conn();
	
		String sql = "select * from hospitals where instr(hos_info, ?)"; 
		psmt = conn.prepareStatement(sql); 
		psmt.setString(1, search);
		
		rs = psmt.executeQuery(); //커서 이용
		
		while(rs.next()) {

			String hos_name = rs.getString(2);
			String hos_addr = rs.getString(3);
			double latitude = rs.getDouble(5);
			double longitude = rs.getDouble(6);
			HospitalVO vo = new HospitalVO(hos_name,hos_addr,latitude,longitude);
		
			hr.add(vo);
			//새로운 데이터 타입 : VO
		}
		
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return hr;
}



public ArrayList<UserVO> select() {//환자정보
	ArrayList<UserVO> al = new ArrayList<UserVO>();
try {
		
		conn();
		
		//message_member테이블에서 email, pw로 검색하여 전체 정보 불러오기
		String sql = "select user_id, user_name, email, birth_date, addr, phone, gender from users"; 
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery(); //커서 이용
		
		//페이지 이동만 시키면 되기 때문에 보여주지 않아도 됨 -> while문 필요 x
		//검색된 값이 있으면 true, 일치하지 않으면 검색창이 비어있음 -> false
		
		while(rs.next()) { //커서 이동
			String user_id = rs.getString(1);
			String user_name = rs.getString(2);
			String email = rs.getString(3);
			int birth_date = rs.getInt(4);
			String addr = rs.getString(5);
			String phone = rs.getString(6);
			String gender = rs.getString(7);
			
		
			//값 묶어주기
			UserVO vo = new UserVO(user_id,user_name,email,birth_date,addr,phone,gender);
			//값 추가해주기
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
		String sql ="select user_id, user_name, email, birth_date, addr, phone, gender  from users where user_id is not null"; //  사용자가 입력한 아이디를 넣어야하므로 ?
		psmt = conn.prepareStatement(sql);
					
		rs = psmt.executeQuery(); // 로그인 정보를 rs에 담아 데이터베이스에 적재한다.

		while(rs.next())
		{
			String user_id = rs.getString(1);
			String user_name = rs.getString(2);
			String email =rs.getString(3);
			int birth_date=rs.getInt(4);
			String addr=rs.getString(5);
			String phone=rs.getString(6);
			String gender=rs.getString(7);
			
			UserVO vo = new UserVO(user_id, user_name, email, birth_date, addr, phone, gender); // vo라는 이름의 변수에 세션 email, tel, address 묶어준 것
			al.add(vo); // resultset에서 값 가져온뒤 rs.next에서 while문안에서 반복한 뒤 vo에 담아준다.
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
	// 2. JDBC 코드를 활용하여 update SQL문 명령
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
		cnt = psmt.executeUpdate(); // 명령문에는 크게 update와 Query가 있다.
		
	}
	catch (Exception e) // Exception : 오류들의 최상위 계급에 해당, 오류가 발생하면 catch문 아래를 시행한다. 
	{
		e.printStackTrace();
	}
	finally
	{
		close();
	}
	return cnt;
}

// id 중복확인에 필요한 함수
	public boolean idCheck(String user_id) {
		
		boolean check = false; // 기본값 지정
		
		conn();
		
		String sql="select user_id from users where user_id=?";
		
		try 
		{
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,user_id);
			rs = psmt.executeQuery();
			
			if(rs.next()) 
			{  //사용자가 입력한 id가 데이터베이스의 user 테이블에 존재하는 경우
				check = true;
			}
			else 
			{  //사용자가 입력한 id가 데이터베이스의 user 테이블에 존재하지 않을 경우
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

	public ArrayList<UserVO> search_f(String fam) // searchFamily에서 검색하면 users 테이블에서 일치하는 user_id값을 불러오는 함수
	{
		ArrayList<UserVO> vo0 = new ArrayList<UserVO>(); // userVO 타입 변수 선언
		try {
				conn();
				
				//  우선  users 테이블에서 검색에서 입력한 id와 일치하는 id값을 가져온다.
				String sql = "select user_id, user_name, email from users where user_id=?"; 
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, fam);
				// 검색하려고 입력한 값 fam이 저 위에 ?로 들어간다...  
				
				rs = psmt.executeQuery(); 
				
				while(rs.next()) 
				{
					String user_id = rs.getString(1);
					String user_name = rs.getString(2);
					String email= rs.getString(3);
					
					UserVO fo = new UserVO(user_id, user_name, email);
					//값 추가해주기
					vo0.add(fo); // 배열 fo에 저장해준다., 이 vo는 아래 return에서 적어져서, search_f()를 쓰면 리턴값으로 출력
				}
				
			}catch(Exception e) { 
				e.printStackTrace();
			
			}finally {
				close();
			}
		return vo0;
	}
	
	
	public int addfam(String family_id, String user_id) // 이건 사용하지 않는 함수지만 물어보기
	{
		ArrayList<FamilyVO> vo2 = new ArrayList<FamilyVO>(); // userVO 타입 변수 선언
		int cnt = 0;
		try 
		{
			conn();
		
			String sql ="update family set fam1=? where user_id=?"; // "insert into web_member value(id, pw, nick)",,,,,insert, delete, update, select 들 중 하나...셀 인 없 델인데 이거...
			
			psmt = conn.prepareStatement(sql);
			// 위에 물음표에 채워줘야하는 값
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
				vo2.add(vo); // resultset에서 값 가져온뒤 rs.next에서 while문안에서 반복한 뒤 vo에 담아준다.
			}
		} 
		catch (Exception e) // Exception : 오류들의 최상위 계급에 해당, 오류가 발생하면 catch문 아래를 시행한다. 
		{
			e.printStackTrace();
			// 실행 후 오류가 발생했을 때 에러를 출력한다.
		}
		finally
		{
			close();
		}
		return cnt;
	}
	
	public int Upfam(String family_name, String user_id) // 가족추가버튼을 누르면 fam1칼럼에 가족 추가 가능
	{
		int cnt = 0;
		try 
		{
			conn();
		
			String sql ="update family set fam1=? where user_id=?"; // "insert into web_member value(id, pw, nick)",,,,,insert, delete, update, select 들 중 하나...셀 인 없 델인데 이거...
			psmt = conn.prepareStatement(sql);
			// 위에 물음표에 채워줘야하는 값
			psmt.setString(1, family_name);
			psmt.setString(2, user_id);
			
			cnt=psmt.executeUpdate();	

		} 
		catch (Exception e) // Exception : 오류들의 최상위 계급에 해당, 오류가 발생하면 catch문 아래를 시행한다. 
		{
			e.printStackTrace();
			// 실행 후 오류가 발생했을 때 에러를 출력한다.
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
			System.out.println("memberDAO에서 넘어오는 userID : " + userID);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) 
			{
				String user_id = rs.getString(1);
				String fam1 = rs.getString(2);
				
				FamilyVO vo = new FamilyVO(user_id, fam1);
				//새로운 데이터타입 = VO	
				fva.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return fva; // family 테이블의 user_id, fam1이 저장되어야한다
	}

	public ArrayList<VaccineVO> VaccineList() {
		ArrayList<VaccineVO> vc = new ArrayList<VaccineVO>();
	try {
			
			conn();
			
			//message_member테이블에서 email, pw로 검색하여 전체 정보 불러오기
			String sql = "select vac_seq, vac_name, vac_disease, vac_code from vaccines"; 
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery(); //커서 이용
			
			//페이지 이동만 시키면 되기 때문에 보여주지 않아도 됨 -> while문 필요 x
			//검색된 값이 있으면 true, 일치하지 않으면 검색창이 비어있음 -> false
			
			while(rs.next()) { //커서 이동
				String vac_seq = rs.getString(1);
				String vac_name = rs.getString(2);
				String vac_disease = rs.getString(3);
				String vac_code = rs.getString(4);
				
			
				//값 묶어주기
				VaccineVO vo = new VaccineVO(vac_seq,vac_name,vac_disease,vac_code);
				//값 추가해주기
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
