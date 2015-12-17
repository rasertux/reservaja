package br.edu.assesc.reservaja.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.edu.assesc.reservaja.model.ClienteBean;

@Repository("ClienteDao")
public class ClienteDao implements GenericDao {

	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public boolean inserir(Object objeto) {
		ClienteBean cliente = (ClienteBean) objeto;
		getSession().persist(cliente);
		return true;
	}

	public boolean remover(Object objeto) {
		String cpf = (String) objeto;
		SQLQuery query = getSession().createSQLQuery("delete from clientes where cpf = :cpf");
		query.setString("cpf", cpf);
		query.executeUpdate();
		return true;
	}

	public boolean alterar(Object objeto) {
		ClienteBean cliente = (ClienteBean) consultar(((ClienteBean) objeto).getCpf());
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
			return true;
		}
		return false;
	}

	public Object consultar(Object objeto) {
		String cpf = (String) objeto;
		return getSession().get(ClienteBean.class, cpf);
	}

	@SuppressWarnings("unchecked")
	public List<Object> getItens() {
		Criteria criteria = getSession().createCriteria(ClienteBean.class);
		return (List<Object>) criteria.list();
	}

}
