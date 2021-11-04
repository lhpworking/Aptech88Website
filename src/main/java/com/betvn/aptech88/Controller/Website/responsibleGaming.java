package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class responsibleGaming {
    @RequestMapping("/web/responsible-gaming")
    public String index() {
        return "web-responsible-gaming";
    }
}
