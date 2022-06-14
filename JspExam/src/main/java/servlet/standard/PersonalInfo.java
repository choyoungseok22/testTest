package servlet.standard;

//----------------------------------------------------------------------------------------------------------------------------------------
//public class PersonalInfo
//----------------------------------------------------------------------------------------------------------------------------------------
public class PersonalInfo {
	
	// private : 외부에서 접근 불가
	private String name;   // 이름
	private char  gender;  // 성별
	private int   age;     // 나이
    
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}// End - public class PersonalInfo













