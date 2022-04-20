package ecpay.controller;

import java.io.IOException;
import java.time.LocalDateTime;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutOneTime;

@WebServlet("/CheckMacValueServlet")
public class CheckMacValueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		AioCheckOutOneTime aio = new AioCheckOutOneTime();
		aio.setMerchantTradeNo(req.getParameter("MerchantTradeNo"));
		aio.setMerchantTradeDate("2017/01/01 08:05:23");
		aio.setTotalAmount(req.getParameter("TotalAmount"));
		aio.setTradeDesc(req.getParameter("TradeDesc"));
		aio.setItemName(req.getParameter("ItemName"));
		aio.setReturnURL("http://localhost:8080/EASYSPACE/ReturnURLServlet");
		aio.setClientBackURL("http://localhost:8080/EASYSPACE/frontend/EZ_home.jsp");
//		aio.setOrderResultURL("http://localhost:8080/EASYSPACE/ecpay/OrderResultURL.jsp");
		aio.setNeedExtraPaidInfo("N");
		aio.setRedeem("Y");
		AllInOne all = new AllInOne("");
		String form = all.aioCheckOut(aio, null);
		req.setAttribute("form", form);
		
		String url = "/ecpay/returnPage.jsp";
		RequestDispatcher dispatcher = req.getRequestDispatcher(url);
		dispatcher.forward(req, res);

	}

}
