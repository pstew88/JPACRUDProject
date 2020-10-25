package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Guild;

public interface GuildDAO {

	Guild findByName(String name);

	Guild findById(int id);

	List<Guild> findByClass(String character);

	List<Guild> findByRole(String role);

	List<Guild> findByRaidGroup(int raidGroup);

	List<Guild> findByRace(String race);

	List<Guild> findAll();

	Guild addChar(Guild newChar);

	Guild editChar(Guild eChar);

	boolean deleteChar(int delChar);
}
