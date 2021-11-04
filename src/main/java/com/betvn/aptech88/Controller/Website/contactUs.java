package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class contactUs {
    @RequestMapping("/web/contact-us")
    public String index() {
        return "web-contact-us";
    }
}
