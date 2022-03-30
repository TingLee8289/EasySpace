package ezs.sec_refund.model;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;
@Data
public class SecRefundVO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Integer shRefID;
	private Integer shOrdID;
	private String shRefContent;
	private Date shRefApplyDate;
	private Integer shRefStatus;
}
