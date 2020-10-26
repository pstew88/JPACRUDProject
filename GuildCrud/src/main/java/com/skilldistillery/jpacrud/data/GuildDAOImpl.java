package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Guild;

@Transactional
@Service
public class GuildDAOImpl implements GuildDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Guild findByName(String name) {
		String jpql = "SELECT g FROM Guild g WHERE g.name = :name";
		Guild emps = em.createQuery(jpql, Guild.class).setParameter("name", name).getSingleResult();
		return emps;
	}

	@Override
	public List<Guild> findByClass(String character) {
		System.out.println("In find by class method");
		String jpql = "SELECT g FROM Guild g WHERE g.character = :character";
		System.out.println(character);
		List<Guild> emps = em.createQuery(jpql, Guild.class).setParameter("character", character).getResultList();
		return emps;

	}

	@Override
	public List<Guild> findByRole(String role) {
		System.out.println("In find by role method");
		String jpql = "SELECT g FROM Guild g WHERE g.role = :role";
		System.out.println(role);
		List<Guild> emps = em.createQuery(jpql, Guild.class).setParameter("role", role).getResultList();
		return emps;
	}

	@Override
	public List<Guild> findByRaidGroup(int raidGroup) {
		System.out.println("In find by RG method");
		String jpql = "SELECT g FROM Guild g WHERE g.raidGroup = :raidGroup";
		System.out.println(raidGroup);
		List<Guild> emps = em.createQuery(jpql, Guild.class).setParameter("raidGroup", raidGroup).getResultList();
		return emps;
	}

	@Override
	public List<Guild> findByRace(String race) {
		System.out.println("In find by race method");
		String jpql = "SELECT g FROM Guild g WHERE g.race = :race";
		System.out.println(race);
		List<Guild> emps = em.createQuery(jpql, Guild.class).setParameter("race", race).getResultList();
		return emps;
	}

	@Override
	public List<Guild> findAll() {
		String jpql = "SELECT g FROM Guild g";
		List<Guild> emps = em.createQuery(jpql, Guild.class).getResultList();
		return emps;
	}

	@Override
	public Guild addChar(Guild newChar) {

		em.persist(newChar);
		em.flush();

		return newChar;
	}
	
	@Override
	public boolean deleteChar(int id) {

			Guild character= em.find(Guild.class, id);
			em.remove(character);
			boolean isDeleted = ! em.contains(character);
			
			em.flush();
			return isDeleted;
		}	

	@Override
	public Guild editChar(int id, Guild eChar) {

		Guild g = em.find(Guild.class, id);
		g.setName(eChar.getName());
		g.setCharacter(eChar.getCharacter());
		g.setRace(eChar.getRace());
		g.setRaidGroup(eChar.getRaidGroup());
		g.setRole(eChar.getRole());
		
		em.flush();
		return g;
	}

	@Override
	public Guild findById(int id) {
		String jpql = "SELECT g FROM Guild g WHERE g.id = :id";
		Guild emps = em.createQuery(jpql, Guild.class).setParameter("id", id).getSingleResult();
		return emps;
	}

}
