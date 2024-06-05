package com.poly.Entity;

import java.io.Serializable;
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
import lombok.Data;

@Data
@Entity
@Table(name = "Staffs")
public class StaffEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "StaffID")
	private Integer id;
	@Column(name = "Image")
	private String image;
	@Column(name="Fullname")
	private String fullname;
	@Column(name="phone")
	private String phone;
	@Column(name="Gender")
	private Boolean gender;
	@Column(name="Email")
	private String email;
	@Column(name="job")
	private String job;
	@Column(name="Address")
	private String address;
	@Column(name="Role")
	private String role;
	@Column(name="isactive")
	private String isActive;
	@ManyToOne @JoinColumn(name="LocationID")	
	LocationEntity location;
	@OneToMany(mappedBy = "staff")
	List<ProductEntity> products;
	@OneToMany(mappedBy = "staff")
	List<PaymentBookingEntity> paymentBookings;
	@OneToMany(mappedBy = "staff")
	List<BookingEntity> bookings;
}
