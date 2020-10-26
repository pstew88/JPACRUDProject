package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpacrud.data.GuildDAO;
import com.skilldistillery.jpacrud.entities.Guild;

@Controller
public class GuildController {

	@Autowired
	private GuildDAO guildDao;

	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}

	@RequestMapping(path = "index.do")
	public String indexdo() {
		return "index";
	}

	@RequestMapping(path = "add.do")
	public String add() {
		return "add";
	}

	@RequestMapping(path = "getId.do")
	public String showName(int id, Model model) {
		Guild guild = guildDao.findById(id);
		model.addAttribute("guild", guild);
		return "result";
	}

	@RequestMapping(path = "getName.do")
	public String showName(String name, Model model) {
		Guild guild = guildDao.findByName(name);
		model.addAttribute("guild", guild);
		return "result";
	}

	@RequestMapping(path = "getClass.do", method = RequestMethod.GET)
	public String showClass(String character, Model model) {
		System.out.println("inside show class method");
		List<Guild> guild = guildDao.findByClass(character);
		model.addAttribute("guilds", guild);
		return "result";
	}

	@RequestMapping(path = "getRole.do")
	public String showRole(String role, Model model) {
		List<Guild> guild = guildDao.findByRole(role);
		model.addAttribute("guilds", guild);
		return "result";
	}

	@RequestMapping(path = "getGroup.do")
	public String showGroup(int raidGroup, Model model) {
		List<Guild> guild = guildDao.findByRaidGroup(raidGroup);
		model.addAttribute("guilds", guild);
		return "result";
	}

	@RequestMapping(path = "getRace.do")
	public String showRace(String race, Model model) {
		List<Guild> guild = guildDao.findByRace(race);
		model.addAttribute("guilds", guild);
		return "result";
	}

	@RequestMapping(path = "SendToUpdate.do", method = RequestMethod.GET)
	public String update(Integer id, Model model) {
		model.addAttribute("guild", guildDao.findById(id));
		return "update";
	}

//	@RequestMapping(path = "charUpdated.do", method = RequestMethod.GET)
//	public String updated(Integer id, Model model) {
//		model.addAttribute("guild", guildDao.findById(id));
//		return "updatedChar";
//	}

	@RequestMapping(path = "addChar.do", method = RequestMethod.GET)
	public String addChar(Guild guild, Model model) {
		Guild addChar = guildDao.addChar(guild);
		model.addAttribute("guild", addChar);
		return "addedChar";

	}

	@RequestMapping(path = "updatedChar.do", method = RequestMethod.GET)
	public String editChar(Integer id, Guild guild, Model model) {
		System.out.println(id);
		Guild updateChar = guildDao.editChar(id, guild);
		model.addAttribute("guild", updateChar);
		return "updatedChar";

	}

	@RequestMapping(path = "deleteChar.do")
	public String deleteChar(Integer id, Model model) {
		boolean deleteChar = guildDao.deleteChar(id);
		System.out.println("*******************"+id);
		model.addAttribute("deleted", deleteChar);
		return "deletedChar";
	}
}
