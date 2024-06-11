package dao;

import java.util.ArrayList;
import dto.Shoes;

public class ShoesRepository {
	private ArrayList<Shoes> listOfShoes = new ArrayList<Shoes>();
	private static ShoesRepository instance = new ShoesRepository();
	
	public static ShoesRepository getInstance() {
		return instance;
	}
	
	public void addShoes(Shoes shoes) {
		listOfShoes.add(shoes);
	}
	
	public ShoesRepository() {
		Shoes shoes1 = new Shoes("FN0344-001","Jordan","Jordan 3 x J Balvin Retro SP Rio","조던 3 x 제이 발빈 레트로 SP 리오",420000);
		shoes1.setCondition("좋음");
		shoes1.setUnits(10);
		shoes1.setDate1("24/05/22");
		shoes1.setColor("Black/Solar Flare/Total Crimson Abyss");
		shoes1.setFilename("jordon.PNG");
		
		Shoes shoes2 = new Shoes("VN0A5FCHB5P1","Vans","Vans x Pass~Port Skate Lampin Black Night Shade","반스 x 패스포트 스케이트 램핀 블랙 나이트 쉐이드",199000);
		shoes2.setCondition("좋음");
		shoes2.setUnits(20);
		shoes2.setDate1("24/05/22");
		shoes2.setColor("Black/Night Shade");
		shoes2.setFilename("vans.PNG");
		
		Shoes shoes3 = new Shoes("CJ9179-200","Nike","Nike Air Force 1 '07 WB Flax","나이키 에어포스 1 '07 WB 플랙스",149000);
		shoes3.setCondition("좋음");
		shoes3.setUnits(20);
		shoes3.setDate1("24/05/22");
		shoes3.setColor("Flax/Gum/Light Brown/Black/Wheat");
		shoes3.setFilename("nike.PNG");
		
		Shoes shoes4 = new Shoes("IH3261","Adidas","Adidas x Wales Bonner Samba Supplier Colour Wonder White","아디다스 x 웨일스 보너 삼바 서플라이어 컬러 원더 화이트",265000);
		shoes4.setCondition("중간");
		shoes4.setUnits(20);
		shoes4.setDate1("24/05/21");
		shoes4.setColor("Supplier Colour/Wonder White/Ash Blue");
		shoes4.setFilename("adidas.PNG");
		
		Shoes shoes5 = new Shoes("1203A321-100","Asics","Asics x Cecilie Bahnsen GT-2160 White","아식스 x 세실리에 반센 GT-2160 화이트",390000);
		shoes5.setCondition("좋음");
		shoes5.setUnits(20);
		shoes5.setDate1("23/07/19");
		shoes5.setColor("White");
		shoes5.setFilename("asics.PNG");
		
		Shoes shoes6 = new Shoes("MR530AD","New Balance","New Balance 530 White Silver","뉴발란스 530 화이트 실버",110000);
		shoes6.setCondition("좋음");
		shoes6.setUnits(20);
		shoes6.setDate1("23/01/06");
		shoes6.setColor("White/Silver");
		shoes6.setFilename("newbal.PNG");
		
		Shoes shoes7 = new Shoes("GWF00102-F000317-10273/GCOWS590-W77","Golden Goose","(W) Golden Goose Superstar White Silver Heel Tab Sneakers","(W) 골든구스 슈퍼스타 화이트 실버탭 스니커즈",389000);
		shoes7.setCondition("좋음");
		shoes7.setUnits(20);
		shoes7.setDate1("-");
		shoes7.setColor("White/Silver");
		shoes7.setFilename("golden.PNG");
		
		Shoes shoes8 = new Shoes("396463-07","Puma","Puma Palermo Cobalt Glaze White","푸마 팔레르모 코발트 글레이즈 화이트",95000);
		shoes8.setCondition("좋음");
		shoes8.setUnits(20);
		shoes8.setDate1("24/02/01");
		shoes8.setColor("Cobalt/Glaze White");
		shoes8.setFilename("puma.PNG");
		
		Shoes shoes9 = new Shoes("205089-066","Crocs","Crocs Bayaband Clog Black White","크록스 바야밴드 클로그 블랙 화이트",37000);
		shoes9.setCondition("좋음");
		shoes9.setUnits(20);
		shoes9.setDate1("-");
		shoes9.setColor("Black/White");
		shoes9.setFilename("crosc.PNG");
		
		Shoes shoes10 = new Shoes("L41617400","Salomon","Salomon XA Pro 3D Black Magnet","살로몬 XA 프로 3D 블랙 마그넷",195000);
		shoes10.setCondition("좋음");
		shoes10.setUnits(10);
		shoes10.setDate1("-");
		shoes10.setColor("Black/Black/Magnet");
		shoes10.setFilename("salomon.PNG");
		
		Shoes shoes11 = new Shoes("0560771","Birkenstock","Birkenstock Boston Soft Footbed Taupe - Regular","버켄스탁 보스턴 소프트 풋베드 토프 - 레귤러",245000);
		shoes11.setCondition("좋음");
		shoes11.setUnits(10);
		shoes11.setDate1("-");
		shoes11.setColor("Taupe");
		shoes11.setFilename("birken.PNG");
		
		Shoes shoes12 = new Shoes("3ME10330761","On Running","On Running x Post Archive Faction (Paf) Cloudmonster 2 Black Magnet","온 러닝 x 포스트 아카이브 팩션 (파프) 클라우드몬스터 2 블랙 마그넷",418000);
		shoes12.setCondition("좋음");
		shoes12.setUnits(10);
		shoes12.setDate1("24/05/03");
		shoes12.setColor("Black/Magnet");
		shoes12.setFilename("onrunning.PNG");
		
		Shoes shoes13 = new Shoes("1126851-BCSTL","Hoka","Hoka Mafate Speed 2 Black Castlerock","호카 마파테 스피드 2 블랙 캐슬락",277000);
		shoes13.setCondition("좋음");
		shoes13.setUnits(10);
		shoes13.setDate1("-");
		shoes13.setColor("Black/Castlerock");
		shoes13.setFilename("hoka.PNG");
		
		Shoes shoes14 = new Shoes("150206C","Converse","Converse x Play Comme des Garcons Chuck 70 Ox Black","컨버스 x 플레이 꼼데가르송 척 70 로우 블랙",127000);
		shoes14.setCondition("좋음");
		shoes14.setUnits(10);
		shoes14.setDate1("-");
		shoes14.setColor("Black/White-High Risk Red");
		shoes14.setFilename("converse.PNG");
		
		Shoes shoes15 = new Shoes("1XM02348G063","Fila","Fila Echappe MS Grey White","휠라 에샤페 MS 그레이 화이트",82000);
		shoes15.setCondition("좋음");
		shoes15.setUnits(10);
		shoes15.setDate1("-");
		shoes15.setColor("Grey/White/White");
		shoes15.setFilename("fila.PNG");
		
		Shoes shoes16 = new Shoes("FQ3000-100","Nike","Nike x Supreme SB Darwin Low White","나이키 x 슈프림 SB 다윈 로우 화이트",183000);
		shoes16.setCondition("좋음");
		shoes16.setUnits(10);
		shoes16.setDate1("24/05/02");
		shoes16.setColor("White");
		shoes16.setFilename("nike2.PNG");
		
		listOfShoes.add(shoes1);
		listOfShoes.add(shoes2);
		listOfShoes.add(shoes3);
		listOfShoes.add(shoes4);
		listOfShoes.add(shoes5);
		listOfShoes.add(shoes6);
		listOfShoes.add(shoes7);
		listOfShoes.add(shoes8);
		listOfShoes.add(shoes9);
		listOfShoes.add(shoes10);
		listOfShoes.add(shoes11);
		listOfShoes.add(shoes12);
		listOfShoes.add(shoes13);
		listOfShoes.add(shoes14);
		listOfShoes.add(shoes15);
		listOfShoes.add(shoes16);
	}
	public ArrayList<Shoes> getAllShoes(){
		return listOfShoes;
	}
	
	public Shoes getShoesById(String shoesID) {
		Shoes shoesById=null;
		
		for(int i=0;i<listOfShoes.size();i++) {
			Shoes shoes = listOfShoes.get(i);
			if(shoes != null && shoes.getId() != null && shoes.getId().equals(shoesID)){
				shoesById=shoes;
				break;
			}
		}
		return shoesById;
	}
}
