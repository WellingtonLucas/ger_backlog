package org.springframework.social.showcase.web;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.security.core.Authentication;
import org.springframework.showcase.model.Formulario;
import org.springframework.showcase.model.Opcao;
import org.springframework.showcase.model.Pergunta;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class FormularioController {
	
	private Formulario formulario;
	
	@RequestMapping(value="/formulario", method=RequestMethod.GET)
	public String backlog(WebRequest request, Model model, Authentication authentication) {
		model.addAttribute("action", "cadastrar");
		model.addAttribute("formulario", new Formulario());
		return "formulario/formulario";
	}
	
	@RequestMapping(value = "/formulario", method = RequestMethod.POST)
	public String cadastroFormulario(@Valid@ModelAttribute("formulario") Formulario formulario, Model model,
			HttpSession session, RedirectAttributes redirect, BindingResult result) {
		for (Pergunta pergunta : formulario.getPerguntas()) {
			pergunta.setFormulario(formulario);
		}
		for (Pergunta pergunta : formulario.getPerguntas()) {
			for (Opcao opcao : pergunta.getOpcoes()) {
				opcao.setPergunta(pergunta);
			}
		}
		setForm(formulario);
		redirect.addFlashAttribute("info", "Formulário cadastrado com sucesso!");
		return  "redirect:/formulario/detalhes";
	}
	private void setForm(Formulario formulario){
		this.formulario = formulario;
	}
	
	private Formulario getForm(){
		return this.formulario;
	}
	
	@RequestMapping(value = "/formulario/detalhes")
	public String detalhesFormulario(Model model) {
		model.addAttribute("formulario",getForm());
		return  "formulario/detalhes";
	}
}
