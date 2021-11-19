package com.betvn.aptech88.Controller.Website;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betvn.aptech88.Model.bet_betdetail_odd;
import com.betvn.aptech88.Model.betdetail_odd;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class bettingPage {
    @RequestMapping("/web/betting")
    public String index(@RequestParam("match") Integer match) {
        return "web-betting";
    }

    @RequestMapping("/web/bet/createBet")
	@ResponseBody
	public String checkUser(HttpServletRequest request, HttpServletResponse respone) throws ParseException, IOException, InterruptedException {
        int walletId = Integer.parseInt(request.getParameter("walletId"));
        double betAmount = Double.parseDouble(request.getParameter("betAmount"));
        
        String dateString = request.getParameter("date");
        Boolean status = Boolean.parseBoolean(request.getParameter("status"));
        int bettypeId = Integer.parseInt(request.getParameter("bettypeId"));
        int oddId = 0;
        String value = request.getParameter("value");
        Double oddValue = Double.parseDouble(request.getParameter("oddValue"));
        int fixtureId = Integer.parseInt(request.getParameter("fixtureId"));
        

        java.util.Date utilDate = new SimpleDateFormat("yyyy/MM/dd").parse(dateString);
        java.sql.Date date = new java.sql.Date(utilDate.getTime());

        List<betdetail_odd> listBetDetail = new ArrayList();
        betdetail_odd betDetail = new betdetail_odd();
        betDetail.setDate(date);
        betDetail.setStatus(status);
        betDetail.setBettypeId(bettypeId);
        betDetail.setOddId(oddId);
        betDetail.setValue(value);
        betDetail.setOddId(oddId);
        betDetail.setFixtureId(fixtureId);
        betDetail.setOddValue(oddValue);

        listBetDetail.add(betDetail);

        bet_betdetail_odd betDetaiOdd = new bet_betdetail_odd();
        betDetaiOdd.setBetdetail_odds(listBetDetail);
        betDetaiOdd.setWalletId(walletId);
        betDetaiOdd.setBetAmount(betAmount);
        
        JSONObject obj = new JSONObject(betDetaiOdd);
        CloseableHttpClient httpClient = HttpClientBuilder.create().build();
        try {
            HttpPost requestt = new HttpPost("http://localhost:8080/BetCreate");
            StringEntity params = new StringEntity(obj.toString());
            requestt.addHeader("content-type", "application/json");
            requestt.setEntity(params);
            CloseableHttpResponse responsee = httpClient.execute(requestt);
            JSONObject myObject = new JSONObject(responsee.getStatusLine());
            System.out.println(myObject);
            return myObject.toString();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return "fail";
        }

    }
}
