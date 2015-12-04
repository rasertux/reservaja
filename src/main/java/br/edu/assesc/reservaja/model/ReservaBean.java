package br.edu.assesc.reservaja.model;

import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Type;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "reservas")
public class ReservaBean {

	@Id
	@GeneratedValue
	private Integer id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "cliente_id")
	private ClienteBean cpf;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Type(type = "java.time.LocalDate")
	@Column(name = "dt_entrada")
	private LocalDate dataentrada;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Type(type = "java.time.LocalDate")
	@Column(name = "dt_saida")
	private LocalDate datasaida;

	private Integer qtdacompanhantes;

	@ManyToOne(optional = false)
	@JoinColumn(name = "numero_quarto")
	private QuartoBean numeroquarto;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ClienteBean getCpf() {
		return cpf;
	}

	public void setCpf(ClienteBean cpf) {
		this.cpf = cpf;
	}

	public LocalDate getDataentrada() {
		return dataentrada;
	}

	public void setDataentrada(LocalDate dataentrada) {
		this.dataentrada = dataentrada;
	}

	public LocalDate getDatasaida() {
		return datasaida;
	}

	public void setDatasaida(LocalDate datasaida) {
		this.datasaida = datasaida;
	}

	public Integer getQtdacompanhantes() {
		return qtdacompanhantes;
	}

	public void setQtdacompanhantes(Integer qtdacompanhantes) {
		this.qtdacompanhantes = qtdacompanhantes;
	}

	public QuartoBean getNumeroquarto() {
		return numeroquarto;
	}

	public void setNumeroquarto(QuartoBean numeroquarto) {
		this.numeroquarto = numeroquarto;
	}

}
