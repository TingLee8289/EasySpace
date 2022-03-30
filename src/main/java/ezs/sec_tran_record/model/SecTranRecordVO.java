package ezs.sec_tran_record.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

import lombok.Data;
@Data
public class SecTranRecordVO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer shTranID;
	private Integer shTranMemID;
	private Date shTranTime;
	private Integer shTranCategory;
	private BigDecimal shTranAmount;
	private BigDecimal shTranAP;
	private BigDecimal shTranBal;

}
