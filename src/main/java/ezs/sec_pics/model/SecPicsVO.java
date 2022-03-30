package ezs.sec_pics.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class SecPicsVO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Integer shPicID;
	private Integer shID;
	private byte[] shPic;
	
}
