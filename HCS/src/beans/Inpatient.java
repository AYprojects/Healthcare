package beans;

import java.util.Date;

/**
 * Inpatient entity. @author MyEclipse Persistence Tools
 */

public class Inpatient implements java.io.Serializable {

	// Fields

	private long ipid;
	private Patient patient;
	private Doctors doctors;
	private Patientstatus patientstatus;
	private Rooms rooms;
	private Date jdate;

	// Constructors

	/** default constructor */
	public Inpatient() {
	}

	/** full constructor */
	public Inpatient(Patient patient, Doctors doctors,
			Patientstatus patientstatus, Rooms rooms, Date jdate) {
		this.patient = patient;
		this.doctors = doctors;
		this.patientstatus = patientstatus;
		this.rooms = rooms;
		this.jdate = jdate;
	}

	// Property accessors

	public long getIpid() {
		return this.ipid;
	}

	public void setIpid(long ipid) {
		this.ipid = ipid;
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

	public Patientstatus getPatientstatus() {
		return this.patientstatus;
	}

	public void setPatientstatus(Patientstatus patientstatus) {
		this.patientstatus = patientstatus;
	}

	public Rooms getRooms() {
		return this.rooms;
	}

	public void setRooms(Rooms rooms) {
		this.rooms = rooms;
	}

	public Date getJdate() {
		return this.jdate;
	}

	public void setJdate(Date jdate) {
		this.jdate = jdate;
	}

}