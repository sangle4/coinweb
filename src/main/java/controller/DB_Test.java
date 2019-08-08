package controller;
import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;

public class DB_Test {
@Test
public void test() throws Exception {
    Class.forName("org.mariadb.jdbc.Driver"); // 마리아DB
    // Class.forName("com.mysql.jdbc.Driver"); MySQL

    Connection con = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/test", "root", "a9480529");// 마리아DB
    // Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test","root","a9480529"); MySQL
    System.out.println(con);
    }
}