package com.betvn.aptech88.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class profile {

    @RequestMapping("/profile")
    public String Profile() {
        return "ad-profile";
    }
}
