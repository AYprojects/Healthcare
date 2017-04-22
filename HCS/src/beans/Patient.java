package beans;

import java.util.HashSet;
import java.util.Set;

/**
 * Patient entity. @author MyEclipse Persistence Tools
 */

public class Patient implements java.io.Serializable {

	// Fields

	private long pid;
	private Users users;
	private Diseases diseases;
	private String pname;
	private String mobile;
	private String address;
	private String gender;
	private Set inpatients = new HashSet(0);
	private Set outpatients = new HashSet(0);
	private Set patientdoctors = new HashSet(0);
	private Set patientstatuses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Patient() {
	}

	/** full constructor */
	public Patient(Users users, Diseases diseases, String pname, String mobile,
			String address, String gender, Set inpatients, Set outpatients,
			Set patientdoctors, Set patientstatuses) {
		this.users = users;
		this.diseases = diseases;
		this.pname = pname;
		this.mobile = mobile;
		this.address = address;
		this.gender = gender;
		this.inpatients = inpatients;
		this.outpatients = outpatients;
		this.patientdoctors = patientdoctors;
		this.patientstatuses = patientstatuses;
	}

	// Property accessors

	public long getPid() {
		return this.pid;
	}

	public void setPid(long pid) {
		this.pid = pid;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Diseases getDiseases() {
		return this.diseases;
	}

	public void setDiseases(Diseases diseases) {
		this.diseases = diseases;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
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

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Set getInpatients() {
		return this.inpatients;
	}

	public void setInpatients(Set inpatients) {
		this.inpatients = inpatients;
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

	public Set getPatientstatuses() {
		return this.patientstatuses;
	}

	public void setPatientstatuses(Set patientstatuses) {
		this.patientstatuses = patientstatuses;
	}

}