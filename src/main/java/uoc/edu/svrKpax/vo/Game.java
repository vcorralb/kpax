package uoc.edu.svrKpax.vo;

import java.util.List;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.OneToMany;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.IndexColumn;

@XmlRootElement
@Entity
@Table(name = "Game")
public class Game implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idGame;
	private int publicAcces;
	private String name;
	private String secretGame;
	private String privateKey;
	private int idCategory;
	private Date dateCreation;
	private int idPlatform;
	private int idSkill;
	private String descripGame;
	private String urlImage;

	private List<Tag> tags;
	private List<MetaData> metadatas;
	
	@Id
	@Column(name = "idGame")
	public int getIdGame() {
		return idGame;
	}

	public void setIdGame(int idGame) {
		this.idGame = idGame;
	}

	@Column(name = "grantPublicAccess")
	public int getPublicAcces() {
		return publicAcces;
	}

	public void setPublicAcces(int publicAcces) {
		this.publicAcces = publicAcces;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "secretGame")
	public String getSecretGame() {
		return secretGame;
	}

	public void setSecretGame(String secretGame) {
		this.secretGame = secretGame;
	}

	@Column(name = "privateKey")
	public String getPrivateKey() {
		return privateKey;
	}

	public void setPrivateKey(String privateKey) {
		this.privateKey = privateKey;
	}
	
	@Column(name = "idCategory", nullable = true) //Set a "nullable=true" property only for installing on production environment. In normal case it should never be null.
	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	@Column(name = "dateCreation", nullable = true) //Set a "nullable=true" property only for installing on production environment. In normal case it should never be null.
	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	
	@Column(name = "idPlatform", nullable = true) //Set a "nullable=true" property only for installing on production environment. In normal case it should never be null.
	public int getIdPlatform() {
		return idPlatform;
	}

	public void setIdPlatform(int idPlatform) {
		this.idPlatform = idPlatform;
	}
	
	@Column(name = "idSkill", nullable = true) //Set a "nullable=true" property only for installing on production environment. In normal case it should never be null.
	public int getIdSkill() {
		return idSkill;
	}

	public void setIdSkill(int idSkill) {
		this.idSkill = idSkill;
	}
	
	@Column(name = "descripGame")
	public String getDescripGame() {
		return descripGame;
	}

	public void setDescripGame(String descripGame) {
		this.descripGame = descripGame;
	}
	
	@Column(name = "urlImage")
	public String getUrlImage() {
		return urlImage;
	}

	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}	
	
	@Fetch(FetchMode.SELECT)
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "game")
	@IndexColumn(name="idTag")
	public List<Tag> getTags() {
	    return tags;
	}
	
	public void setTags(List<Tag> tags) {
	    this.tags = tags;
	}
	
	@Fetch(FetchMode.SELECT)
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "game")
	@IndexColumn(name="idMetadata")
	public List<MetaData> getMetadatas() {
	    return metadatas;
	}
	
	public void setMetadatas(List<MetaData> metadatas) {
	    this.metadatas = metadatas;
	}
}