package uoc.edu.svrKpax.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import uoc.edu.svrKpax.vo.Game;

import org.hibernate.*;

public class GameDaoImpl extends HibernateDaoSupport implements GameDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Game> getAllGames() {
		return getHibernateTemplate().find("from Game");
	}

	@Override
	public Game getGame(int idGame) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Game.class);
		criteria.add(Restrictions.eq("idGame", idGame));
		return (Game) DataAccessUtils.uniqueResult(getHibernateTemplate()
				.findByCriteria(criteria));
	}

	@Override
	public void addGame(Game objGame) {
		getHibernateTemplate().saveOrUpdate(objGame);
	}

	@Override
	public void delGame(Game objGame) {
		getHibernateTemplate().delete(objGame);
	}

	@Override
	public Game getGameUid(String uidGame) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Game.class);
		criteria.add(Restrictions.eq("secretGame", uidGame));
		return (Game) DataAccessUtils.uniqueResult(getHibernateTemplate()
				.findByCriteria(criteria));
	}
	
	@Override
	public Game getGameByName(String name) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Game.class);
		criteria.add(Restrictions.eq("name", name));
		return (Game) DataAccessUtils.uniqueResult(getHibernateTemplate()
				.findByCriteria(criteria));
	}

    @Override
	public List<Game> getUserGames(String username) {
		String SQL="SELECT g.* FROM `game` g, `gamedeveloper` gd, `user` u WHERE u.login=:username AND u.idUser = gd.idUser AND gd.idGame = g.idGame;";
		SQLQuery query=getSession().createSQLQuery(SQL);
    
    	query.addEntity(Game.class);
        query.setParameter("username", username);
        List<Game> list= query.list();
        return list;
	}
    
	@Override
	public List<Game> getGamesSearch(String text) {		
		Criteria criteria = getSession().createCriteria(Game.class);
		// cerquem
		String wName = text.split("#_#")[0];
		String wCategory = text.split("#_#")[1];
		String wPlatform = text.split("#_#")[2];
		String wSkill = text.split("#_#")[3];
		String wSort = text.split("#_#")[4];
				
		List<Game> list = new ArrayList<Game>();
		
		if(wName.trim().length() > 0)
			criteria.add(Restrictions.like("name", "%"+wName+"%"));
		if(!"0".equals(wCategory))
			criteria.add(Restrictions.eq("idCategory", new Integer(wCategory)));
		if(!"0".equals(wPlatform))
			criteria.add(Restrictions.eq("idPlatform", new Integer(wPlatform)));
		if(!"0".equals(wSkill))
			criteria.add(Restrictions.eq("idSkill", new Integer(wSkill)));
		
		if("1".equals(wSort)) {
			criteria.addOrder(Order.asc("name"));
		}
		else if("2".equals(wSort)) {
			criteria.addOrder(Order.asc("idCategory"));
		}
		else if("3".equals(wSort)) {
			criteria.addOrder(Order.asc("idPlatform"));
		}
		else if("4".equals(wSort)) {
			criteria.addOrder(Order.asc("idSkill"));
		}
		
		list = criteria.list();
        return list;
	}
}
