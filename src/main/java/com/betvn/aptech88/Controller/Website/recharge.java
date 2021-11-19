package com.betvn.aptech88.Controller.Website;

import com.betvn.aptech88.PaypalService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class recharge {
    @Autowired
	PaypalService service;
    
    @RequestMapping("/web/recharge")
    public String index() {
        return "web-recharge";
    }

    @RequestMapping(value = "/web/paypal", method=RequestMethod.POST)
    public String rechargeMoney(@RequestParam("total") String total){
        float totall = Float.parseFloat(total);
		try {
			Payment payment = service.createPayment(totall, "USD", "paypal",
					"sale", "payment", "http://localhost:8000/" + "fail",
					"http://localhost:8000/" + "web/recharge?total=" + totall);
			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					return "redirect:"+ link.getHref();
				}
			}
			
		} catch (PayPalRESTException e) {
		
			e.printStackTrace();
		}
		return "redirect:/";
    }

    // @RequestMapping(value = "/web/recharge/getPayment", method=RequestMethod.GET)
    // public @ResponseBody Object success(HttpServletRequest request) throws PayPalRESTException {
    //     String paymentId = request.getParameter("paymentId");
    //     String payerId = request.getParameter("payerId");
    //     Object payment = service.executePayment(paymentId, payerId);
        
    //     return payment;
    // }
	
	@RequestMapping(value = "fail")
    public String fail() {
        return "redirect:/web/recharge";
    }
}
