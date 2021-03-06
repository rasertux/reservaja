package br.edu.assesc.reservaja.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.edu.assesc.reservaja.dao.GenericDao;

@Service("QuartoService")
@Transactional
public class QuartoServiceImpl implements QuartoService {

	@Autowired
	@Qualifier("QuartoDao")
	private GenericDao dao;

	@Override
	public Object consultar(int id) {
		return dao.consultar(id);
	}

	@Override
	public void inserir(Object objeto) {
		dao.inserir(objeto);
	}

	@Override
	public void alterar(Object objeto) {
		dao.alterar(objeto);
	}

	@Override
	public void remover(Object objeto) {
		dao.remover(objeto);

	}

	@Override
	public List<Object> getItens() {
		return dao.getItens();
	}

}
