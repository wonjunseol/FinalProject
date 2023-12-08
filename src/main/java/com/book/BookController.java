package com.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {

    @Autowired
    BookService bookService;
    @RequestMapping("/")
    public String home(){
        System.out.println("Hello");
        return "test";
    }
    @RequestMapping(value="/book/list", method= RequestMethod.GET)
    public String booklist(Model model){
        System.out.println("hello");
        model.addAttribute("list", bookService.getBookList());
        return "posts";
    }

    @RequestMapping(value="/book/add", method = RequestMethod.GET)
    public String addPost(){
        return "addform";
    }

    @RequestMapping(value="/book/addok", method = RequestMethod.POST)
    public String addPostOK(BookVO vo){
        int i = bookService.insertBook(vo);
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="/book/editpost/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        BookVO bookVO = bookService.getBook(id);
        model.addAttribute("bookVO", bookVO);
        return "editform";
    }

    @RequestMapping(value="/book/editpost/editok", method = RequestMethod.POST)
    public String editPostOK(BookVO vo){
        int i = bookService.updateBook(vo);
        if(i==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:../list";
    }

    @RequestMapping(value="/book/delete/{id}", method=RequestMethod.GET)
    public String deletePostOK(@PathVariable("id")int id){
        int i = bookService.deleteBook(id);
        if(i==0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }

    @RequestMapping(value="/book/view/{id}", method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model) {
        BookDAO boardDAO = new BookDAO();
        BookVO bookVO = bookService.getBook(id);
        model.addAttribute("selectedPost", bookVO);
        return "view";
    }
}
