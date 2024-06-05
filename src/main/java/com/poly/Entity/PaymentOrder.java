package com.poly.Entity;

import java.util.Date;

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
@Table(name = "PaymentOrders")
public class PaymentOrder {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PaymentID")
	private Integer id;
	@Column(name = "PaymentMethod")
	private String payment_method;
	@Column(name = "CrateDate")
	private Date created_date;
	@Column(name = "ShipMethod")
	private String ship_method;
	@ManyToOne
	@JoinColumn(name = "ShoppingCard")
	OrderEntity order;
}
