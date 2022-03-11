package web.cepp.Model;

public class Customer {
	private int id;
    private String Name;
    private String Address;
    private int Phone;
    private int Plumber;
    private int Carpentar;
    private int Painter;
    private int Electrician;
    
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public int getPhone() {
		return Phone;
	}
	public void setPhone(int phone) {
		Phone = phone;
	}
	public int getPlumber() {
		return Plumber;
	}
	public void setPlumber(int plumber) {
		Plumber = plumber;
	}
	public int getCarpentar() {
		return Carpentar;
	}
	public void setCarpentar(int carpentar) {
		Carpentar = carpentar;
	}
	public int getPainter() {
		return Painter;
	}
	public void setPainter(int painter) {
		Painter = painter;
	}
	public int getElectrician() {
		return Electrician;
	}
	public void setElectrician(int electrician) {
		Electrician = electrician;
	}
	public Customer(int id, String name, String address, int phone, int plumber, int carpentar, int painter,
			int electrician) {
		super();
		this.id = id;
		this.Name = name;
		this.Address = address;
		this.Phone = phone;
		this.Plumber = plumber;
		this.Carpentar = carpentar;
		this.Painter = painter;
		this.Electrician = electrician;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", Name=" + Name + ", Address=" + Address + ", Phone=" + Phone + ", Plumber="
				+ Plumber + ", Carpentar=" + Carpentar + ", Painter=" + Painter + ", Electrician=" + Electrician + "]";
	}
    
	
	
    
    
    
    
}
