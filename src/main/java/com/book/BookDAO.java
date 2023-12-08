package com.book;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.awt.print.Book;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Repository
public class BookDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertBook(BookVO vo){
        int count = sqlSession.insert("Book.insertBook", vo);
        return count;
    }

    public int deleteBook(int seq){
        int count = sqlSession.selectOne("Book.deleteBook", seq);
        return count;
    }

    public int updateBook(BookVO vo){
        int count = sqlSession.update("Book.updateBook", vo);
        return count;
    }

    public BookVO getBook(int seq){
        BookVO one = sqlSession.selectOne("Book.getBook", seq);
        return one;
    }

    public List<BookVO> getBookList(){
        List<BookVO> list = sqlSession.selectList("Book.getBookList");
        return list;
    }

}
