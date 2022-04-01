package ezs.sec_items.model.entity;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "sec_items", catalog = "cfa104g5")

public class SecItemsVO implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sh_id")
	private Integer shID;
	@Column(name = "sh_cate_id")
	private Integer shCateID;
	@Column(name = "sh_sellerid")
	private Integer shSellerID;
	@Column(name = "sh_name")
	private String shName;
	@Column(name = "sh_price")
	private BigDecimal shPrice;
	@Column(name = "sh_qty")
	private Integer shQTY;
	@Column(name = "sh_size")
	private String shSize;
	@Column(name = "sh_description")
	private String shDescription;
	@Column(name = "sh_condition")
	private String shCondition;
	@Column(name = "sh_time")
	private String shTime;
	@Column(name = "sh_guarantee")
	private String shGuarantee;
	@Column(name = "sh_status")
	private Integer shStatus;
	@Column(name = "sh_county")
	private String shCounty;
	@Column(name = "sh_dist")
	private String shDist;

}
