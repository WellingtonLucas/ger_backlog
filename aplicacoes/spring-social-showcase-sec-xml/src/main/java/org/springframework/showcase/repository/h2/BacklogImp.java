package org.springframework.showcase.repository.h2;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.showcase.model.Backlog;
import org.springframework.showcase.repository.IBacklog;
import org.springframework.stereotype.Repository;

@Repository
public class BacklogImp implements IBacklog {
	private final JdbcTemplate jdbcTemplate;

	public BacklogImp(JdbcTemplate jdbc) {
		this.jdbcTemplate = jdbc;
	}

	@Override
	public void createBacklog(Backlog backlog) {
		System.out.println("Entrou");
		jdbcTemplate.update("insert into Backlog (nome, descricao) values (?, ?)", backlog.getNome(),
				backlog.getDescricao());
		System.out.println("Saiu");
	}

	@Override
	public Backlog findBacklogById(int id) {
		List<Backlog> listaBacklog = listBacklog();
		for (int i = 0; i < listaBacklog.size(); i++) {
			if (listaBacklog.get(i).getId() == id) {
				return listaBacklog.get(i);
			}
		}
		return null;
	}

	@Override
	public List<Backlog> listBacklog() {
		return (List<Backlog>) jdbcTemplate.queryForList("select * from Backlog", Backlog.class);
	}
}
