package ecpay.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReturnURLServlet")
public class ReturnURLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReturnURLServlet() {
		System.out.println("yaya");
	};
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("nono");
		System.out.println(ReadRequestBody(req));

		// 計算出 CheckMacValue
//		String ECPay_MerchantID = "2000132";
//		String ECPay_HashKey = "5294y06JbISpM5x9"; 
//		String ECPay_HashIV = "v77hoKGq4kWxNNIS";
//		EcpayFunction ecfun = new EcpayFunction();
//		String CheckMacValue = ecfun.genCheckMacValue(ECPay_HashKey, ECPay_HashIV, ReadRequestBody(req));
		System.out.println(req.getAttribute("CheckMacValue"));
	}

	private String ReadRequestBody(HttpServletRequest req) {
		BufferedReader br = null;
		try {
			br = new BufferedReader(new InputStreamReader(req.getInputStream(), "UTF-8"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		String line = null;
		StringBuilder sb = new StringBuilder();
		try {
			while ((line = br.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sb.toString();
	}

}
