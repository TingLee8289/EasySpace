package ezs.sec_category.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class SecCategoryVO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer shCateID;
	private String shCateName;
	
	
	
}
