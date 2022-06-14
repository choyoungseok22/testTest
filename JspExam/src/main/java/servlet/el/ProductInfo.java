package servlet.el;

//-------------------------------------------------------------------------------------------
//public class ProductInfo
//-------------------------------------------------------------------------------------------
public class ProductInfo {

	private String name;
	private int    value;
	
	// 기본 생성자
	public ProductInfo() {}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getValue() {
		return value;
	}	
	public void setValue(int value) {
		this.value = value;
	}
	
}// End - public class ProductInfo
