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
@Table(name = "BookingDetails")
public class BookingDetailEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "BookingDetailID")
	private Integer id;
	@ManyToOne
	@JoinColumn(name = "BookingID")
	BookingEntity booking;
	@ManyToOne
	@JoinColumn(name = "ServiceID")
	ServiceEntity service;
}
