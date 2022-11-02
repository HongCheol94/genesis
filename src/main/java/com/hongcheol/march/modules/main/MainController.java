package com.hongcheol.march.modules.main;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
//@RequestMapping(value = "")
public class MainController {
	
	@Autowired
	MainServiceImpl service;
	
	@RequestMapping(value = "choiceList")
	public String choiceList() throws Exception{
		return "infra/main/xdmin/choiceList";
	}

	
	  @RequestMapping(value = "main") 
	  public String main(@ModelAttribute("vo") MainVo vo, Main dto, Model model) throws Exception {
		  List<Main> list = service.selectList(vo);
		  model.addAttribute("list", list);
		  
		  List<Main> searchMadeCountry = service.searchMadeCountry(dto);
		  model.addAttribute("searchMadeCountry", searchMadeCountry);
		  
		  List<Main> searchMadeby = service.searchMadeby(dto);
		  model.addAttribute("searchMadeby", searchMadeby);
		  
		  List<Main> searchModel = service.searchModel(dto);
		  model.addAttribute("searchModel", searchModel);
		  
		  return "infra/main/xdmin/main";
	  }
	  
	  @ResponseBody
	  @RequestMapping(value = "madeCountry")
	  public Map<String,Object> searchMadeCountry(Main dto) throws Exception{
		  Map<String, Object> returnMap = new HashMap<String, Object>();
		  
		  List<Main> searchMadeby = service.searchMadeby(dto);
		  
		  if(searchMadeby != null) {
			  returnMap.put("rt", "success");
			  returnMap.put("searchMadeby", searchMadeby);
		  }else {
			  returnMap.put("rt", "fall");
		  }
		  return returnMap;
	  }
	  
	  @ResponseBody
	  @RequestMapping(value = "madeby")
	  public Map<String, Object> searchMadeby(Main dto) throws Exception {
		  Map<String, Object> returnMap = new HashMap<String, Object>();
		  
		  List<Main> searchModel = service.searchModel(dto);
		  
		  if(searchModel != null) {
			  returnMap.put("rt", "success");
			  returnMap.put("searchModel", searchModel);
		  }else {
			  returnMap.put("rt", "fall");
		  }
		  return returnMap;
	  }
	  
	  @RequestMapping(value = "/test/publicCorona1List")
		public String publicCorona1List(Model model) throws Exception {
			
			System.out.println("asdfasdfasdf");
			
			String apiUrl = "http://apis.data.go.kr/B551177/AviationStatsByTimeline/getTotalNumberOfFlight?serviceKey=Wst9eJwnAkw85RNgtOYjw6yBnJSEDz23Jrey2N1bWypZxjzmFrVvIZbaLxCWGIUKPKM8Jd%2BEwxn7hI1jkpyXaw%3D%3D&from_month=201405&to_month=201405&periodicity=0&pax_cargo=Y&domestic_foreign=I&type=json";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				System.out.println("line: " + line);
				stringBuilder.append(line);
			}

			bufferedReader.close();
			httpURLConnection.disconnect();

			System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
			
//			json object + array string -> java map
			
	        ObjectMapper objectMapper = new ObjectMapper();
	        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
	        
	        System.out.println("######## Map");
			for (String key : map.keySet()) {
				String value = String.valueOf(map.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			Map<String, Object> header = new HashMap<String, Object>();
			header = (Map<String, Object>) map.get("header");
			
			System.out.println("######## Header");
			for (String key : header.keySet()) {
				String value = String.valueOf(header.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
//			String aaa = (String) header.get("resultCode");
			
//			System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//			System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
			
			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>) map.get("body");
			
			List<Home> items = new ArrayList<Home>();
			items = (List<Home>) body.get("items");
			
			
			System.out.println("items.size(): " + items.size());
			
//			for(Home item : items) {
//				System.out.println(item.getMM());
//			}
			
			model.addAllAttributes(header);
			model.addAllAttributes(body);
			
			return "/infra/api/xdmin/api";
		}

	 
	

}
