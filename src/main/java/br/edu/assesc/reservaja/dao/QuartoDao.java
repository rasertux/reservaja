package br.edu.assesc.reservaja.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.edu.assesc.reservaja.model.QuartoBean;

@Repository("QuartoDao")
public class QuartoDao implements GenericDao {

	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public boolean inserir(Object objeto) {
		QuartoBean quarto = (QuartoBean) objeto;
		getSession().persist(quarto);
		return true;
	}

	public boolean remover(Object objeto) {
		Integer numero = (Integer) objeto;
		SQLQuery query = getSession().createSQLQuery("delete from quartos where num_quarto = :numero");
		query.setInteger("numero", numero);
		query.executeUpdate();
		return true;
	}

	public boolean alterar(Object objeto) {
		QuartoBean quarto = (QuartoBean) consultar(((QuartoBean) objeto).getNumero());
		if (quarto != null) {
			quarto.setAndar(((QuartoBean) objeto).getAndar());
			quarto.setArcondicionado(((QuartoBean) objeto).isArcondicionado());
			quarto.setCamas(((QuartoBean) objeto).getCamas());
			quarto.setFrigobar(((QuartoBean) objeto).isFrigobar());
			quarto.setNomehotel(((QuartoBean) objeto).getNomehotel());
			quarto.setTelevisao(((QuartoBean) objeto).isTelevisao());
			quarto.setTipo(((QuartoBean) objeto).getTipo());
			return true;
		}
		return false;
	}

	public Object consultar(Object objeto) {
		Integer id = (Integer) objeto;
		return getSession().get(QuartoBean.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Object> getItens() {
		Criteria criteria = getSession().createCriteria(QuartoBean.class);
		return (List<Object>) criteria.list();
	}

}
