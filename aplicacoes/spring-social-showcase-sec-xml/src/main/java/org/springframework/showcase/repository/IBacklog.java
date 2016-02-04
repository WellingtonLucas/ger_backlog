package org.springframework.showcase.repository;

import java.util.List;

import org.springframework.showcase.model.Backlog;

public interface IBacklog {
	
	void createBacklog(Backlog backlog);

	Backlog findBacklogById(int id);
	
	List<Backlog> listBacklog ();

}
