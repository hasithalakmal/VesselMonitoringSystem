/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.malu.api.runner;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.stereotype.Service;

/**
 *
 * @author Hasitha Lakmal
 */
@Service("databaseRunner")
public class DatabaseRunnerImpl implements DatabaseRunner {

    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";

    @Override
    public String createDatabase(String dbName) {
        String msg = "";
        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);

            //STEP 4: Execute a query
            System.out.println("Creating database...");
            stmt = (Statement) conn.createStatement();

            String sql = "CREATE DATABASE " + dbName;
            int x = stmt.executeUpdate(sql);
            if (x != 1) {
                msg = stmt.getExceptionInterceptor().toString();
                System.err.println("Error !!!!!!!!!!!!!!!!!!!" + msg);
            } else {
                msg = "ok";
            }
            System.out.println("Database created successfully...");
        } catch (SQLException se) {

            System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");

            int count = 1;
            while (se != null) {
                int ecode = se.getErrorCode();
                String sqlState = se.getSQLState();
                String sqlMsg = se.getMessage();
                System.out.println("SQLException " + count);
                System.out.println("Code: " + ecode);
                System.out.println("SqlState: " + sqlState);
                System.out.println("Error Message: " + sqlMsg);
                msg = msg + "SQLException " + count + "\nCode: " + ecode + "\nSqlState: " + sqlState + "\nError Message: " + sqlMsg + "\n\n\n";
                se = se.getNextException();
                count++;
            }
            System.out.println("___________________________________________________");

            //msg = se.getLocalizedMessage();
            //System.err.println("Error #####" + se.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DMLQueryRunnerImpl.class.getName()).log(Level.SEVERE, null, ex);
        }  finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try
        System.out.println("Goodbye!");

        return msg;
    }

    @Override
    public String dropDatabase(String dbName) {
        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);

            //STEP 4: Execute a query
            System.out.println("Creating database...");
            stmt = (Statement) conn.createStatement();

            String sql = "DROP DATABASE " + dbName;
            stmt.executeUpdate(sql);
            System.out.println("Database created successfully...");
        } catch (SQLException | ClassNotFoundException se) {
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try
        System.out.println("Goodbye!");

        return "success";
    }

    @Override
    public String useDatabase(String dbName) {
        String query = "USE DATABASE " + dbName + " ;";

        return query;
    }

    @Override
    public ArrayList getTables(String dbName) {
        ArrayList tables = new ArrayList();

        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = (Connection) DriverManager.getConnection(DB_URL + dbName, USER, PASS);

            //STEP 4: Execute a query
            System.out.println("Creating database...");
            stmt = (Statement) conn.createStatement();

            DatabaseMetaData md = conn.getMetaData();
            ResultSet rs = md.getTables(null, null, "%", null);
            while (rs.next()) {
                String tbl = rs.getString(3);
                tables.add(tbl);
            }

            System.out.println("Database created successfully...");
        } catch (SQLException | ClassNotFoundException se) {
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try
        System.out.println("Goodbye!");

        return tables;
    }

    @Override
    public void exportSQL(String dbName) {
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>");
        // String dumpCommand = "mysqldump " + dbName + " -h " + ip + " -u " + user + " -p" + pass;
        String dumpCommand = "mysqldump -u root -p MYDB > db_backup.sql";
    }

    @Override
    public String createTable(String query, String dbName) {
        String msg = "";
        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            conn = (Connection) DriverManager.getConnection(DB_URL + dbName, USER, PASS);
            System.out.println("Connected database successfully...");

            //STEP 4: Execute a query
            System.out.println("Creating table in given database...");
            stmt = (Statement) conn.createStatement();
            System.out.println(query);
            String sql = query;

            int x = stmt.executeUpdate(sql);
            System.out.println("**************************************************************");
            System.out.println(x);
            System.out.println("**************************************************************");
            
            if (x != 0) {
                msg = stmt.getExceptionInterceptor().toString();
                System.err.println("Error !!!!!!!!!!!!!!!!!!!" + msg);
            } else {
                msg = "ok";
            }
            System.out.println("Created table in given database...");
        } catch (SQLException se) {

            System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");

            int count = 1;
            while (se != null) {
                int ecode = se.getErrorCode();
                String sqlState = se.getSQLState();
                String sqlMsg = se.getMessage();
                System.out.println("SQLException " + count);
                System.out.println("Code: " + ecode);
                System.out.println("SqlState: " + sqlState);
                System.out.println("Error Message: " + sqlMsg);
                msg = msg + "SQLException " + count + "\nCode: " + ecode + "\nSqlState: " + sqlState + "\nError Message: " + sqlMsg + "\n\n\n";
                se = se.getNextException();
                count++;
            }
            System.out.println("___________________________________________________");

            //msg = se.getLocalizedMessage();
            //System.err.println("Error #####" + se.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DMLQueryRunnerImpl.class.getName()).log(Level.SEVERE, null, ex);
        }   finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try
        System.out.println("Goodbye!");
        return msg;
    }

    @Override
    public void dropTable(String tableName, String dbName) {
        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            conn = (Connection) DriverManager.getConnection(DB_URL + dbName, USER, PASS);
            System.out.println("Connected database successfully...");

            //STEP 4: Execute a query
            System.out.println("Deleting table in given database...");
            stmt = (Statement) conn.createStatement();

            String sql = "DROP TABLE " + tableName;

            stmt.executeUpdate(sql);
            System.out.println("Table  deleted in given database...");
        } catch (SQLException | ClassNotFoundException se) {
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try
        System.out.println("Goodbye!");
    }

    @Override
    public String addFK(String query, String dbName) {
        String msg = "";
        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            conn = (Connection) DriverManager.getConnection(DB_URL + dbName, USER, PASS);
            System.out.println("Connected database successfully...");

            //STEP 4: Execute a query
            System.out.println("Deleting table in given database...");
            stmt = (Statement) conn.createStatement();

            String sql = query;

            int x = stmt.executeUpdate(sql);
            if (x != 1) {
                msg = stmt.getExceptionInterceptor().toString();
                System.err.println("Error !!!!!!!!!!!!!!!!!!!" + msg);
            } else {
                msg = "ok";
            }
            System.out.println("Table  deleted in given database...");
        } catch (SQLException se) {

            System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");

            int count = 1;
            while (se != null) {
                int ecode = se.getErrorCode();
                String sqlState = se.getSQLState();
                String sqlMsg = se.getMessage();
                System.out.println("SQLException " + count);
                System.out.println("Code: " + ecode);
                System.out.println("SqlState: " + sqlState);
                System.out.println("Error Message: " + sqlMsg);
                msg = msg + "SQLException " + count + "\nCode: " + ecode + "\nSqlState: " + sqlState + "\nError Message: " + sqlMsg + "\n\n\n";
                se = se.getNextException();
                count++;
            }
            System.out.println("___________________________________________________");

            //msg = se.getLocalizedMessage();
            //System.err.println("Error #####" + se.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DMLQueryRunnerImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try
        System.out.println("Goodbye!");
        return msg;
    }

    @Override
    public ArrayList getFeilds(String dbName, String tblName) {
        ArrayList colomns = new ArrayList();

        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = (Connection) DriverManager.getConnection(DB_URL + dbName, USER, PASS);

            //STEP 4: Execute a query
            System.out.println("Creating database...");
            stmt = (Statement) conn.createStatement();

            DatabaseMetaData md = conn.getMetaData();
            ResultSet rs = md.getColumns(null, null, tblName, null);

            while (rs.next()) {
                String col = rs.getString("COLUMN_NAME");
                colomns.add(col);
            }

            System.out.println("Database created successfully...");
        } catch (SQLException | ClassNotFoundException se) {
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try
        System.out.println("Goodbye!");

        return colomns;
    }

    @Override
    public ArrayList selectDataTypes(String dbName, String tblName) {
        ArrayList colomns = new ArrayList();
        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = (Connection) DriverManager.getConnection(DB_URL + dbName, USER, PASS);

            System.out.println("Got Connection.");
            Statement st = (Statement) conn.createStatement();

            ResultSet rsColumns = null;
            DatabaseMetaData meta = conn.getMetaData();
            rsColumns = meta.getColumns(null, null, tblName, null);
            while (rsColumns.next()) {
                String columnName = rsColumns.getString("COLUMN_NAME");
                System.out.println("column name=" + columnName);
                String columnType = rsColumns.getString("TYPE_NAME");
                System.out.println("type:" + columnType);
                int size = rsColumns.getInt("COLUMN_SIZE");
                System.out.println("size:" + size);
                int nullable = rsColumns.getInt("NULLABLE");
                colomns.add(columnType);
                
                if (nullable == DatabaseMetaData.columnNullable) {
                    System.out.println("nullable true");
                } else {
                    System.out.println("nullable false");
                }
                int position = rsColumns.getInt("ORDINAL_POSITION");
                System.out.println("position:" + position);
            }

            }catch (SQLException | ClassNotFoundException se) {
        }finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }//end try

            System.out.println(colomns);
            return colomns;
        }

    }
