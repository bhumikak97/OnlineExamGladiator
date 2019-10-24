package com.lti.gladiator.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@NamedQueries({
	//@NamedQuery(name="selectEname", query="from Exam where exam_id= : exam_id"),
	@NamedQuery(name="allExamDetails", query="from ExamDetails")
})

@Entity
@Table(name="EXAM_DETAILS")
public class ExamDetails {

	private int q_id,exam_id;
	private String question,opt_1,opt_2,opt_3,opt_4,correct_answer,level;
	public ExamDetails() {
		super();
	}
	
	public ExamDetails(int q_id, int exam_id, String question, String opt_1, String opt_2, String opt_3, String opt_4,
			String correct_answer, String level) {
		super();
		this.q_id = q_id;
		this.exam_id = exam_id;
		this.question = question;
		this.opt_1 = opt_1;
		this.opt_2 = opt_2;
		this.opt_3 = opt_3;
		this.opt_4 = opt_4;
		this.correct_answer = correct_answer;
		this.level = level;
	}
	
	
	public ExamDetails(int q_id,String question, String opt_1, String opt_2, String opt_3, String opt_4, String correct_answer) {
		super();
		this.q_id=q_id;
		this.question = question;
		this.opt_1 = opt_1;
		this.opt_2 = opt_2;
		this.opt_3 = opt_3;
		this.opt_4 = opt_4;
		this.correct_answer = correct_answer;
	}

	@Id
//	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator = "ID")
//	@SequenceGenerator(name="ID", sequenceName = "Q_ID_SEQ", allocationSize = 1)
	@Column(name="Q_ID")
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	
	
	@Column(name="EXAM_ID")
	public int getExam_id() {
		return exam_id;
	}
	public void setExam_id(int exam_id) {
		this.exam_id = exam_id;
	}
	
	@Column(name="QUESTION")
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	
	@Column(name="OPT1")
	public String getOpt_1() {
		return opt_1;
	}
	public void setOpt_1(String opt_1) {
		this.opt_1 = opt_1;
	}
	
	@Column(name="OPT2")
	public String getOpt_2() {
		return opt_2;
	}
	public void setOpt_2(String opt_2) {
		this.opt_2 = opt_2;
	}
	
	@Column(name="OPT3")
	public String getOpt_3() {
		return opt_3;
	}
	public void setOpt_3(String opt_3) {
		this.opt_3 = opt_3;
	}
	
	@Column(name="OPT4")
	public String getOpt_4() {
		return opt_4;
	}
	public void setOpt_4(String opt_4) {
		this.opt_4 = opt_4;
	}
	
	@Column(name="CORRECT_ANS")
	public String getCorrect_answer() {
		return correct_answer;
	}
	public void setCorrect_answer(String correct_answer) {
		this.correct_answer = correct_answer;
	}
	
	@Column(name="LEVEL_TYPE")
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	
}
