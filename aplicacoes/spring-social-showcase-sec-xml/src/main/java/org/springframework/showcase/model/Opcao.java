package org.springframework.showcase.model;

import javax.persistence.Entity;

@Entity
public class Opcao {
	
	private String descricao;

	private Pergunta pergunta;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Pergunta getPergunta() {
		return pergunta;
	}

	public void setPergunta(Pergunta pergunta) {
		this.pergunta = pergunta;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof Opcao)){
			return false;
		}
		Opcao opcao = (Opcao) obj;
		
		return toString().equals(opcao.toString());
	}
}
