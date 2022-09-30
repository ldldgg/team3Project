package spms.dto;

public class MemberDto {

	private int mno = 0;
	private String id = "";
	private String email = "";
	private String pwd = "";
	private String mname = "";
	private String nickname = "";
	private String cre_date = "";
	private String mod_date = "";
	
	public MemberDto() {
		super();
	}

	public MemberDto(int mno, String id, String email, String pwd, String mname, String nickname, String cre_date,
			String mod_date) {
		super();
		this.mno = mno;
		this.id = id;
		this.email = email;
		this.pwd = pwd;
		this.mname = mname;
		this.nickname = nickname;
		this.cre_date = cre_date;
		this.mod_date = mod_date;
	}
	
	public MemberDto(int mno, String id, String email, String mname, String nickname, String cre_date,
			String mod_date) {
		super();
		this.mno = mno;
		this.id = id;
		this.email = email;
		this.mname = mname;
		this.nickname = nickname;
		this.cre_date = cre_date;
		this.mod_date = mod_date;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getCre_date() {
		return cre_date;
	}

	public void setCre_date(String cre_date) {
		this.cre_date = cre_date;
	}

	public String getMod_date() {
		return mod_date;
	}

	public void setMod_date(String mod_date) {
		this.mod_date = mod_date;
	}

	@Override
	public String toString() {
		return "MemberDto [mno=" + mno + ", id=" + id + ", email=" + email + ", pwd=" + pwd + ", mname=" + mname
				+ ", nickname=" + nickname + ", cre_date=" + cre_date + ", mod_date=" + mod_date + "]";
	}
	
	
	
}
