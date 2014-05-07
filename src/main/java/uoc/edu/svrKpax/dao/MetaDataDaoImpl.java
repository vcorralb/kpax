package uoc.edu.svrKpax.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import uoc.edu.svrKpax.vo.MetaData;

public class MetaDataDaoImpl extends HibernateDaoSupport implements MetaDataDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<MetaData> getAllMetaDatasGame(int idGame) {
		return getHibernateTemplate().find("from MetaData as metadata where metadata.idGame = "+idGame);
	}

	@Override
	public MetaData getMetaData(int idMetaData) {
		DetachedCriteria criteria = DetachedCriteria.forClass(MetaData.class);
		criteria.add(Restrictions.eq("idMetaData", idMetaData));
		return (MetaData) DataAccessUtils.uniqueResult(getHibernateTemplate()
				.findByCriteria(criteria));
	}

	@Override
	public void addMetaDataGame(MetaData metaData) {
		getHibernateTemplate().saveOrUpdate(metaData);
	}

	@Override
	public void delMetaDataGame(MetaData metaData) {
		getHibernateTemplate().delete(metaData);
	}

}
