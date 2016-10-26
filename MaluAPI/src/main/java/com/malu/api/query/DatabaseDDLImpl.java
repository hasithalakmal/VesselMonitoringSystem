/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.malu.api.query;

import org.springframework.stereotype.Service;

/**
 *
 * @author Hasitha Lakmal
 */
@Service("databaseDDL")
public class DatabaseDDLImpl implements DatabaseDDL   {


    @Override
    public String createDatabase(String dbName) {
        String query = "CREATE DATABASE "+dbName+" ;";
        return query;
    }


    @Override
    public String dropDatabase(String dbName) {
        String query = "DROP DATABASE "+dbName+" ;";
        
        return query;
    }
    
    
    @Override
    public String useDatabase(String dbName) {
        String query = "USE DATABASE "+dbName+" ;";
        
        return query;
    }

}
