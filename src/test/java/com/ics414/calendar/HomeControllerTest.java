package com.ics414.calendar;

import static org.junit.Assert.*;

import org.junit.Test;
import java.util.Locale;

import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

public class HomeControllerTest {

	@Test
	public void testHome() {
		Locale locale = Locale.US;
		Model model = new ExtendedModelMap();
		HomeController hc = new HomeController();
		assertEquals(hc.home(locale, model), "home");
	}

	@Test
	public void testSigninModel() {
		Model model = new ExtendedModelMap();
		HomeController hc = new HomeController();
		assertEquals(hc.signin(model), "signin");
	}

	@Test
	public void testSigninStringStringModel() {
		Model model = new ExtendedModelMap();
		HomeController hc = new HomeController();
		assertEquals(hc.signin(model), "signin");
	}
}
