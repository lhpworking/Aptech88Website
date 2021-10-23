package com.betvn.aptech88.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class signup {

    @RequestMapping("/signup")
    public String signUp() {
        return "ad-signup";
    }
}
