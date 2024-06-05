package com.poly.Entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Users")
public class UserEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UserID")
	private Integer id;
	@Column(name = "Fullname")
	private String fullname;
	@Column(name = "Password")
	private String password;
	@Column(name="Email")
	private String email;
	@Column(name="phone")
	private String phone;
	@Column(name="Gender")
	private Boolean gender;
	@Column(name="created")
	@Temporal(TemporalType.DATE)
	private Date created;
	@Column(name = "Address")
	private String address;
	@Column(name="isactive")
	private Boolean isactive;
	@OneToMany(mappedBy = "user")
	List<OrderEntity> cards;
	@OneToMany(mappedBy = "user")
	List<FeedbackEntity> feedbacks;
	@OneToMany(mappedBy = "user")
	List<BookingEntity> bookings;
}
