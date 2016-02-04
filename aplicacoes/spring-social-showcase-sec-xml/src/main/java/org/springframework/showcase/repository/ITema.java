package org.springframework.showcase.repository;

import java.util.List;

import org.springframework.showcase.model.Item;
import org.springframework.showcase.model.Tema;

public interface ITema {

	void createTema(Tema tema, int idBacklog);

	Item findTemaById(int id);

	List<Tema> listItem(int idBacklog);

}
