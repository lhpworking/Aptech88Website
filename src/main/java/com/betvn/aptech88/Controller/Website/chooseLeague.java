package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class chooseLeague {
    @RequestMapping("/web/choose-league")
    public String index() {
        return "web-choose-league";
    }
}
