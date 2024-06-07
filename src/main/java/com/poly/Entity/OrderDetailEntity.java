package com.poly.Entity;
import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Orderdetails")
public class OrderdetailEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private Integer id;
	@Column(name = "Quantity")
	private int quantity;
	@Column(name = "Total")
	private int total;
	@ManyToOne
	@JoinColumn(name = "Productid")
	ProductEntity product;
	@ManyToOne
	@JoinColumn(name = "OrderID")
	OrderEntity order;
}
