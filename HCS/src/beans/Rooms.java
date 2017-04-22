package beans;

import java.util.HashSet;
import java.util.Set;

/**
 * Rooms entity. @author MyEclipse Persistence Tools
 */

public class Rooms implements java.io.Serializable {

	// Fields

	private long rid;
	private String roomname;
	private Set inpatients = new HashSet(0);

	// Constructors

	/** default constructor */
	public Rooms() {
	}

	/** full constructor */
	public Rooms(String roomname, Set inpatients) {
		this.roomname = roomname;
		this.inpatients = inpatients;
	}

	// Property accessors

	public long getRid() {
		return this.rid;
	}

	public void setRid(long rid) {
		this.rid = rid;
	}

	public String getRoomname() {
		return this.roomname;
	}

	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}

	public Set getInpatients() {
		return this.inpatients;
	}

	public void setInpatients(Set inpatients) {
		this.inpatients = inpatients;
	}

}