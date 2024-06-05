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
import lombok.Data;

@Data
@Entity
@Table(name="PaymentBookings")
public class PaymentBookingEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="PaymentID")
	private String id;
	@Column(name="PaymentMethod")
	private String payment_method;
	@Column(name="CreateDate")
	private Date created_date;
	@ManyToOne @JoinColumn(name="StaffId")
	StaffEntity staff;
	@ManyToOne @JoinColumn(name="BookingID")
	BookingEntity booking;
	@OneToMany(mappedBy = "paymentBooking")
	List<FeedbackEntity> feedback;
}
