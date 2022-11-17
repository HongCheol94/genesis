package com.hongcheol.march;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
		
		private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		/**
		 * Simply selects the home view to render by returning its name.
		 */
//		@RequestMapping(value = "/", method = RequestMethod.GET)
//		public String home(Locale locale, Model model) {
//			logger.info("Welcome home! The client locale is {}.", locale);
//			
//			Date date = new Date();
//			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//			
//			String formattedDate = dateFormat.format(date);
//			
//			model.addAttribute("serverTime", formattedDate );
//			
//			return "home";
//		}
		
		@RequestMapping(value = "/home2", method = RequestMethod.GET)
		public String home2(Locale locale, Model model) {
			
			return "home2";
		}
		@RequestMapping(value = "/home3", method = RequestMethod.GET)
		public String home3(Locale locale, Model model) {
			
			return "home3";
		}
		@RequestMapping(value = "/home4", method = RequestMethod.GET)
		public String home4(Locale locale, Model model) {
			
			return "home4";
		}
		@RequestMapping(value = "/home5", method = RequestMethod.GET)
		public String home5(Locale locale, Model model) {
			
			return "home5";
		}
		
		@RequestMapping(value = "/")
		public String test() {
			return "infra/main/xdmin/choiceList";
		}
		
	
	
}
