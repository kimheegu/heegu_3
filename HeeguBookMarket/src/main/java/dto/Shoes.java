package dto;


public class Shoes {
	private String id; // 모델번호
	private String brand; // 신발 브랜드
	private String name; // 이름
	private String name1; // 한글 이름
	private long price; // 가격
	private long units; //재고개수
	private String condition; // 상품 상태
	private String date1; // 출시일
	private String color; // 대표 색상
	private String filename; // 이미지 파일명
	private int quantity;
	
	public Shoes(String id,String brand,String name,String name1, long price) {
		this.id=id;
		this.name1=name1;
		this.name=name;
		this.brand = brand;
		this.price=price;
	}
	
	public Shoes() { super(); }

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public long getUnits() {
		return units;
	}

	public void setUnits(long units) {
		this.units = units;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
}
