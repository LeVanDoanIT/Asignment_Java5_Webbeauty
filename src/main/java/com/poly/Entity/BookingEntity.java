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
@Table(name = "Bookings")
public class BookingEntity implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "BookingID")
	private Integer id;
	@Column(name = "BookingDate")
	private String bookingDate;
	@Column(name = "People")
	private Integer people;
	@Column(name = "Description")
	private String descript;
	@Column(name = "Total")
	private Integer total;
	@Column(name = "Status")
	private Boolean status;
	@Column(name = "StaffConfirm")
	private Boolean staffcfm;
	@ManyToOne
	@JoinColumn(name = "UserID")
	UserEntity user;
	@ManyToOne
	@JoinColumn(name = "StaffID")
	StaffEntity staff;
	@OneToMany(mappedBy = "booking")
	List<BookingDetailEntity> bookingDetails;
}
