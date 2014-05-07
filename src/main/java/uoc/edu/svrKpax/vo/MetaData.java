package uoc.edu.svrKpax.vo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@Entity
@Table(name = "MetaData")
public class MetaData implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idMetadata;
	private int idGame;
	private String keyMeta;
	private String valueMeta;

	@Id
	@Column(name = "idMetadata")
	public int getIdMetadata() {
		return idMetadata;
	}

	public void setIdMetadata(int idMetadata) {
		this.idMetadata = idMetadata;
	}

	@Column(name = "idGame")
	public int getIdGame() {
		return idGame;
	}

	public void setIdGame(int idGame) {
		this.idGame = idGame;
	}
	
	@Column(name = "keyMeta")
	public String getKeyMeta() {
		return keyMeta;
	}

	public void setKeyMeta(String keyMeta) {
		this.keyMeta = keyMeta;
	}
	
	@Column(name = "valueMeta")
	public String getValueMeta() {
		return valueMeta;
	}

	public void setValueMeta(String valueMeta) {
		this.valueMeta = valueMeta;
	}
}