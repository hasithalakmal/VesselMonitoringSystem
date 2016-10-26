/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.malu.api.runner;

import java.util.ArrayList;

/**
 *
 * @author Hasitha Lakmal
 */
public interface DatabaseRunner {

    String createDatabase(String dbName);

    String dropDatabase(String dbName);

    String useDatabase(String dbName);
    
    ArrayList getTables(String dbName);
    
    ArrayList getFeilds(String dbName, String tblName);
    
    void exportSQL(String dbName);
    
    String createTable(String query,String dbName);
    
    void dropTable(String tableName,String dbName);
    
    String addFK(String query,String dbName);
    
     ArrayList selectDataTypes(String dbName, String tblName);
          
}
