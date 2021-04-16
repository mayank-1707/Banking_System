package com.bank.dao;
import com.bank.entities.Transfer;
import com.bank.entities.User;
import java.sql.*;
import java.util.ArrayList;

public class TransferDao {
 private Connection con;

    public TransferDao(Connection con)
    {
        this.con = con;
    }    


    public int transferSuccess(Transfer t) 
    {
        boolean f=false;
        int k=0;
        try 
        {
            String transferfrom=t.getTransferfrom();    
            String transferto=t.getTransferto();    
            int amount=t.getAmount();    
            String s="select balance from user where name=?";
            PreparedStatement pstmt=this.con.prepareStatement(s);
            pstmt.setString(1,t.getTransferfrom());
            ResultSet rs = pstmt.executeQuery();
            int balance1=0;
            while (rs.next()) 
            {
                System.out.println(rs.getString(1));
                balance1=rs.getInt("balance");    
            }  
            if(balance1>=amount&&amount>0)
            {    
            
                String s1="UPDATE user SET balance = Balance+? where name =?";
                PreparedStatement pstmt1=this.con.prepareStatement(s1);
                pstmt1.setInt(1,t.getAmount()) ;
                pstmt1.setString(2, t.getTransferto());
                pstmt1.executeUpdate();
                
                String s2="UPDATE user SET balance = Balance-? where name =?";
                PreparedStatement pstmt2=this.con.prepareStatement(s2);
                pstmt2.setInt(1,t.getAmount()) ;
                pstmt2.setString(2, t.getTransferfrom());
                pstmt2.executeUpdate();
            
                String query="insert into transactionhistory(Sender,Recipient,Amount) values(?,?,?)";
                PreparedStatement pstmt3=this.con.prepareStatement(query);
                pstmt3.setString(1, t.getTransferfrom());
                pstmt3.setString(2, t.getTransferto());
                pstmt3.setInt(3, t.getAmount());
                pstmt3.executeUpdate();
                f=true;
                k=1;
            }
            else if(amount<0)
                k=2;
            else if(amount==0)
                k=3;
            else if(amount>balance1)
                k=4;
        
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    return k;
    }
 
}