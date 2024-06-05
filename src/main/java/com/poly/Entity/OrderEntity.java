package com.poly.Entity;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Orders")
public class OrderEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private int id;
	@Column(name = "Total")
	private int total;
	@Column(name = "Address")
	private String address;
	@Temporal(TemporalType.DATE)
	@Column(name = "CreateDate")
	private Date created_date;
	@ManyToOne
	@JoinColumn(name = "UserID")
	UserEntity user;
	@OneToMany(mappedBy = "order")
	List<OrderDetailEntity> orderDetails;
}
