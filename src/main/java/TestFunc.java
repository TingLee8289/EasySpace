import java.time.LocalDateTime;

public class TestFunc {
	public static void main(String[] args) {
		
		String now = LocalDateTime.now().toString();
		StringBuffer MerchantTradeNo = new StringBuffer();
		for (int i = 0; i < now.length()-6; i++) {
			if (Character.isLetterOrDigit(now.charAt(i))) {
				MerchantTradeNo.append(now.charAt(i));
			}
		}
		
		System.out.println("SH"+MerchantTradeNo);
		System.out.println(MerchantTradeNo.length()+2);
		System.out.println(MerchantTradeNo.getClass());;
		System.out.println(MerchantTradeNo.toString().getClass());;
	}

}
