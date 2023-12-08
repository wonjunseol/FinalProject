package com.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value="/login")
public class LoginController {
    @Autowired
    UserDAO userDAO;
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return"login";
    }

    @RequestMapping(value = "/loginOk", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo) {
        String returnURL = "";
        if (session.getAttribute("login") != null) {
            session.removeAttribute("login");
        }
        UserVO loginvo = userDAO.getUser(vo);
        if (loginvo != null) { // 로그인성공
             System.out.println("로그인성공!");
             session.setAttribute("login", loginvo);
             returnURL = "redirect:/book/list";
        }
        else { // 로그인실패
            System.out.println("로그인실패!");
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }
    // 로그아웃하는부분
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}

