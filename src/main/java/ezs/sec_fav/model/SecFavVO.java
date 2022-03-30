package ezs.sec_fav.model;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class SecFavVO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer shMemID;
	private Integer shID;
	private Date shAddFavTime;
	

	
}
