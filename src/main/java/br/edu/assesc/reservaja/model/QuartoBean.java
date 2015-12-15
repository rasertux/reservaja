package br.edu.assesc.reservaja.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "quartos")
public class QuartoBean {

	@Id
	@NotNull
	@Digits(integer = 8, fraction = 0)
	@Column(name = "num_quarto", nullable = false, unique = true)
	private Integer numero;

	private String nomehotel;
	private String tipo;
	
	@NotNull
	@Digits(integer = 8, fraction = 0)
	private Integer andar;
	
	@Digits(integer = 8, fraction = 0)
	private Integer camas;
	
	private boolean televisao;
	private boolean frigobar;
	private boolean arcondicionado;

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public String getNomehotel() {
		return nomehotel;
	}

	public void setNomehotel(String nomehotel) {
		this.nomehotel = nomehotel;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Integer getAndar() {
		return andar;
	}

	public void setAndar(Integer andar) {
		this.andar = andar;
	}

	public Integer getCamas() {
		return camas;
	}

	public void setCamas(Integer camas) {
		this.camas = camas;
	}

	public boolean isTelevisao() {
		return televisao;
	}

	public void setTelevisao(boolean televisao) {
		this.televisao = televisao;
	}

	public boolean isFrigobar() {
		return frigobar;
	}

	public void setFrigobar(boolean frigobar) {
		this.frigobar = frigobar;
	}

	public boolean isArcondicionado() {
		return arcondicionado;
	}

	public void setArcondicionado(boolean arcondicionado) {
		this.arcondicionado = arcondicionado;
	}

}
