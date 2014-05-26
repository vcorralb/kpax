package uoc.edu.svrKpax.dao;

import java.util.List;

import uoc.edu.svrKpax.util.IntegerWrapper;
import uoc.edu.svrKpax.vo.Game;

public interface GameDao {
	
	public List<Game> getAllGames();
	public Game getGame(int idGame);
	public Game getGameUid(String uidGame);
	public Game getGameByName(String name);
	public void addGame(Game objGame);
	public void delGame(Game objGame);
	public List<Game> getUserGames(String username);
	public List<Game> getGamesSearch(String text, Integer offset, Integer limit, IntegerWrapper total);
	public List<Game> getSimilarGames(String idGame);
}