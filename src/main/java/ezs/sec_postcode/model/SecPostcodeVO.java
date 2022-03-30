package ezs.sec_postcode.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class SecPostcodeVO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer shPostCode;
	private String shPostCounty;
	private String shPostDist;
	
	
}
