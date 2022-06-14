package servlet.standard;

//--------------------------------------------------------------------------------------------------------------------------
//옷
//--------------------------------------------------------------------------------------------------------------------------
public class ClothingInfo extends ProductInfo{
	
	private char   size;   // 사이즈 (S/M/L)
	private String color;  // 색상
	
	public char getSize() {
		return size;
	}
	public void setSize(char size) {
		this.size = size;
	}
	
	
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

}// End - public class ClothingInfo
