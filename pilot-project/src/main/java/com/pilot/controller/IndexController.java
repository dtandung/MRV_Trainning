package com.pilot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * This class is used to declare controller for Index page
 * 
 */
@Controller
@RequestMapping(value = { "/" })
public class IndexController {

	@GetMapping
	public String initPage() {
		return "tiles.dmx";
	}
}