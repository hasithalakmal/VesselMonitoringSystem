package com.malu.api.mongodao;

import java.util.ArrayList;

public interface RuleManagementDao {

    String createRule(String boderJson);

    String deleteRule(String boderName);

    String updateRule(String boderName);

    String selectRule(String boderName);
    
    
    ArrayList selectAllRules();
}
