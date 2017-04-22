package beans;

import java.util.HashSet;
import java.util.Set;

/**
 * Diseases entity. @author MyEclipse Persistence Tools
 */

public class Diseases implements java.io.Serializable {

	// Fields

	private long did;
	private String dname;
	private String descr;
	private Set patients = new HashSet(0);
	private Set doctorses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Diseases() {
	}

	/** full constructor */
	public Diseases(String dname, String descr, Set patients, Set doctorses) {
		this.dname = dname;
		this.descr = descr;
		this.patients = patients;
		this.doctorses = doctorses;
	}

	// Property accessors

	public long getDid() {
		return this.did;
	}

	public void setDid(long did) {
		this.did = did;
	}

	public String getDname() {
		return this.dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDescr() {
		return this.descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}

	public Set getPatients() {
		return this.patients;
	}

	public void setPatients(Set patients) {
		this.patients = patients;
	}

	public Set getDoctorses() {
		return this.doctorses;
	}

	public void setDoctorses(Set doctorses) {
		this.doctorses = doctorses;
	}

}