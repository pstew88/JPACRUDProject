package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class GuildTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Guild unity;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("GuildPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		unity = em.find(Guild.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		unity = null;
	}

	@Test
	void test() {
		assertNotNull(unity);
		assertEquals("Hilros", unity.getName());
		assertEquals("Warlock", unity.getCharacter());
		assertEquals("Dps", unity.getRole());
		assertEquals(5, unity.getRaidGroup());
		assertEquals("Orc", unity.getRace());
	}

}
