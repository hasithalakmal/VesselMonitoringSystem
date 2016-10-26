/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.malu.api.controller;

import com.malu.api.model.Databases;
import com.malu.api.mongodao.BoderManagementDao;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
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
public class BoderManagementRestController {

    @Autowired
    BoderManagementDao boderManagementDao;

    @RequestMapping(value = "boder", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    public String insertData(@RequestBody String JSON) {
        JSONObject jsonObj = new JSONObject(JSON);
        String msg = boderManagementDao.createBoder(JSON);
        return msg;
    }
    
    @RequestMapping(value = "boder", method = RequestMethod.GET, produces = "application/json")
    public List<Databases> selectDatabases() {
        ArrayList msg = boderManagementDao.selectAllBoders();
        return msg;
    }
    
    @RequestMapping(value = "boder/{boderName}", method = RequestMethod.GET, produces = "application/json")
    public String selectDatabases(@PathVariable String boderName) {
        System.out.println(boderName);
        String msg = boderManagementDao.selectBoder(boderName);
        return msg;
    }

}
