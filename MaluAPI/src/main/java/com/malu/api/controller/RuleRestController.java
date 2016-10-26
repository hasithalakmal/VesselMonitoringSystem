/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.malu.api.controller;

import com.malu.api.javacode.DMLJava;
import com.malu.api.model.Databases;
import com.malu.api.mongodao.RuleManagementDao;
import com.malu.api.query.DQLQueries;
import com.malu.api.runner.DMLQueryRunner;
import com.malu.api.runner.DQLQueryRunner;
import com.malu.api.util.JsonStringGenarator;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hasitha Lakmal
 */
@RestController
@Component
public class RuleRestController {

    @Autowired
    RuleManagementDao ruleManagementDao;

    @Autowired
    DQLQueries DQLQueries;

    @Autowired
    DMLJava DMLJava;

    @Autowired
    DQLQueryRunner DQLQueryRunner;

    @Autowired
    DMLQueryRunner DMLQueryRunner;

    @Autowired
    JsonStringGenarator jsonStringGenarator;

    @RequestMapping(value = "rule", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    public ResponseEntity<String> insertData(@RequestBody String JSON) {
        System.out.println(JSON);
        JSONObject jsonObj = new JSONObject(JSON);
        String table = jsonObj.getString("view_name");
        String logical_condition = jsonObj.getString("logical_condition");
        System.out.println("aaaa");
        String query = "Select * from "+ table+ " where "+ logical_condition+";";
        System.out.println("bbbb");
        jsonObj.append("sql", query);
        String msg = ruleManagementDao.createRule(jsonObj.toString());
        System.out.println("cccc");
        msg = jsonStringGenarator.chanageToJSON(msg);
        System.out.println(msg);
        return new ResponseEntity<>(msg, HttpStatus.OK);
    }

    @RequestMapping(value = "rule", method = RequestMethod.GET, produces = "application/json")
    public List<Databases> selectDatabases() {
        ArrayList msg = ruleManagementDao.selectAllRules();
        return msg;
    }

    @RequestMapping(value = "rule/{boderName}", method = RequestMethod.GET, produces = "application/json")
    public String selectDatabases(@PathVariable String boderName) {
        System.out.println(boderName);
        String msg = ruleManagementDao.selectRule(boderName);
        return msg;
    }

}
