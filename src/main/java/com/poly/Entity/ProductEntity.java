package com.poly.Entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;
import jakarta.persistence.GenerationType;

@Data
@Entity
@Table(name = "Products")
public class ProductEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ProductID")
	private int id;
	@Column(name = "Name")
	private String name;
	@Column(name = "Price")
	private int price;
	@Column(name = "Brand")
	private String brand;
	@Column(name = "Origin")
	private String origin;
	@Column(name = "Descript")
	private String descript;
	@Column(name = "Quantity")
	private String quantity;
	@Column(name = "isactive")
	private Boolean isActive;
	@Column(name = "images")
	private String images;
	@ManyToOne
	@JoinColumn(name = "Category")
	CategoryEnitty category;
	@ManyToOne
	@JoinColumn(name = "Staffid")
	StaffEntity staff;
}
