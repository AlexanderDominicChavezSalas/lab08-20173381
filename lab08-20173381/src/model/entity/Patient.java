package model.entity;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;



@PersistenceCapable(identityType = IdentityType.APPLICATION)

public class Patient {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) private Long
	id;
	@Persistent private String name;
	@Persistent private String ch_number;
	@Persistent private String DNI;
	@Persistent private String place_birth;
	@Persistent private String degree_instruction;
	@Persistent private String race;
	@Persistent private String occupation;
	@Persistent private String religion;
	@Persistent private String civil_status;
	
	@Persistent private Date created;
	@Persistent private Date birth;
	@Persistent private boolean gender;
	@Persistent private int age;
	//LocalDateTime current_date=LocalDateTime.now(ZoneId.of("America/Lima"));
	/*public Patient(String name, String ch_number, String dNI, Date created, boolean gender, String place_birth,
			Date birth, String degree_instruction, String race, String occupation, String religion,
			String civil_status) {
		this.name = name;
		this.ch_number = ch_number;
		DNI = dNI;
		this.created = created;
		this.gender = gender;
		this.place_birth = place_birth;
		this.birth = birth;
		this.degree_instruction = degree_instruction;
		this.race = race;
		this.occupation = occupation;
		this.religion = religion;
		this.civil_status = civil_status;
	}*/
	
	public Patient(String name, String ch_number,String dNI,Date created, boolean gender,String place_birth,Date birth,
			String degree_instruction, String race, String occupation, String religion,
			String civil_status) {
		super();
		this.name = name;
		this.ch_number = ch_number;
		this.gender = gender;
		this.birth = birth;
		DNI = dNI;
		this.place_birth = place_birth;
		this.created = new Date();
		this.degree_instruction = degree_instruction;
		this.race = race;
		this.occupation = occupation;
		this.religion = religion;
		this.civil_status = civil_status;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCh_number() {
		return ch_number;
	}
	public void setCh_number(String ch_number) {
		this.ch_number = ch_number;
	}
	
	public String getDNI() {
		return DNI;
	}
	public void setDNI(String dNI) {
		DNI = dNI;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	/*
	public int getAge() {
		return age;
	}
	public void setAge(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd//MM//yyyy" );
		String a=sdf.format(date);
		String a1=a.substring(0,a.indexOf("/"));
		String b=a.substring(a.indexOf(a1),a.length());
		String a2=a.substring(a.indexOf(a1)+1,b.indexOf("/"));
		String c=a.substring(a.indexOf(a2),a.length());
		String a3=a.substring(a.indexOf(a2)+1,a.length());
		String d=sdf.format(current_date);
		String d1=a.substring(0,d.indexOf("/"));
		String e=a.substring(d.indexOf(d1),d.length());
		String d2=d.substring(d.indexOf(d1)+1,e.indexOf("/"));
		String f=d.substring(d.indexOf(d2),d.length());
		String d3=d.substring(d.indexOf(d2)+1,d.length());
		age=Integer.parseInt(d3)-Integer.parseInt(a3);
		}
		*/
	public String getPlace_birth() {
		return place_birth;
	}
	public void setPlace_birth(String place_birth) {
		this.place_birth = place_birth;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getDegree_instruction() {
		return degree_instruction;
	}
	public void setDegree_instruction(String degree_instruction) {
		this.degree_instruction = degree_instruction;
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getCivil_status() {
		return civil_status;
	}
	public void setCivil_status(String civil_status) {
		this.civil_status = civil_status;
	}
	
}
	

