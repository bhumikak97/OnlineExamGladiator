package com.lti.gladiator.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@NamedQueries({
	//@NamedQuery(name="selectEname", query="from Exam where exam_id= : exam_id"),
	@NamedQuery(name="allExam", query="from Exam")
})
@Entity
@Table(name="EXAM")
public class Exam {

	private int exam_id;
	private String exam_name,created_by;
	private Date created_on;
	public Exam() {
		super();
	}
	
	public Exam(int exam_id, String exam_name, String created_by, Date created_on) {
		super();
		this.exam_id = exam_id;
		this.exam_name = exam_name;
		this.created_by = created_by;
		this.created_on = created_on;
	}
	
//	public Exam(String exam_name,String created_by,String created_on) {
//		super();
//		this.exam_name=exam_name;
//		this.created_by=created_by;
//	}
	
	@Id
	@Column(name="EXAM_ID")
//	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "id_Sequence")
//	@SequenceGenerator(name = "id_Sequence", sequenceName = "ID_SEQ")	
	public int getExam_id() {
		return exam_id;
	}
	public void setExam_id(int exam_id) {
		this.exam_id = exam_id;
	}
	
	@Column(name="EXAM_NAME")
	public String getExam_name() {
		return exam_name;
	}
	public void setExam_name(String exam_name) {
		this.exam_name = exam_name;
	}
	
	@Column(name="CREATED_BY")
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	
	@Column(name="CREATED_ON")
	public Date getCreated_on() {
		return created_on;
	}
	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}
//	@OneToMany(cascade=CascadeType.ALL)
//	@JoinColumn(name="EXAM_ID")
//	private List<ExamDetails> employees=new ArrayList<>();
//	
}
