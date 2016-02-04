package org.springframework.showcase.repository;

import java.util.List;

import org.springframework.showcase.model.Item;

public interface IItem {
	
	void createItem(Item item, int idTema);

	Item findItemById(int id);
	
	List<Item> listItem (int idTema);

}
