package beans;

import java.util.Date;

/**
 * Outpatient entity. @author MyEclipse Persistence Tools
 */

public class Outpatient implements java.io.Serializable {

	// Fields

	private long opid;
	private Patient patient;
	private Doctors doctors;
	private Date odate;
	private String descr;

	// Constructors

	/** default constructor */
	public Outpatient() {
	}

	/** full constructor */
	public Outpatient(Patient patient, Doctors doctors, Date odate, String descr) {
		this.patient = patient;
		this.doctors = doctors;
		this.odate = odate;
		this.descr = descr;
	}

	// Property accessors

	public long getOpid() {
		return this.opid;
	}

	public void setOpid(long opid) {
		this.opid = opid;
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

	public Date getOdate() {
		return this.odate;
	}

	public void setOdate(Date odate) {
		this.odate = odate;
	}

	public String getDescr() {
		return this.descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}

}