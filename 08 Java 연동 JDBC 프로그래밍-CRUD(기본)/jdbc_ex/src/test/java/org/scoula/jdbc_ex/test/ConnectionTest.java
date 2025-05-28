package org.scoula.jdbc_ex.test;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.scoula.jdbc_ex.test.common.JDBCUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionTest {
    @Test
    @DisplayName("jdbc_ex 연결")

   public void  testConnection() throws ClassNotFoundException, SQLException {
        Connection con = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("1. 드라이버설정성공..");

        String url = "jdbc:mysql://localhost:3306/jdbc_ex";
        String user = "scoula";
        String password = "1234";

        con = DriverManager.getConnection(url, user, password);
        System.out.println("2. db연결성공.");

        con.close();
        System.out.println("3. db연결해제.");
    }

    @Test
    @DisplayName("jdbc_ex 연결")

    public void testConnection2() throws SQLException {
        try (Connection con = JDBCUtil.getConnection()) {
            System.out.println("DB 연결 성공");
        }
    }
}
