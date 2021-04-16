package com.bank.dao;
import com.bank.entities.User;
import java.sql.*;
import java.util.ArrayList;

public class UserDao {
    private Connection con;

    public UserDao(Connection con)
    {
        this.con = con;
    }
   
    //method to insert userr to data base;
    
    public boolean saveUser(User user)
    {
        boolean f=false;
        try 
        {
            //user will enter into database
            String query="insert into user(client_Id,name,email,balance) values(?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(query);
            pstmt.setInt(1, user.getAccountid());
            pstmt.setString(2, user.getName());
            pstmt.setString(3, user.getEmail());
            pstmt.setInt(4, user.getBalance());
            pstmt.executeUpdate();
            f=true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
   }
//get user by useremail and userpassword:   
       public ArrayList<User> getAllCategories()
    {
        ArrayList<User> list=new ArrayList<>();
        try
        {
           String q="select * from user";
           Statement st=this.con.createStatement();
           ResultSet set =st.executeQuery(q);
            while(set.next())
            {
                int accountid=set.getInt("client_Id");
                String name=set.getString("name");
                String email =set.getString("email");  
                int balance=set.getInt("balance");
                User c =new User(accountid,name,email,balance);
                list.add(c);
            }
            
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    


      
}

