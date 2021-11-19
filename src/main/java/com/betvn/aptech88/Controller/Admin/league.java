package com.betvn.aptech88.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class league {
    @RequestMapping("/admin/league")
    public String index() {
        return "ad-league";
    }
}
