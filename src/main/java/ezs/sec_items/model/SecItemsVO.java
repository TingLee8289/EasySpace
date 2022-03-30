package ezs.sec_items.model;

import java.io.Serializable;
import java.math.BigDecimal;

import lombok.Data;

@Data
public class SecItemsVO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer shID;
	private Integer shCateID;
	private Integer shSellerID;
	private String shName;
	private BigDecimal shPrice;
	private Integer shQTY;
	private String shSize;
	private String shDescription;
	private String shCondition;
	private String shTime;
	private String shGuarantee;
	private Integer shStatus;
	private String shCounty;
	private String shDist;
	
}
