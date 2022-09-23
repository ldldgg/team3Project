package spms.dto;

public class BoardDto {

	private int bno = 0;
	private String subject = "";
	private String writer = "";
	private String content = "";
	private String cre_date = "";
	private int view_count = 0;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int bno, String subject, String writer, String content, String cre_date, int view_count) {
		super();
		this.bno = bno;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.cre_date = cre_date;
		this.view_count = view_count;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
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

	public String getCre_date() {
		return cre_date;
	}

	public void setCre_date(String cre_date) {
		this.cre_date = cre_date;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	@Override
	public String toString() {
		return "BoardDto [bno=" + bno + ", subject=" + subject + ", writer=" + writer + ", content=" + content
				+ ", cre_date=" + cre_date + ", view_count=" + view_count + "]";
	}
	
	
	
}
