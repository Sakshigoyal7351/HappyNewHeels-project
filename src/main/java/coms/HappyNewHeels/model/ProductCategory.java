package coms.HappyNewHeels.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductCategory {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String brandName; 
	
	private String style; // wear hiking sneaker biking basketball
	

	private String targetGroup;//gender M F kids- boys girl
	
	
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getBrandName() {
		return brandName;
	}


	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}


	public String getStyle() {
		return style;
	}


	public void setStyle(String style) {
		this.style = style;
	}



	public String getTargetGroup() {
		return targetGroup;
	}


	public void setTargetGroup(String targetGroup) {
		this.targetGroup = targetGroup;
	}


	@Override
	public String toString() {
		return "ProductCategory [id=" + id + ", brandName=" + brandName + ", style=" + style + ", targetGroup="
				+ targetGroup + "]";
	}


	public ProductCategory(Long id, String brandName, String style, String targetGroup) {
		super();
		this.id = id;
		this.brandName = brandName;
		this.style = style;
		this.targetGroup = targetGroup;
	}


	public ProductCategory() {
	
	}

	
	
}
