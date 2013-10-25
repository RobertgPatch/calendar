package com.ics414.calendar;

import java.util.Calendar;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		/*
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		*/
		Calendar cal = Calendar.getInstance();
		DateFormat fmt = new SimpleDateFormat("MMMMM");
		String month = fmt.format(cal.getTime());
		model.addAttribute("month", month);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.clear(Calendar.MINUTE);
		cal.clear(Calendar.SECOND);
		cal.clear(Calendar.MILLISECOND);
		cal.set(Calendar.DAY_OF_WEEK, cal.getFirstDayOfWeek());
		cal.add(Calendar.WEEK_OF_YEAR, 1);
		
		model.addAttribute("days", new int[1]);
		return "index";
	}
	
	@RequestMapping(value="/signin", method=RequestMethod.GET)
	public String signin(Model model) {
		return "signin";
	}
	
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signin(@RequestParam(value="username") String username,
						 @RequestParam(value="password") String password,
						 Model model) {
		User user = User.getUser(username, password);
		if (user == null) {
			model.addAttribute("error_message", "Invalid username/password.");
			return "signin";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("username", null);
		return "home";
	}
	
}
