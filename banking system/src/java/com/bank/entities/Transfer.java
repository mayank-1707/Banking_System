/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.entities;

import java.sql.Timestamp;

/**
 *
 * @author Asus
 */
public class Transfer {
private String transferfrom;
private String transferto;
private int amount;
public Transfer(String transferfrom, String transferto, int amount) {
        this.transferfrom = transferfrom;
        this.transferto = transferto;
        this.amount = amount;
    }

   


    public String getTransferfrom() {
        return transferfrom;
    }

    public void setTransferfrom(String transferfrom) {
        this.transferfrom = transferfrom;
    }

    public String getTransferto() {
        return transferto;
    }

    public void setTransferto(String transferto) {
        this.transferto = transferto;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

  

}
