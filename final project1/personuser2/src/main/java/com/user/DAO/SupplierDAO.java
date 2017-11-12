package com.user.DAO;

import java.util.List;

import com.user.entity.Category;
import com.user.entity.Supplier;

public interface SupplierDAO {
	public void addsupplier(Supplier supplier);
	public List<Supplier> getSupplierList();
	public void deletesupplier(String id);
	public Supplier getSupplier(String id);
	public void editSupplier(Supplier supplier);
}
