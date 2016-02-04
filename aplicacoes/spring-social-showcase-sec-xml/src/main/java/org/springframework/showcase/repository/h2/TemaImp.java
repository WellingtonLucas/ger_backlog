package org.springframework.showcase.repository.h2;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.showcase.model.Item;
import org.springframework.showcase.model.Tema;
import org.springframework.showcase.repository.ITema;

public class TemaImp implements ITema{
	private final JdbcTemplate jdbcTemplate;

	public TemaImp(JdbcTemplate jdbc) {
		this.jdbcTemplate = jdbc;
	}

	@Override
	public void createTema(Tema tema, int idBacklog) {
		jdbcTemplate.update(
				"insert into Tema (nome, idBacklog) values (?, ?)",tema.getNome(), idBacklog);
	}

	@Override
	public Item findTemaById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Tema> listItem(int idBacklog) {
		List<Tema> resultado = new ArrayList<>();
		List<Tema> temas = jdbcTemplate.queryForList("select * from Tema", Tema.class);
		for (int i = 0; i < temas.size(); i++) {
			if(temas.get(i).getBacklog().getId() == idBacklog){
				resultado.add(temas.get(i));
			}
		}
		return resultado;
	}
}
