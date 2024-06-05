package com.poly.Entity;

import java.io.Serializable;
import java.security.Provider.Service;
import java.util.Date;

import org.apache.catalina.User;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Feedbacks")
public class FeedbackEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private Integer id;
	@Column(name = "Stars")
	private int stars;
	@Column(name = "Descript")
	private String descript;
	@Column(name = "Images")
	private String images;
	@Temporal(TemporalType.DATE)
	@Column(name = "CreateDate")
	private Date created_date;
	@ManyToOne @JoinColumn(name="UserID")
	UserEntity user;
	@ManyToOne @JoinColumn(name="PaymentID")
	PaymentBookingEntity paymentBooking;
	@ManyToOne @JoinColumn(name="ServiceID")
	ServiceEntity service;
}
