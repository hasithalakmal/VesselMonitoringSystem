/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.malu.api.mongodao;

import com.malu.api.configuration.MongoDBConfigaration;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.WriteResult;
import com.mongodb.util.JSON;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hasitha Lakmal
 */
@Repository("boderManagementDao")
public class BoderManagementDaoImpl implements BoderManagementDao {

    @Autowired
    MongoDBConfigaration mongoDBConfigaration;

    @Override
    public String createBoder(String boderJson) {
         DB db = mongoDBConfigaration.getMongoDBConnection();
        /**
         * ** Get collection / table from 'Users' ***
         */
        // if collection doesn't exists, MongoDB will create it for you
        DBCollection table = db.getCollection("boders");
        /**
         * ** Insert ***
         */
        // create a document to store key and value
        DBObject document = (DBObject) JSON.parse(boderJson);
        WriteResult state = table.insert(document);
        return state.toString();
    }

    @Override
    public String deleteBoder(String boderName) {
         DB db = mongoDBConfigaration.getMongoDBConnection();
        /**
         * ** Get collection / table from 'testdb' ***
         */
        // if collection doesn't exists, MongoDB will create it for you
        DBCollection table = db.getCollection("boders");

        /**
         * ** Update ***
         */
        // search document where name="mkyong" and update it with new values
        BasicDBObject query = new BasicDBObject();
        query.put("boder_name", boderName);

        WriteResult state = table.remove(query);

        return state.toString();
    }

    @Override
    public String updateBoder(String boderName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String selectBoder(String boderName) {
        System.out.println(boderName);
         DB db = mongoDBConfigaration.getMongoDBConnection();
        /**
         * ** Get collection / table from 'testdb' ***
         */
        // if collection doesn't exists, MongoDB will create it for you
        DBCollection table = db.getCollection("boders");

        /**
         * ** Update ***
         */
        // search document where name="mkyong" and update it with new values
        BasicDBObject query = new BasicDBObject();
        query.put("boder_name", boderName);

        DBCursor cursor = table.find(query);

        if (cursor.hasNext()) {
            return cursor.next().toString();
        } else {
            return "{\n"
                    + "  \"boder_name\": null\n"
                    + "}";
        }
    }

    @Override
    public ArrayList selectAllBoders() {
        DB db = mongoDBConfigaration.getMongoDBConnection();
        /**
         * ** Get collection / table from 'Users' ***
         */
        // if collection doesn't exists, MongoDB will create it for you
        DBCollection table = db.getCollection("boders");

        DBCursor cursor = table.find();

        ArrayList users = new ArrayList();

        while (cursor.hasNext()) {
            DBObject user = cursor.next();
            users.add(user);
        }

        return users;
    }

}
