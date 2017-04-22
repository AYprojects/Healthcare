package beans;

/**
 * Hospital entity. @author MyEclipse Persistence Tools
 */

public class Hospital implements java.io.Serializable {

	// Fields

	private long hid;
	private String hname;
	private String diseas;
	private String address;

	// Constructors

	/** default constructor */
	public Hospital() {
	}

	/** full constructor */
	public Hospital(String hname, String diseas, String address) {
		this.hname = hname;
		this.diseas = diseas;
		this.address = address;
	}

	// Property accessors

	public long getHid() {
		return this.hid;
	}

	public void setHid(long hid) {
		this.hid = hid;
	}

	public String getHname() {
		return this.hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getDiseas() {
		return this.diseas;
	}

	public void setDiseas(String diseas) {
		this.diseas = diseas;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}