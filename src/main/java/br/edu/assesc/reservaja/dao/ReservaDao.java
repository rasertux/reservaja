package br.edu.assesc.reservaja.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.edu.assesc.reservaja.model.ReservaBean;

@Repository("ReservaDao")
public class ReservaDao implements GenericDao {

	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public boolean inserir(Object objeto) {
		ReservaBean reserva = (ReservaBean) objeto;
		getSession().persist(reserva);
		return true;
	}

	public boolean remover(Object objeto) {
		Integer id = (Integer) objeto;
		SQLQuery query = getSession().createSQLQuery("delete from reservas where id = :id");
		query.setInteger("id", id);
		query.executeUpdate();
		return true;
	}

	public boolean alterar(Object objeto) {
		ReservaBean reserva = (ReservaBean) objeto;
		getSession().merge(reserva);
		return true;
	}

	public Object consultar(Object objeto) {
		Integer id = (Integer) objeto;
		return getSession().get(ReservaBean.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Object> getItens() {
		Criteria criteria = getSession().createCriteria(ReservaBean.class);
		return (List<Object>) criteria.list();
	}

}
