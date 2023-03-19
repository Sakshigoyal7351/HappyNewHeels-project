package coms.HappyNewHeels.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class PurchaseItem { 


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long ID;
	
	
	@ManyToOne
	@JoinColumn(name = "purchaseOrder_fk")
	private PurchaseOrder purchaseOrder;
	


	@ManyToOne
	@JoinColumn(name = "product_fk")
	private Product poduct;

	
	@ManyToOne
	@JoinColumn(name = "user_fk")
	private User user;

	private BigDecimal rate;

	private int quantity;

	private BigDecimal price;

	public PurchaseItem(Long iD, Product poduct, User user, BigDecimal rate, int quantity, BigDecimal price) {
		super();
		ID = iD;
		this.poduct = poduct;
		this.user = user;
		this.rate = rate;
		this.quantity = quantity;
		this.price = price;
	}

	public PurchaseItem() {
	
	}

	public Long getID() {
		return ID;
	}

	public void setID(Long iD) {
		ID = iD;
	}

	public Product getPoduct() {
		return poduct;
	}

	public void setPoduct(Product poduct) {
		this.poduct = poduct;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BigDecimal getRate() {
		return rate;
	}

	public void setRate(BigDecimal rate) {
		this.rate = rate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public PurchaseOrder getPurchaseOrder() {
		return purchaseOrder;
	}

	public void setPurchaseOrder(PurchaseOrder purchaseOrder) {
		this.purchaseOrder = purchaseOrder;
	}

	@Override
	public String toString() {
		return "PurchaseItem [ID=" + ID + ", poduct=" + poduct + ", user=" + user + ", rate=" + rate + ", quantity="
				+ quantity + ", price=" + price + "]";
	}
	
	
}
