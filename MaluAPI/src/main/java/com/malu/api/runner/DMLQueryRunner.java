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
public interface DMLQueryRunner {

    String insertData(String dbName, String query);
    
    String updateData(String dbName, String query);
    
    String deleteData(String dbName, String query);
    
    String getDataFromTable(String dbName, String query);
          
}
