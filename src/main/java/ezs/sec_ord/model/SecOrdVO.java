package ezs.sec_ord.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

import lombok.Data;

@Data
public class SecOrdVO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer shOrdID;
	private Integer shBuyerID;
	private Integer shSellerID;
	private Integer shPostcode;
	private String shCounty;
	private String shDist;
	private String shRoad;
	private Integer shPayment;
	private Integer shOrdStatus;
	private BigDecimal shPrice;
	private Date shDate;
	private Integer shBuyerScore;
	private String shBuyerTXT;
	private Integer shSellerScore;
	private String shSellerTXT;
	private Date shAPPDate;
	private String shNotes;
	private String shRecipName;
	private String shRecipPhone;
	
}
