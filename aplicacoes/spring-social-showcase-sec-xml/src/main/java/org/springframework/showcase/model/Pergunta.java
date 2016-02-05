package org.springframework.showcase.model;

import java.util.List;

import javax.persistence.Entity;

@Entity
public class Pergunta {
	
	private String descricao;
	
	private List<Opcao> opcoes;
	
	private Formulario formulario;
	
	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public List<Opcao> getOpcoes() {
		return opcoes;
	}

	public void setOpcoes(List<Opcao> opcoes) {
		this.opcoes = opcoes;
	}
	public void addOpcao(Opcao opcao){
		if(!getOpcoes().contains(opcao)){
			getOpcoes().add(opcao);
			if(opcao.getPergunta()!=null){
				opcao.getPergunta().getOpcoes().remove(opcao);
			}
			opcao.setPergunta(this);
		}
	}
	public Formulario getFormulario() {
		return formulario;
	}

	public void setFormulario(Formulario enquete) {
		this.formulario = enquete;
	}

	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof Pergunta)){
			return false;
		}
		Pergunta pergunta = (Pergunta) obj;
		
		return toString().equals(pergunta.toString());
	}
}
