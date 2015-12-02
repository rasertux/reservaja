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
		ClienteBean cliente = (ClienteBean) objeto;
		getSession().merge(cliente);
		return true;
	}

	public Object consultar(Object objeto) {
		Integer id = (Integer) objeto;
		return getSession().get(ClienteBean.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Object> getItens() {
		Criteria criteria = getSession().createCriteria(ClienteBean.class);
		return (List<Object>) criteria.list();
	}

}
