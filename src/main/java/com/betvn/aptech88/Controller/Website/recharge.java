package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class recharge {
    @RequestMapping("/web/recharge")
    public String Recharge() {
        return "web-recharge";
    }
}
