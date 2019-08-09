package dao;

import java.sql.*;
import java.util.ArrayList;

public class test_dao {
	private Connection con = null;
    private Statement stmt = null;
    private ResultSet rs = null;
//드라이버 로딩
    public test_dao(){
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println(" !! <JDBC 오류> Driver load 오류: " + e.getMessage());
            e.printStackTrace();
        }
    }
//select 구문
    public ArrayList<test_dto> Test_Select(){
        String server = "jdbc:mariadb://127.0.0.1:3306"; // 서버 주소
        String database = "test"; // DATABASE 이름
        String user_name = "root"; // 서버 아이디
        String password = "a9480529"; // 서버 비밀번호

        ArrayList<test_dto> dtos = new ArrayList<test_dto>();
       //연결
        try {
            con = DriverManager.getConnection(server + "/" + database + "?useSSL=false", user_name, password);
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from author");
            System.out.println("정상적으로 연결되었습니다.");

            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String profile = rs.getString("profile");

                test_dto dto = new test_dto(id, name, profile);
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
}
