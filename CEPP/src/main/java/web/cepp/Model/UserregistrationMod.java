package web.cepp.Model;

public class UserregistrationMod {

	int id;
	String name;
	String address;
	String phone_number;
	String email_id;
	String gender;
	String type;
	String age;
	
	
	public UserRegistrationDao(int id, String name, String address, String phone_number, String email_id, String gender,
			String type, String age) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone_number = phone_number;
		this.email_id = email_id;
		this.gender = gender;
		this.type = type;
		this.age = age;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone_number() {
		return phone_number;
	}


	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}


	public String getEmail_id() {
		return email_id;
	}


	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	@Override
	public String toString() {
		return "UserRegistrationDao [id=" + id + ", name=" + name + ", address=" + address + ", phone_number="
				+ phone_number + ", email_id=" + email_id + ", gender=" + gender + ", type=" + type + ", age=" + age
				+ "]";
	}
	
	
	

}
