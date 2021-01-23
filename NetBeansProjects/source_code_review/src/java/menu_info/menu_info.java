package menu_info;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class menu_info {

    int menu_id;
    String menu_name;
    float menu_cal;
    float menu_pro;
    float menu_fat;
    float menu_car;
    float menu_salt;
    String img_path;
     public int num;

    //food()メソッド、img_pathを用いて献立情報を取得する
    public void food(String img_path2) {

        num = 0;
        try{
        //database connect
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String url = "jdbc:mysql://localhost/soft?characterEncoding=UTF-8&serverTimezone=JST";
        Connection conn = DriverManager.getConnection(url, "ponon1", "123456");
        
        String sql = "select * from menu_info where img_path2 = ?";
        PreparedStatement stmt = conn.prepareStatement(sql); 
        stmt.setString(1,img_path2);
        
        ResultSet rs = stmt.executeQuery();
        //data set result to protected val
        while (rs.next()) {
            
            menu_id = rs.getInt("menu_id");
            menu_name = rs.getString("menu_name");
            menu_cal = rs.getFloat("menu_cal");
            menu_pro = rs.getFloat("menu_pro");
            menu_fat = rs.getFloat("menu_fat");
            menu_car = rs.getFloat("menu_car");
            menu_salt = rs.getFloat("menu_solt");
            img_path = rs.getString("img_path2");

        }
        //databese disconnect
        rs.close();
        stmt.close();
        conn.close();
    }catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    

    public int getMenu_id() {
        return menu_id;
    }

    public String getImg_path() {
        return img_path;
    }

    public int getNum() {
        return num;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public float getMenu_cal() {
        return menu_cal;
    }

    public float getMenu_pro() {
        return menu_pro;
    }

    public float getMenu_fat() {
        return menu_fat;
    }

    public float getMenu_car() {
        return menu_car;
    }

    public float getMenu_salt() {
        return menu_salt;
    }

}
