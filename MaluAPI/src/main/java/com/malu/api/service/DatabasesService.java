package com.malu.api.service;

import com.malu.api.model.Databases;

import java.util.List;



public interface DatabasesService {

	void saveDatabases(Databases databases);
	
	
	void deleteDatabasesBySsn(String user_dbname);

	List<Databases> findAllDatabasess(int ssn); 
	
}
