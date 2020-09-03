/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sakshi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lenovo
 */
public class UserDao {
     public static Connection getConnection(){
     
         Connection con=null;
         try
         {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","05031999");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
     }
     public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into dricon(firstname,lastname,username,password,age,city,marks,nation) values(?,?,?,?,?,?,?,?)");  
        ps.setString(1,u.getFirstname());  
        ps.setString(2,u.getLastname());
        ps.setString(3,u.getUsername());
        ps.setString(4,u.getPassword());
        ps.setInt(5,u.getAge());    
        ps.setString(6,u.getCity());
        ps.setInt(7,u.getMarks());
        ps.setString(8,u.getNation());
        
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  

    public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from dricon");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id"));  
            u.setFirstname(rs.getString("fname"));
            u.setLastname(rs.getString("lname"));
            u.setUsername(rs.getString("uname"));
            u.setPassword(rs.getString("pass"));
            u.setAge(rs.getInt("age"));
            u.setCity(rs.getString("city"));
            u.setMarks(rs.getInt("marks"));
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from dricon where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setId(rs.getInt("id"));  
            u.setFirstname(rs.getString("fname"));  
            u.setLastname(rs.getString("lname"));
             u.setUsername(rs.getString("uname")); 
            u.setPassword(rs.getString("pass"));
             u.setAge(rs.getInt("age"));  
            u.setCity(rs.getString("city"));
            u.setMarks(rs.getInt("marks"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}
