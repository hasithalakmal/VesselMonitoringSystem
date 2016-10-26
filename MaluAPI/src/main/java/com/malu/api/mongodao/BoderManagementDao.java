package com.malu.api.mongodao;

import java.util.ArrayList;

public interface BoderManagementDao {

    String createBoder(String boderJson);

    String deleteBoder(String boderName);

    String updateBoder(String boderName);

    String selectBoder(String boderName);
    
    
    ArrayList selectAllBoders();
}
