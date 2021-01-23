/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package menu_info;
import java.sql.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author muramatsu
 */
public class menu_all {
   
    int menu_id[] = new int[255];
    String menu_name[] = new String[255];
    float menu_cal[] = new float[255];
    float menu_pro[] = new float[255];
    float menu_fat[] = new float[255];
    float menu_car[] = new float[255];
    float menu_salt[] = new float[255];
    String img_path[] = new String[255];
     public int num;
     
    public void Menu_AllAccess(){
       int count = 0; //登録件数のカウント
        try {

            /* 2.2.1 データベースに接続 */
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); // SELECTの時と同じ
            String url = "jdbc:mysql://localhost/soft?characterEncoding=UTF-8&serverTimezone=JST";
            Connection conn = DriverManager.getConnection(url, "ponon1", "123456");

            /* 2.2.2 select文の実行 */
            String sql = "select * from menu_info"; //SQL文の設定 
            

            PreparedStatement stmt = conn.prepareStatement(sql); //JDBCのステートメント（SQL文）の作成

 
            
            
/* 2.2.3 実行 */
          ResultSet rs = stmt.executeQuery();
          num = 0;
          while (rs.next()) {
            
              
            menu_id[num] = rs.getInt("menu_id");
            menu_name[num] = rs.getString("menu_name");
            menu_cal[num] = rs.getFloat("menu_cal");
            menu_pro[num] = rs.getFloat("menu_pro");
            menu_fat[num] = rs.getFloat("menu_fat");
            menu_car[num] = rs.getFloat("menu_car");
            menu_salt[num] = rs.getFloat("menu_solt");
            img_path[num] = rs.getString("img_path2");

            num++;
        }

            /* 2.2.4 データベースからの切断 */
            stmt.close();
            conn.close();
            rs.close();
         
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int getMenu_id(int num) {
        return menu_id[num];
    }

    public String getMenu_name(int num) {
        return menu_name[num];
    }

    public float getMenu_cal(int num) {
        return menu_cal[num];
    }

    public float getMenu_pro(int num) {
        return menu_pro[num];
    }

    public float getMenu_fat(int num) {
        return menu_fat[num];
    }

    public float getMenu_car(int num) {
        return menu_cal[num];
    }

    public float getMenu_salt(int num) {
        return menu_salt[num];
    }

    public String getImg_path(int num) {
        return img_path[num];
    }

    public int getNum() {
        return num;
    }

    
    
}


