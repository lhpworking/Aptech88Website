package com.betvn.aptech88.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class user {
    @RequestMapping("/admin/user")
    public String index() {
        return "ad-user";
    }
}
