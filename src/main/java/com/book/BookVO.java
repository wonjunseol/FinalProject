package com.book;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter @Setter
public class BookVO {
    private int seq;
    private String title;
    private String writer;
    private String category;
    private String publisher;
    private Date regdate;
    private Date retdate;
    private String rentok;
    private int isbn;
}
