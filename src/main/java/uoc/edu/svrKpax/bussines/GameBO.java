package uoc.edu.svrKpax.bussines;

import java.util.Date;
import java.util.List;

import uoc.edu.svrKpax.vo.Game;


public interface GameBO {
	
	public List<Game> listGames(String campusSession);
	public List<Game> listUserGames(String username,String campusSession);
	public Boolean addGame(String campusSession, String nameGame,int idGame);
	public List<Game> listGames(String campusSession, int idOrderer, int idFilterer, List<String> fields, List<String> values);
	public Boolean addGame(String campusSession, String nameGame,int idGame, int idCategory, Date creationDate);
	public Boolean delGame(String campusSession,int idGame);
	public Game getGame(String idGame,String campusSession);
	
}

