/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.malu.api.runner;

/**
 *
 * @author Hasitha Lakmal
 */
public interface DQLQueryRunner {

    String selectData(String dbName, String query);
    
    String selectDataForEditableTable(String dbName, String tblName, String query);
    
    String selectDataForEditableTableUpdate(String dbName, String tblName, String query);
    
   String selectDataForEditableTableDelete(String dbName, String tblName, String query);
   
   String selectDataForQueryTest(String dbName,  String query);
          
}
