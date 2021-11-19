package com.betvn.aptech88.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class team {
@RequestMapping("/admin/team")
    public String index(){
    return "ad-team";
}
}
