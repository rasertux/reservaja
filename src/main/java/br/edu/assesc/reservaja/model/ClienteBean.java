package br.edu.assesc.reservaja.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.br.CPF;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "clientes")
public class ClienteBean {

	@Id
	@CPF
	@Column(unique = true, nullable = false)
	private String cpf;

	@NotBlank
	private String nome;

	@NotNull
	@Past
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Calendar datanascimento;

	private char sexo;
	private String estadocivil;

	@Digits(integer = 8, fraction = 0)
	private Integer filhos;

	private String telefone;
	private String celular;
	private String cidadeorigem;
	private String estadoorigem;

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Calendar getDatanascimento() {
		return datanascimento;
	}

	public void setDatanascimento(Calendar datanascimento) {
		this.datanascimento = datanascimento;
	}

	public char getSexo() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public String getEstadocivil() {
		return estadocivil;
	}

	public void setEstadocivil(String estadocivil) {
		this.estadocivil = estadocivil;
	}

	public Integer getFilhos() {
		return filhos;
	}

	public void setFilhos(Integer filhos) {
		this.filhos = filhos;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getCidadeorigem() {
		return cidadeorigem;
	}

	public void setCidadeorigem(String cidadeorigem) {
		this.cidadeorigem = cidadeorigem;
	}

	public String getEstadoorigem() {
		return estadoorigem;
	}

	public void setEstadoorigem(String estadoorigem) {
		this.estadoorigem = estadoorigem;
	}
}
