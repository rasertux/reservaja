package br.edu.assesc.reservaja.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.edu.assesc.reservaja.dao.GenericDao;

@Service("ReservaService")
@Transactional
public class ReservaServiceImpl implements ReservaService {

	@Autowired
	@Qualifier("ReservaDao")
	private GenericDao dao;

	public Object consultar(int id) {
		return dao.consultar(id);
	}

	public void inserir(Object objeto) {
		dao.inserir(objeto);

	}

	public void alterar(Object objeto) {
		dao.alterar(objeto);
	}

	public void remover(Object objeto) {
		dao.remover(objeto);
	}

	public List<Object> getItens() {
		return dao.getItens();
	}

}
