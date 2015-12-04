package br.edu.assesc.reservaja.service;

import java.util.List;

public interface ReservaService {

	Object consultar(int id);

	void inserir(Object objeto);

	void alterar(Object objeto);

	void remover(Object objeto);

	List<Object> getItens();

}
