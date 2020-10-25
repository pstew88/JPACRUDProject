package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Guild {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(name = "class")
	private String character;
	private String role;
	@Column(name = "raid_group")
	private int raidGroup;
	private String race;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getRaidGroup() {
		return raidGroup;
	}
	public void setRaidGroup(int raidGroup) {
		this.raidGroup = raidGroup;
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public Guild() {
		super();
	}
	@Override
	public String toString() {
		return "Unity [id=" + id + ", name=" + name + ", character=" + character + ", role=" + role + ", raidGroup="
				+ raidGroup + ", race=" + race + "]";
	}

	

}
