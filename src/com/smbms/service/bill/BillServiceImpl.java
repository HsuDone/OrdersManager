package com.smbms.service.bill;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.smbms.dao.bill.BillMapper;
import com.smbms.pojo.Bill;
@Service("bs")
@Transactional
public class BillServiceImpl implements BillService {
	@Resource
	BillMapper bm;
	@Override
	public List<Bill> findAddBill() {
		return bm.findAllBill();
	}
	@Override
	public Bill findBillById(int id) {
		return bm.findBillById(id);
	}
	@Override
	public boolean billAdd(Bill b) {
		if(bm.billAdd(b)>0){
			return true;
		}
		return false;
	}
	@Override
	public boolean billModify(Bill b) {
		if(bm.billModify(b)>0){
			return true;
		}
		return false;
	}
	@Override
	public String billDel(int id) {
		if(bm.findBillById(id)!=null){
			if(bm.billDel(id)>0){
				return "true";
			}else{
				return "false";
			}
		}
		return "notexist";
	}
	@Override
	public List<Bill> findByNameIdAndIsPayment(String productName,
			Integer providerId, Integer isPayment) {
		return bm.findByNameIdAndIsPayment(productName, providerId, isPayment);
	}

}
