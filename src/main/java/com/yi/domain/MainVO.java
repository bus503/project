package com.yi.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MainVO {
	private int pno;
	private String pname;
	private String pcontent;
	private Date startdate;
	private Date enddate;
	private String progress;
	
	@Override
	public String toString() {
		return "MainVO [pno=" + pno + ", pname=" + pname + ", pcontent=" + pcontent + ", startdate=" + startdate
				+ ", enddate=" + enddate + ", progress=" + progress + "]";
	}


	public int getPno() {
		return pno;
	}


	public void setPno(int pno) {
		this.pno = pno;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public String getPcontent() {
		return pcontent;
	}


	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}


	public Date getStartdate() {
		return startdate;
	}


	public void setStartdate(String startdate) throws ParseException {
		this.startdate = new SimpleDateFormat("yyyy-MM-dd").parse(startdate);
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) throws ParseException {
		this.enddate = new SimpleDateFormat("yyyy-MM-dd").parse(enddate);
	}


	public String getProgress() {
		return progress;
	}


	public void setProgress(String progress) {
		this.progress = progress;
	}


	public MainVO() {

	}


	public MainVO(int pno, String pname, String pcontent, Date startdate, Date enddate, String progress) {
		super();
		this.pno = pno;
		this.pname = pname;
		this.pcontent = pcontent;
		this.startdate = startdate;
		this.enddate = enddate;
		this.progress = progress;
	}
	
	
	
}
