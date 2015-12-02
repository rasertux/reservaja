package br.edu.assesc.reservaja.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.edu.assesc.reservaja.dao.GenericDao;
import br.edu.assesc.reservaja.model.ClienteBean;

@Service("ClienteService")
@Transactional
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	@Qualifier("ClienteDao")
	private GenericDao dao;

	public Object consultar(int id) {
		return dao.consultar(id);
	}

	public void inserir(Object objeto) {
		dao.inserir(objeto);

	}

	public void alterar(Object objeto) {
		ClienteBean cliente = (ClienteBean) dao.consultar(((ClienteBean) objeto).getId());
		if (cliente != null) {
			cliente.setNome(((ClienteBean) objeto).getNome());
			cliente.setCelular(((ClienteBean) objeto).getCelular());
			cliente.setEstadoorigem(((ClienteBean) objeto).getEstadoorigem());
			cliente.setCidadeorigem(((ClienteBean) objeto).getCidadeorigem());
			cliente.setCpf(((ClienteBean) objeto).getCpf());
			cliente.setDatanascimento(((ClienteBean) objeto).getDatanascimento());
			cliente.setEstadocivil(((ClienteBean) objeto).getEstadocivil());
			cliente.setFilhos(((ClienteBean) objeto).getFilhos());
			cliente.setSexo(((ClienteBean) objeto).getSexo());
			cliente.setTelefone(((ClienteBean) objeto).getTelefone());
		}

	}

	public void remover(Object objeto) {
		dao.remover(objeto);
	}

	public List<Object> getItens() {
		return dao.getItens();
	}

}
