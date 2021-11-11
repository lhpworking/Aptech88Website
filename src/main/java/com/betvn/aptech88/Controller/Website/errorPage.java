package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class errorPage {
    @RequestMapping("/web/404")
    public String index() {
        return "web-error-page";
    }
}
