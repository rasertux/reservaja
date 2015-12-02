package br.edu.assesc.reservaja.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "reservas")
public class ReservaBean {

	@Id
	private Integer id;

	@ManyToOne
	private ClienteBean cpf;

	@Temporal(TemporalType.DATE)
	@Column(name = "dt_entrada")
	private Calendar dataentrada;

	@Temporal(TemporalType.DATE)
	@Column(name = "dt_saida")
	private Calendar datasaida;

	private Integer qtdacompanhantes;

	@ManyToOne
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
