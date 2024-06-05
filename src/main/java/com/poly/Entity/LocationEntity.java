package com.poly.Entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Locations")
public class LocationEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "LocationID")
	private Integer id;
	@Column(name = "Area")
	private String area;
	@Column(name = "Name")
	private String location_name;
	@Column(name = "street")
	private String street_address;
	@Column(name = "Ward")
	private String ward;
	@Column(name = "District")
	private String district;
	@Column(name = "City")
	private String city;
	@Column(name = "Hotline")
	private String hotline;
	@OneToMany(mappedBy = "location")
	List<StaffEntity> staffs;
}
