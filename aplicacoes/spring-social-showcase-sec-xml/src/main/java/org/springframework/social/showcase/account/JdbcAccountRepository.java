/*
 * Copyright 2014 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springframework.social.showcase.account;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.showcase.model.Backlog;
import org.springframework.showcase.repository.h2.BacklogImp;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class JdbcAccountRepository implements AccountRepository {

	private final JdbcTemplate jdbcTemplate;

	private final PasswordEncoder passwordEncoder;

	@Inject
	public JdbcAccountRepository(JdbcTemplate jdbcTemplate, PasswordEncoder passwordEncoder) {
		this.jdbcTemplate = jdbcTemplate;
		this.passwordEncoder = passwordEncoder;
	}

	@Transactional
	public void createAccount(Account user) throws UsernameAlreadyInUseException {
		BacklogImp backlogImp = new BacklogImp(jdbcTemplate);
		backlogImp.createBacklog(new Backlog("backlogUM", "UmBacklog"));
		backlogImp.createBacklog(new Backlog("backlogDois", "DoisBacklog"));
		backlogImp.createBacklog(new Backlog("backlogTres", "TresBacklog"));
		
		List<Backlog> backlogs = backlogImp.listBacklog();
		for (int i = 0; i < backlogs.size(); i++) {
			System.out.println(backlogs.get(i).getId());
		}

		try {
			jdbcTemplate.update(
					"insert into Account (firstName, lastName, username, password) values (?, ?, ?, ?)",
					user.getFirstName(), user.getLastName(), user.getUsername(),
					passwordEncoder.encode(user.getPassword()));
		} catch (DuplicateKeyException e) {
			throw new UsernameAlreadyInUseException(user.getUsername());
		}
	}

	public Account findAccountByUsername(String username) {
		return jdbcTemplate.queryForObject("select username, firstName, lastName from Account where username = ?",
				new RowMapper<Account>() {
					public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
						return new Account(rs.getString("username"), null, rs.getString("firstName"), rs
								.getString("lastName"));
					}
				}, username);
	}
	
	private void testandoBanco(){
		BacklogImp backlogImp = new BacklogImp(jdbcTemplate);
		backlogImp.createBacklog(new Backlog("backlogUM", "UmBacklog"));
		backlogImp.createBacklog(new Backlog("backlogDois", "DoisBacklog"));
		backlogImp.createBacklog(new Backlog("backlogTres", "TresBacklog"));
		
		for (int i = 0; i < backlogImp.listBacklog().size(); i++) {
			System.out.println(backlogImp.listBacklog().get(i).getId());
		}
	}

}
