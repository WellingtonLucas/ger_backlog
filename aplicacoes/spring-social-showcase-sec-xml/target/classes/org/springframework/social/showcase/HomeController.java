package org.springframework.social.showcase;

import java.security.Principal;

import javax.inject.Inject;
import javax.inject.Provider;

import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.showcase.account.AccountRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	private final Provider<ConnectionRepository> connectionRepositoryProvider;
	
	private final AccountRepository accountRepository;

	@Inject
	public HomeController(Provider<ConnectionRepository> connectionRepositoryProvider, AccountRepository accountRepository) {
		this.connectionRepositoryProvider = connectionRepositoryProvider;
		this.accountRepository = accountRepository;
	}

	@RequestMapping("/")
	public String home(Principal currentUser, Model model) {
		model.addAttribute("connectionsToProviders", getConnectionRepository().findAllConnections());
		model.addAttribute(accountRepository.findAccountByUsername(currentUser.getName()));
		return "home";
	}
	
	private ConnectionRepository getConnectionRepository() {
		return connectionRepositoryProvider.get();
	}
}
