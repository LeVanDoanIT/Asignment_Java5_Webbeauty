package com.poly.Entity;

import com.poly.Entity.ProductEntity;
import com.poly.Entity.StaffEntity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Statistical {
	@Id
	ProductEntity product;
	Long tongSoLuong;
	double tongDoanhThu;

}
