package com.skilldistillery.jpacrud.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuildController {

	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}
}
