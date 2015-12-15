package br.edu.assesc.reservaja.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;

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

	@NotNull
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Type(type = "java.util.Calendar")
	@Column(name = "dt_entrada")
	private Calendar dataentrada;

	@NotNull
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Type(type = "java.util.Calendar")
	@Column(name = "dt_saida")
	private Calendar datasaida;

	@Digits(integer = 8, fraction = 0)
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

	public Calendar getDataentrada() {
		return dataentrada;
	}

	public void setDataentrada(Calendar dataentrada) {
		this.dataentrada = dataentrada;
	}

	public Calendar getDatasaida() {
		return datasaida;
	}

	public void setDatasaida(Calendar datasaida) {
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
