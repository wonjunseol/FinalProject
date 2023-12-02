package com.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.awt.print.Book;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@Repository
public class BookDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    private final String BOARD_INSERT = "insert into Book(title, writer, category, publisher, rentok, isbn) values (?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update Book set title=?, writer=?, category=?, publisher=?, rentok=?, isbn=? where seq=?";
    private final String BOARD_DELETE = "delete from Book where seq=?";
    private final String BOARD_GET = "select * from Book where seq=?";
    private final String BOARD_LIST = "select * from Book order by seq desc";

    public int insertBook(BookVO vo){
        return jdbcTemplate.update(BOARD_INSERT,
                new Object[]{vo.getTitle(), vo.getWriter(), vo.getCategory(), vo.getPublisher(), vo.getRentok(), vo.getIsbn()});
    }

    public int deleteBook(int seq){
        return jdbcTemplate.update(BOARD_DELETE,
                new Object[]{seq});
    }

    public int updateBook(BookVO vo){
        return jdbcTemplate.update(BOARD_UPDATE,
                new Object[]{vo.getTitle(), vo.getWriter(), vo.getCategory(), vo.getPublisher(), vo.getRentok(), vo.getIsbn(), vo.getSeq()});
    }

    public BookVO getBook(int seq){
        return jdbcTemplate.queryForObject(BOARD_GET,
                new Object[] {seq},
                new BeanPropertyRowMapper<BookVO>(BookVO.class));
    }

    public List<BookVO> getBookList(){
        return jdbcTemplate.query(BOARD_LIST, new RowMapper<BookVO>() {
            @Override
            public BookVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                BookVO data = new BookVO();
                data.setSeq(rs.getInt("seq"));
                data.setTitle(rs.getString("title"));
                data.setWriter(rs.getString("writer"));
                data.setCategory(rs.getString("category"));
                data.setPublisher(rs.getString("publisher"));
                data.setRentok(rs.getString("rentok"));
                data.setIsbn(rs.getInt("isbn"));
                data.setRegdate(rs.getDate("regdate"));
                data.setRetdate(rs.getDate("retdate"));
                return data;
            }
        });
    }

}
