package ezs.sec_ord_details.model;

import java.io.Serializable;
import java.math.BigDecimal;

import lombok.Data;

@Data
public class SecOrdDetailsVO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer shOrdID;
	private Integer shID;
	private String shName;
	private BigDecimal shPrice;
	private Integer shQty;
	
}
