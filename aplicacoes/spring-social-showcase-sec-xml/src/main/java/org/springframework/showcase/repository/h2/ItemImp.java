package org.springframework.showcase.repository.h2;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.showcase.model.Item;
import org.springframework.showcase.repository.IItem;

public class ItemImp implements IItem {
	private final JdbcTemplate jdbcTemplate;

	public ItemImp(JdbcTemplate jdbc) {
		this.jdbcTemplate = jdbc;
	}

	@Override
	public void createItem(Item item, int idTema) {
		jdbcTemplate.update(
				"insert into Item (descricao, escala, idTema) values (?, ?, ?)",item.getDescricao(), item.getEscala(), idTema);
	}

	@Override
	public Item findItemById(int id) {
		return null;
	}

	@Override
	public List<Item> listItem(int idTema) {
		List<Item> resultado = new ArrayList<>();
		List<Item> listaItens = jdbcTemplate.queryForList("select * from Item",Item.class);
		for (int i = 0; i < listaItens.size(); i++) {
			if(listaItens.get(i).getTema().getId() == idTema){
				resultado.add(listaItens.get(i));
			}
		}
		return resultado;
	}

}
