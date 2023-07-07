package com.hostmdy.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;

import java.util.List;

import javax.sql.DataSource;


public class ResultDAO {
  
  private DataSource dataSource;
  private Connection connection;
  private Statement stmt;
  private PreparedStatement pStmt;
  private ResultSet rs;
  
  private void close() {
    try {
      connection.close();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }
  
  public ResultDAO(DataSource dataSource) {
    super();
    this.dataSource = dataSource;
  }
  
  public int createResult(Result result) {
    int rowUpdated = 0; 
    try {
      connection = dataSource.getConnection();
      
      pStmt = connection.prepareStatement("INSERT INTO result "
          + "(seatno, major, name, date, qualify, gpa) "
          + "VALUES (?, ?, ?, ?, ?, ?);");
      pStmt.setString(1, result.getSeatNo());
      pStmt.setString(2, result.getMajor());
      pStmt.setString(3, result.getName());
      Date date = Date.valueOf(result.getDate());
      pStmt.setDate(4, date);
      pStmt.setBoolean(5, result.getQualify());
      pStmt.setDouble(6, result.getGpa());
      rowUpdated = pStmt.executeUpdate();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } finally {
      close();
    }
    return rowUpdated;
  }
  
  public List<Result> getAllResult() {
    List<Result> resultList = new ArrayList<>();
    try {
      connection = dataSource.getConnection();
      
      stmt = connection.createStatement();
      
      rs=stmt.executeQuery("select * from result;");
      
      while (rs.next()) {
        resultList.add(new Result(
            rs.getInt("id"), 
            rs.getString("seatno"), 
            rs.getString("major"), 
            rs.getString("name"), 
            LocalDate.parse(rs.getDate("date").toString()), 
            rs.getBoolean("qualify"), 
            rs.getDouble("gpa")));
      }
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } finally {
      close();
    }
    return resultList;
  }
  public Result getResultById(Integer id) {
	    Result result = null;
	    try {
	      connection = dataSource.getConnection();
	      
	      stmt = connection.createStatement();
	      
	      rs=stmt.executeQuery("select * from result where id = "+id+";");
	      
	      while (rs.next()) {
	          result = new Result(
	            rs.getInt("id"), 
	            rs.getString("seatno"), 
	            rs.getString("major"), 
	            rs.getString("name"), 
	            LocalDate.parse(rs.getDate("date").toString()), 
	            rs.getBoolean("qualify"), 
	            rs.getDouble("gpa"));
	      }
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    } finally {
	      close();
	    }
	    return result;
	  }
	  
	  public int updateResult(Result result) {
	    int rowUpdated = 0;
	    try {
	      connection = dataSource.getConnection();
	      
	      pStmt = connection.prepareStatement("UPDATE result SET "
	          + "seatno = ?, "
	          + "major = ?, "
	          + "name = ?, "
	          + "date = ?, "
	          + "qualify = ?, "
	          + "gpa = ? WHERE (id = ?);");
	      pStmt.setString(1, result.getSeatNo());
	      pStmt.setString(2, result.getMajor());
	      pStmt.setString(3, result.getName());
	      Date date = Date.valueOf(result.getDate());
	      pStmt.setDate(4, date);
	      pStmt.setBoolean(5, result.getQualify());
	      pStmt.setDouble(6, result.getGpa());
	      pStmt.setInt(7, result.getId());
	      rowUpdated = pStmt.executeUpdate();
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }finally {
	      close();
	    }
	    return rowUpdated;
	  }
	  
	  public int deleteResult(Integer id) {
	    int rowUpdated = 0;
	    try {
	      connection = dataSource.getConnection();
	      pStmt = connection.prepareStatement("delete from result where id = "+id+";");
	      pStmt.setInt(1, id);
	      rowUpdated = pStmt.executeUpdate();
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    } finally {
	      close();
	    }
	    return rowUpdated;
	  }
	}