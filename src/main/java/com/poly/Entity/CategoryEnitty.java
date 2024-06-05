package com.poly.Entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="Categories")
public class CategoryEnitty implements Serializable{
	@Id
	@Column(name="Id")
	private String id;
	@Column(name="Name")
	@OneToMany (mappedBy = "category")
	List<ProductEntity> products;
}
