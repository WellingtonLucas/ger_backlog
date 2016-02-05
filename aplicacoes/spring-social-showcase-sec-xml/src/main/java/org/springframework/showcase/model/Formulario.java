package org.springframework.showcase.model;

import java.util.List;

import javax.persistence.Entity;

@Entity
public class Formulario {

	
	private String titulo;

	private List<Pergunta> perguntas;

	private String nota;
	
	public void addPergunta(Pergunta pergunta){
		if(!getPerguntas().contains(pergunta)){
			getPerguntas().add(pergunta);
			if(pergunta.getFormulario()!=null){
				pergunta.getFormulario().getPerguntas().remove(pergunta);
			}
			pergunta.setFormulario(this);
		}
	}
	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public List<Pergunta> getPerguntas() {
		return perguntas;
	}

	public void setPerguntas(List<Pergunta> perguntas) {
		this.perguntas = perguntas;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof Formulario)){
			return false;
		}
		Formulario formulario = (Formulario) obj;
		
		return toString().equals(formulario.toString());
	}
}
