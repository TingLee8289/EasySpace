<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width" />
<style>
label {
	display: block;
}
</style>
</head>
<body>
	<form id="idFormAioCheckOut" method="post" action="<%=request.getContextPath() %>/SendServlet">
		
		
		
		<label>編號 (MerchantTradeNo): <input
			type="text" name="MerchantTradeNo" value="SH0000000000001"
			class="form-control" /> 不可重複使用。英數字大小寫混合
		</label> 
		
		<label class="col-xs-12">時間 (MerchantTradeDate): <input
			type="text" name="MerchantTradeDate" value="2022/04/18 00:00:00"
			class="form-control" /> yyyy/MM/dd HH:mm:ss
		</label> 
		
		<label class="col-xs-12">類型 (PaymentType): <input type="text"
			name="PaymentType" value="aio" class="form-control" /> aio
		</label> 
		
		<label class="col-xs-12">金額 (TotalAmount): <input type="text"
			name="TotalAmount" value="3000" class="form-control" /> 請帶整數，不可有小數點
			僅限新台幣 金額不可為 0 元 CVS&BARCODE 最低限制為 30 元，最高限制為 30,000 元
		</label> 
		
		<label class="col-xs-12">描述 (TradeDesc): <input type="text"
			name="TradeDesc" value="A x1 #B x1" class="form-control" />
		</label> 
		
		<label class="col-xs-12">名稱 (ItemName): <input type="text"
			name="ItemName" value="A x1 #B x1" class="form-control" /> 商品名稱以符號 # 分
		</label> 
		
		<label class="col-xs-12">付款方式 (ChoosePayment): <input
			type="text" name="ChoosePayment" value="Credit" /> Credit:信用卡及
			AndroidPay AndroidPay: AndroidPay WebATM:網路 ATM ATM:自動櫃員機 CVS:超商代碼
			BARCODE:超商條碼 ALL:不指定
		</label> 
		<input type="hidden" name="ServiceURL" value="https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5" />
		<input type="hidden" name="MerchantID" value="2000132" /> 
		<input type="hidden" name="HashKey" value="5294y06JbISpM5x9" /> 
		<input type="hidden" name="HashIV" value="v77hoKGq4kWxNNIS" />
		<input type="hidden" name="EncryptType " value="1" /> <!-- 固定填入 1，使用 SHA256 加密 -->

		<button type="submit" class="btn btn-default">綠界線上支付</button>
	</form>
</body>
</html>
