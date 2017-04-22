package beans;

import java.util.Date;

/**
 * Patientdoctor entity. @author MyEclipse Persistence Tools
 */

public class Patientdoctor implements java.io.Serializable {

	// Fields

	private long pdid;
	private Patient patient;
	private Doctors doctors;
	private String ctime;
	private Date cdate;

	// Constructors

	/** default constructor */
	public Patientdoctor() {
	}

	/** full constructor */
	public Patientdoctor(Patient patient, Doctors doctors, String ctime,
			Date cdate) {
		this.patient = patient;
		this.doctors = doctors;
		this.ctime = ctime;
		this.cdate = cdate;
	}

	// Property accessors

	public long getPdid() {
		return this.pdid;
	}

	public void setPdid(long pdid) {
		this.pdid = pdid;
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

	public String getCtime() {
		return this.ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	public Date getCdate() {
		return this.cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

}