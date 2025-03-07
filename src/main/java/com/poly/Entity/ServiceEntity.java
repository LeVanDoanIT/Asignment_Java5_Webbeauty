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
@Table(name="Services")
public class ServiceEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Serviceid")
	private Integer id;	
	@Column(name="Images")
	private String images;
	@Column(name="Service_name")
	private String service_name;
	@Column(name="Description")
	private String descript;
	@Column(name="Work_time")
	private Integer work_time;
	@Column(name="Type_service")
	private String type_service;
	@OneToMany(mappedBy = "service")
	List<ProcessEntity> process;
	@OneToMany(mappedBy = "service")
	List<BookingDetailEntity> bookingDetails;
	@OneToMany(mappedBy = "service")
	List<FeedbackEntity> feedbacks;
}
