package uoc.edu.svrKpax.rest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import uoc.edu.svrKpax.bussines.CategoryBO;
import uoc.edu.svrKpax.bussines.CommentBO;
import uoc.edu.svrKpax.bussines.GameBO;
import uoc.edu.svrKpax.bussines.GameInstanceBO;
import uoc.edu.svrKpax.bussines.GameLikeBO;
import uoc.edu.svrKpax.bussines.GameScoreBO;
import uoc.edu.svrKpax.bussines.TagBO;
import uoc.edu.svrKpax.bussines.PlatformBO;
import uoc.edu.svrKpax.bussines.SkillBO;
import uoc.edu.svrKpax.util.AES;
import uoc.edu.svrKpax.vo.Category;
import uoc.edu.svrKpax.vo.Comment;
import uoc.edu.svrKpax.vo.Game;
import uoc.edu.svrKpax.vo.GameLike;
import uoc.edu.svrKpax.vo.Score;
import uoc.edu.svrKpax.vo.Tag;
import uoc.edu.svrKpax.vo.Platform;
import uoc.edu.svrKpax.vo.Skill;

import com.sun.jersey.spi.inject.Inject;

@SuppressWarnings("deprecation")
@Path("/game")
public class Games {

	@Inject
	private GameBO gBo;
	@Inject
	private GameLikeBO lBo;
	@Inject
	private GameInstanceBO iBo;
	@Inject
	private GameScoreBO scBo;
	@Inject
	private CategoryBO catBo;
	@Inject
	private TagBO tagBo;
	@Inject
	private CommentBO comBo;
	@Inject
	private PlatformBO platBo;
	@Inject
	private SkillBO skillBo;
	

	/* GAMES */
	/*@GET
	@Path("/{param}/list")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Game> getGames(@PathParam("param") String campusSession) {
		return gBo.listGames(campusSession);
	}
	
	
	@POST
	@Path("/add")
	public String addGame(@FormParam("secretSession") String campusSession,@FormParam("name") String nameGame,@FormParam("idGame") String idGame){
		if(gBo.addGame(campusSession, nameGame,Integer.parseInt(idGame))){
			return "OK";
		}else{
			return "ERROR";
		}
	}*/
	
	@POST
	@Path("/{param}/list/{idOrderer}/{idFilterer}")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Game> getGames(@PathParam("param") String campusSession, @PathParam("idOrderer") int idOrderer, @PathParam("idFilterer") int idFilterer, @FormParam("fields") List<String> fields, @FormParam("values")  List<String> values) {
		return gBo.listGames(campusSession, idOrderer, idFilterer, fields, values);
	}
	
	@POST
	@Path("/game/{session}/listDev/{username}") 
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	//
	// No sobra el primer /game?????????????????????
	//
	public List<Game> getUserGames(@PathParam("username") String username,@PathParam("session") String campusSession) {
		return gBo.listUserGames(username, campusSession);
	}

	@POST
	@Path("/add")
	public String addGame(@FormParam("secretSession") String campusSession,@FormParam("name") String nameGame,@FormParam("idGame") String idGame, @FormParam("idCategory") String idCategory, @FormParam("dateCreation") String dateCreation ){
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		sdf.setLenient(false);
		try
		{
			if(gBo.addGame(campusSession, nameGame,Integer.parseInt(idGame), Integer.parseInt(idCategory), sdf.parse(dateCreation))){
				return "OK";
			}
		}
		catch (NumberFormatException e) {}
		catch (ParseException e) {}
		return "ERROR";
	}
	
	@GET
	@Path("/{param}/get/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public Game getGame(@PathParam("id") String idGame,@PathParam("param") String secretSession){
		return gBo.getGame(idGame,secretSession);
	}
	
	@POST
	@Path("/delete/{id}")
	public String delGame(@FormParam("secretSession") String campusSession,@PathParam("id") String idGame){
		if(gBo.delGame(campusSession, Integer.parseInt(idGame)))return "OK";
		else
			return "ERROR";
	}

	@GET
	@Path("/{session}/list/{text}")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Game> getGamesSearch(@PathParam("session") String campusSession, @PathParam("text") String text) throws UnsupportedEncodingException {
		text = URLDecoder.decode(text, "UTF-8");
		return gBo.listGamesSearch(campusSession, text);
	}
	
	/* categories */
	@GET
	@Path("/category/{param}/list")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Category> getCategories (@PathParam("param") String campusSession){
		return catBo.listCategories(campusSession);
	}
	
	@GET
	@Path("/category/{param}/get/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public Category getCategory (@PathParam("param") String campusSession, @PathParam("id") int idCategory){
		return catBo.getCategory(campusSession, idCategory);
	}
	
	/* tags */
	@GET
	@Path("/tag/{param}/list/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Tag> getTagsGame (@PathParam("param") String campusSession, @PathParam("id") int idGame){
		return tagBo.listTagsGame(campusSession, idGame);
	}
	
	@POST
	@Path("/tag/{id}/addDel")
	public String addDelTagsGame(@FormParam("secretSession") String campusSession,@PathParam("id") int idGame,@FormParam("tags") String tagsCommaSeparated){
		String [] tagsSplit = tagsCommaSeparated.split(",");
		List<Tag> tags = new ArrayList<Tag>();
		for(String tagValue : tagsSplit)
		{
			tagValue = tagValue.trim();
			if(tagValue.equals(""))
				continue;
			Tag tag = new Tag();
			tag.setTag(tagValue);
			tags.add(tag);
		}
		if(tagBo.addTagsGame(campusSession, idGame, tags))
			return "OK";
		else
			return "ERROR";
	}
	
	/* comments */
	@GET
	@Path("/comment/{param}/list/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Comment> getCommentsGame (@PathParam("param") String campusSession, @PathParam("id") int idGame){
		return comBo.listCommentsGame(campusSession, idGame);
	}
	
	@POST
	@Path("/comment/{id}/add")
	public String addCommentGame(@FormParam("secretSession") String campusSession,@PathParam("id") int idComment, @FormParam("idGame") int idGame){
		if(comBo.addComment(campusSession, idComment, idGame))
			return "OK";
		else
			return "ERROR";
	}
	
	@POST
	@Path("/comment/{id}/del")
	public String delCommentGame(@FormParam("secretSession") String campusSession,@PathParam("id") int idComment){
		if(comBo.delComment(campusSession, idComment))
			return "OK";
		else
			return "ERROR";
	}

	/* likes */
	@GET
	@Path("/like/{param}/get/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public GameLike getLikeGame (@PathParam("param") String campusSession,@PathParam("id") int idGame){
		return lBo.getLikeGame(campusSession, idGame);
	}
	
	@POST
	@Path("/like/{id}/add")
	public String likeAddGame(@FormParam("secretSession") String campusSession,@PathParam("id") String idGame,@FormParam("containerId") String containerId){
		if(lBo.addLikeGame(campusSession, Integer.parseInt(idGame),containerId))return "OK";
		else
			return "ERROR";
	}
	
	@POST
	@Path("/like/{id}/del")
	public String likeDelGame(@FormParam("secretSession") String campusSession,@PathParam("id") String idGame,@FormParam("containerId") String containerId){
		if(lBo.delLikeGame(campusSession, Integer.parseInt(idGame)))return "OK";
		else
			return "ERROR";
	}
	@POST
	@Path("/like/{id}")
	public String likeGame(@FormParam("secretSession") String campusSession,@PathParam("id") String idGame,@FormParam("containerId") String containerId){
		if(lBo.addDelLikeGame(campusSession, Integer.parseInt(idGame),containerId))return "OK";
		else
			return "ERROR";
	}

	@GET
	@Path("/like/{param}/list/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<GameLike> getLikesGame(@PathParam("param") String campusSession,@PathParam("id") int idGame){	
		return lBo.listLikeGames(campusSession,idGame);
	}
	
	/* GAME INSTANCES */
	
	@POST
	@Path("/instance/init")
	public Response initGame(@FormParam("secretSession") String campusSession,@FormParam("secretGame") String uidGame){
		return iBo.initGameInstance(campusSession, uidGame);
	}
	
	@POST
	@Path("/instance/end/score")
	public Response endGameScore(@FormParam("secretSession") String campusSession,@FormParam("secretGame") String uidGame,@FormParam("points") String points) throws Exception{
		if(iBo.entGameInstance(campusSession, uidGame).getStatus() == 200){
			return scBo.addScoreGame(campusSession, uidGame,AES.descrypt(points));
		}else
			return Response.status(404).entity("Error end instance").build();
	}
	
	/* GAME SCORE */
	
	@GET
	@Path("/score/{param}/list")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Score> getScoresGame(@PathParam("param") String uidGame){	
		return scBo.listScoreGames(uidGame);
	}
	
	/* platforms */
	@GET
	@Path("/platform/{param}/list")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Platform> getPlatforms(@PathParam("param") String campusSession){
		return platBo.listPlatforms(campusSession);
	}
	
	@GET
	@Path("/platform/{param}/get/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public Platform getPlatform(@PathParam("param") String campusSession, @PathParam("id") int idPlatform){
		return platBo.getPlatform(campusSession, idPlatform);
	}
	
	/* skills */
	@GET
	@Path("/skill/{param}/list")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public List<Skill> getSkills(@PathParam("param") String campusSession){
		return skillBo.listSkills(campusSession);
	}
	
	@GET
	@Path("/skill/{param}/get/{id}")
	@Produces( { MediaType.APPLICATION_JSON ,MediaType.APPLICATION_XML})
	public Skill getSkill(@PathParam("param") String campusSession, @PathParam("id") int idSkill){
		return skillBo.getSkill(campusSession, idSkill);
	}
	
	
	
	public void setgBo(GameBO gBo) {
		this.gBo = gBo;
	}

	public GameBO getgBo() {
		return gBo;
	}

	public void setlBo(GameLikeBO lBo) {
		this.lBo = lBo;
	}

	public GameLikeBO getlBo() {
		return lBo;
	}

	public void setiBo(GameInstanceBO iBo) {
		this.iBo = iBo;
	}

	public GameInstanceBO getiBo() {
		return iBo;
	}

	public void setScBo(GameScoreBO scBo) {
		this.scBo = scBo;
	}

	public GameScoreBO getScBo() {
		return scBo;
	}


	public CategoryBO getCatBo() {
		return catBo;
	}


	public void setCatBo(CategoryBO catBo) {
		this.catBo = catBo;
	}


	public TagBO getTagBo() {
		return tagBo;
	}


	public void setTagBo(TagBO tagBo) {
		this.tagBo = tagBo;
	}


	public CommentBO getComBo() {
		return comBo;
	}


	public void setComBo(CommentBO comBo) {
		this.comBo = comBo;
	}

}
