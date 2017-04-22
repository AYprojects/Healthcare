package beans;

import java.util.HashSet;
import java.util.Set;

/**
 * Patientstatus entity. @author MyEclipse Persistence Tools
 */

public class Patientstatus implements java.io.Serializable {

	// Fields

	private long psid;
	private Patient patient;
	private Doctors doctors;
	private String status;
	private String condition;
	private Set inpatients = new HashSet(0);

	// Constructors

	/** default constructor */
	public Patientstatus() {
	}

	/** full constructor */
	public Patientstatus(Patient patient, Doctors doctors, String status,
			String condition, Set inpatients) {
		this.patient = patient;
		this.doctors = doctors;
		this.status = status;
		this.condition = condition;
		this.inpatients = inpatients;
	}

	// Property accessors

	public long getPsid() {
		return this.psid;
	}

	public void setPsid(long psid) {
		this.psid = psid;
	}

	public Patient getPatient() {
		return this.patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public Doctors getDoctors() {
		return this.doctors;
	}

	public void setDoctors(Doctors doctors) {
		this.doctors = doctors;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCondition() {
		return this.condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public Set getInpatients() {
		return this.inpatients;
	}

	public void setInpatients(Set inpatients) {
		this.inpatients = inpatients;
	}

}