package beans;

import java.util.HashSet;
import java.util.Set;

/**
 * Doctors entity. @author MyEclipse Persistence Tools
 */

public class Doctors implements java.io.Serializable {

	// Fields

	private long docid;
	private Diseases diseases;
	private String username;
	private String password;
	private String mobile;
	private String address;
	private Set outpatients = new HashSet(0);
	private Set patientdoctors = new HashSet(0);
	private Set inpatients = new HashSet(0);
	private Set patientstatuses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Doctors() {
	}

	/** full constructor */
	public Doctors(Diseases diseases, String username, String password,
			String mobile, String address, Set outpatients, Set patientdoctors,
			Set inpatients, Set patientstatuses) {
		this.diseases = diseases;
		this.username = username;
		this.password = password;
		this.mobile = mobile;
		this.address = address;
		this.outpatients = outpatients;
		this.patientdoctors = patientdoctors;
		this.inpatients = inpatients;
		this.patientstatuses = patientstatuses;
	}

	// Property accessors

	public long getDocid() {
		return this.docid;
	}

	public void setDocid(long docid) {
		this.docid = docid;
	}

	public Diseases getDiseases() {
		return this.diseases;
	}

	public void setDiseases(Diseases diseases) {
		this.diseases = diseases;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set getOutpatients() {
		return this.outpatients;
	}

	public void setOutpatients(Set outpatients) {
		this.outpatients = outpatients;
	}

	public Set getPatientdoctors() {
		return this.patientdoctors;
	}

	public void setPatientdoctors(Set patientdoctors) {
		this.patientdoctors = patientdoctors;
	}

	public Set getInpatients() {
		return this.inpatients;
	}

	public void setInpatients(Set inpatients) {
		this.inpatients = inpatients;
	}

	public Set getPatientstatuses() {
		return this.patientstatuses;
	}

	public void setPatientstatuses(Set patientstatuses) {
		this.patientstatuses = patientstatuses;
	}

}