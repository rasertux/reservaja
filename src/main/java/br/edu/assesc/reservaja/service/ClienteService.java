package br.edu.assesc.reservaja.service;

import java.util.List;

public interface ClienteService {

	Object consultar(Integer id);

	void inserir(Object objeto);

	void alterar(Object objeto);

	void remover(Object objeto);

	List<Object> getItens();

}
