package com.furkankara;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public class _01_JDBCBaglantisiMySQL {

	static Connection con = null;
    //---------------------------------------------
    public static void main(String args[]) {

        try {
            Class.forName("com.mysql.jdbc.Driver").getConstructors();
        /* con = DriverManager.getConnection(
                   "jdbc:mysql:///deneme",
                   "katerina","1453");
        */ 
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/university", 
                    "root", "");
     //---------------------------------------------	
            if (!con.isClosed()) {
                System.out.println("Veritabanina basarili olarak baglandik.");
            } else {
                System.err.println("Veritabanina baglanti kurulamadi.");
            } 
     //---------------------------------------------	
            PreparedStatement preparedStatement =  (PreparedStatement)  con.prepareStatement("SELECT * FROM personel");
         
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while (resultSet.next()) {
             System.out.println(
                resultSet.getInt(1) + " " + resultSet.getString(2) + " "
                + resultSet.getString(3) );
            }

        } catch (Exception e) {
             System.out.println("Tüm kayitlar alinamadi. Hata: " + e);
        } finally {
             System.out.println("Tesekkur ederiz.");
        }
    }
}


