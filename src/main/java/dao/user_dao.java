package dao;

import java.sql.*;
import java.util.ArrayList;

public class user_dao {
	private Connection con = null;
    private Statement stmt = null;
    private ResultSet rs = null;
//드라이버 로딩
    public user_dao(){
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println(" !! <JDBC 오류> Driver load 오류: " + e.getMessage());
            e.printStackTrace();
        }
    }
//select 구문
    public ArrayList<user_dto> User_Select(){
        String server = "jdbc:mariadb://127.0.0.1:3306"; // 서버 주소
        String database = "coinWeb"; // DATABASE 이름
        String Suser_name = "root"; // 서버 아이디
        String Spassword = "a9480529"; // 서버 비밀번호

        ArrayList<user_dto> dtos = new ArrayList<user_dto>();
       //연결
        try {
            con = DriverManager.getConnection(server + "/" + database + "?useSSL=false", Suser_name, Spassword);
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM USER");
            System.out.println("Connect completed.");
            
            while(rs.next()){
            	int num = rs.getInt("num");
                String id = rs.getString("id");
                String password = rs.getString("password");
                String name = rs.getString("name");
                String nickname = rs.getString("nickname");
                String email = rs.getString("email");
                int admin = rs.getInt("admin");

                user_dto dto = new user_dto(num, id, password, name, nickname, email, admin);
                dtos.add(dto);
            }

        } catch(SQLException e) {
            System.err.println("con 오류:" + e.getMessage());
            e.printStackTrace();
        } finally {
            try{  //종료
                if(rs != null) rs.close();
                if(stmt != null) stmt.close();
                if(con != null) con.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return dtos;
    }
    
  //insert 구문
    public void User_Insert(user_dto userdto){
        String server = "jdbc:mariadb://127.0.0.1:3306"; // 서버 주소
        String database = "coinWeb"; // DATABASE 이름
        String Suser_name = "root"; // 서버 아이디
        String Spassword = "a9480529"; // 서버 비밀번호
        
       //연결
        try {
            con = DriverManager.getConnection(server + "/" + database + "?useSSL=false", Suser_name, Spassword);
            
            String sql = "INSERT INTO USER (id, Password, Name, Nickname, Email, Admin) VALUES(";
            sql += "\"" + userdto.getID() + "\"";
            sql += ", \""+ userdto.getPassword() + "\"";
            sql += ", \""+ userdto.getName() + "\"";
            sql += ", \""+ userdto.getNickname() + "\"";
            sql += ", \""+ userdto.getEmail() + "\"";
            sql += ", \""+ 0 + "\")";
            
            stmt = con.prepareStatement(sql);
            stmt.execute(sql);
            
            System.out.println("Insert completed.");
            
        } catch(SQLException e) {
            System.err.println("con 오류:" + e.getMessage());
            e.printStackTrace();
        } finally {
            try{  //종료
                if(stmt != null) stmt.close();
                if(con != null) con.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        
    }
}
