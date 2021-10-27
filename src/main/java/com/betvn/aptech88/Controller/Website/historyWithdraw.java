package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class historyWithdraw {
    @RequestMapping("/web/history-withdraw")
public String index(){
        return "web-history-withdraw";
    }
}
