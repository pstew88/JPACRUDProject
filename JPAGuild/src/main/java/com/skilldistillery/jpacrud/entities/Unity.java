package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Unity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(name = "class")
	private String character;
	private String roll;
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
	public String getRoll() {
		return roll;
	}
	public void setRoll(String roll) {
		this.roll = roll;
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
	public Unity() {
		super();
	}
	@Override
	public String toString() {
		return "Unity [id=" + id + ", name=" + name + ", character=" + character + ", roll=" + roll + ", raidGroup="
				+ raidGroup + ", race=" + race + "]";
	}

	

}
