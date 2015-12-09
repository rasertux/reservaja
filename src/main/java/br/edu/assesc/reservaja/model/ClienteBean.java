package br.edu.assesc.reservaja.model;

import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Type;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "clientes")
public class ClienteBean {

	@Id
	@GeneratedValue
	@Column(name = "cliente_id")
	private Integer id;

	@Column(unique = true)
	private String cpf;

	private String nome;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Type(type = "java.time.LocalDate")
	private LocalDate datanascimento;

	private char sexo;
	private String estadocivil;
	private Integer filhos;
	private String telefone;
	private String celular;
	private String cidadeorigem;
	private String estadoorigem;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

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

	public LocalDate getDatanascimento() {
		return datanascimento;
	}

	public void setDatanascimento(LocalDate datanascimento) {
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
