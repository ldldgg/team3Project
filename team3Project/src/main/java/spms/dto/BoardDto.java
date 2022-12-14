package spms.dto;

import java.util.Date;

public class BoardDto {

	private int bno = 0;
	private String email = "";
	private String subject = "";
	private String writer = "";
	private String content = "";
	private Date cre_date = null;
	private Date mod_date = null;
	private int view_count = 0;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int bno, String subject, String writer, Date cre_date, int view_count) {
		super();
		this.bno = bno;
		this.subject = subject;
		this.writer = writer;
		this.cre_date = cre_date;
		this.view_count = view_count;
	}

	public BoardDto(int bno, String email, String subject, String writer, String content, Date cre_date, Date mod_date,
			int view_count) {
		super();
		this.bno = bno;
		this.email = email;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.cre_date = cre_date;
		this.mod_date = mod_date;
		this.view_count = view_count;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCre_date() {
		return cre_date;
	}

	public void setCre_date(Date cre_date) {
		this.cre_date = cre_date;
	}

	public Date getMod_date() {
		return mod_date;
	}

	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	@Override
	public String toString() {
		return "BoardDto [bno=" + bno + ", email=" + email + ", subject=" + subject + ", writer=" + writer
				+ ", content=" + content + ", cre_date=" + cre_date + ", mod_date=" + mod_date + ", view_count="
				+ view_count + "]";
	}

	
	
}
