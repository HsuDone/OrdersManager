package com.smbms.controller.provider;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smbms.pojo.Provider;
import com.smbms.service.provider.ProviderService;

@Controller
public class ProviderController {
	@Resource
	ProviderService ps;
	/*
	 * 全部供应商界面
	 */
	@RequestMapping("/sys/provider")
	public String provider(Model model,HttpServletRequest request) throws UnsupportedEncodingException{
		String proCode=request.getParameter("queryProCode");
		String proName=request.getParameter("queryProName");
		List<Provider> proList=ps.findByCodeOrName(proCode, proName);
		model.addAttribute("proList",proList);
		model.addAttribute("queryProCode", proCode);
		model.addAttribute("queryProName", proName);
		return "pro/providerlist";
	}
	/*
	 * 供应商详细信息
	 */
	@RequestMapping("/sys/proview")
	public String proview(HttpSession session,@RequestParam String proid){
		int id=Integer.parseInt(proid);
		Provider p=ps.findProvider(id);
		session.setAttribute("provider", p);
		return "pro/providerview";
	}
	/*
	 * 供应商修改界面
	 */
	@RequestMapping("/sys/providermodify")
	public String promodify(HttpSession session,@RequestParam String proid){
		int id=Integer.parseInt(proid);
		Provider p=ps.findProvider(id);
		session.setAttribute("provider", p);
		return "pro/providermodify";
	}
	/*
	 * 保存供应商修改信息
	 */
	@RequestMapping("/sys/providermodifysave")
	public String providermodifysave(Provider p ,HttpServletRequest request){
		if(ps.proModify(p)){
			return "redirect:/sys/provider";
		}
		return "redirect:/sys/providermodify";
	}
	/*
	 * 删除供应商
	 */
	@RequestMapping("/sys/delprovider")
	@ResponseBody
	public HashMap<String, String> delProvider(HttpServletRequest request){
		int id=Integer.valueOf(request.getParameter("proid"));
		HashMap<String, String> map=new HashMap<String, String>();
		map.put("delResult", ps.proDelete(id));
		return map;
	}
	/*
	 * 添加供应商界面
	 */
	@RequestMapping("/sys/provideradd")
	public String addprovider(){
		return "/pro/provideradd";
	}
	/*
	 * add供应商
	 */
	@RequestMapping("/sys/provideraddsave")
	public String providerAdd(Provider p,HttpServletRequest request){
		p.setCreationDate(new Date());
		if(ps.proAdd(p)){
			return "redirect:/sys/provider";
		}else{
			return "redirect:/sys/provideradd";
		}
	}
}
