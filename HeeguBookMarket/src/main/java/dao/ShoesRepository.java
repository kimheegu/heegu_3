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
		Shoes shoes1 = new Shoes("FN0344-001","Jordan","Jordan 3 x J Balvin Retro SP Rio","���� 3 x ���� �ߺ� ��Ʈ�� SP ����",420000);
		shoes1.setCondition("����");
		shoes1.setUnits(10);
		shoes1.setDate1("24/05/22");
		shoes1.setColor("Black/Solar Flare/Total Crimson Abyss");
		shoes1.setFilename("jordon.PNG");
		
		Shoes shoes2 = new Shoes("VN0A5FCHB5P1","Vans","Vans x Pass~Port Skate Lampin Black Night Shade","�ݽ� x �н���Ʈ ������Ʈ ���� �� ����Ʈ ���̵�",199000);
		shoes2.setCondition("����");
		shoes2.setUnits(20);
		shoes2.setDate1("24/05/22");
		shoes2.setColor("Black/Night Shade");
		shoes2.setFilename("vans.PNG");
		
		Shoes shoes3 = new Shoes("CJ9179-200","Nike","Nike Air Force 1 '07 WB Flax","����Ű �������� 1 '07 WB �÷���",149000);
		shoes3.setCondition("����");
		shoes3.setUnits(20);
		shoes3.setDate1("24/05/22");
		shoes3.setColor("Flax/Gum/Light Brown/Black/Wheat");
		shoes3.setFilename("nike.PNG");
		
		Shoes shoes4 = new Shoes("IH3261","Adidas","Adidas x Wales Bonner Samba Supplier Colour Wonder White","�Ƶ�ٽ� x ���Ͻ� ���� ��� ���ö��̾� �÷� ���� ȭ��Ʈ",265000);
		shoes4.setCondition("�߰�");
		shoes4.setUnits(20);
		shoes4.setDate1("24/05/21");
		shoes4.setColor("Supplier Colour/Wonder White/Ash Blue");
		shoes4.setFilename("adidas.PNG");
		
		Shoes shoes5 = new Shoes("1203A321-100","Asics","Asics x Cecilie Bahnsen GT-2160 White","�ƽĽ� x ���Ǹ��� �ݼ� GT-2160 ȭ��Ʈ",390000);
		shoes5.setCondition("����");
		shoes5.setUnits(20);
		shoes5.setDate1("23/07/19");
		shoes5.setColor("White");
		shoes5.setFilename("asics.PNG");
		
		Shoes shoes6 = new Shoes("MR530AD","New Balance","New Balance 530 White Silver","���߶��� 530 ȭ��Ʈ �ǹ�",110000);
		shoes6.setCondition("����");
		shoes6.setUnits(20);
		shoes6.setDate1("23/01/06");
		shoes6.setColor("White/Silver");
		shoes6.setFilename("newbal.PNG");
		
		Shoes shoes7 = new Shoes("GWF00102-F000317-10273/GCOWS590-W77","Golden Goose","(W) Golden Goose Superstar White Silver Heel Tab Sneakers","(W) ��籸�� ���۽�Ÿ ȭ��Ʈ �ǹ��� ����Ŀ��",389000);
		shoes7.setCondition("����");
		shoes7.setUnits(20);
		shoes7.setDate1("-");
		shoes7.setColor("White/Silver");
		shoes7.setFilename("golden.PNG");
		
		Shoes shoes8 = new Shoes("396463-07","Puma","Puma Palermo Cobalt Glaze White","Ǫ�� �ȷ����� �ڹ�Ʈ �۷����� ȭ��Ʈ",95000);
		shoes8.setCondition("����");
		shoes8.setUnits(20);
		shoes8.setDate1("24/02/01");
		shoes8.setColor("Cobalt/Glaze White");
		shoes8.setFilename("puma.PNG");
		
		Shoes shoes9 = new Shoes("205089-066","Crocs","Crocs Bayaband Clog Black White","ũ�Ͻ� �پ߹�� Ŭ�α� �� ȭ��Ʈ",37000);
		shoes9.setCondition("����");
		shoes9.setUnits(20);
		shoes9.setDate1("-");
		shoes9.setColor("Black/White");
		shoes9.setFilename("crosc.PNG");
		
		Shoes shoes10 = new Shoes("L41617400","Salomon","Salomon XA Pro 3D Black Magnet","��θ� XA ���� 3D �� ���׳�",195000);
		shoes10.setCondition("����");
		shoes10.setUnits(10);
		shoes10.setDate1("-");
		shoes10.setColor("Black/Black/Magnet");
		shoes10.setFilename("salomon.PNG");
		
		Shoes shoes11 = new Shoes("0560771","Birkenstock","Birkenstock Boston Soft Footbed Taupe - Regular","���˽�Ź ������ ����Ʈ ǲ���� ���� - ���ַ�",245000);
		shoes11.setCondition("����");
		shoes11.setUnits(10);
		shoes11.setDate1("-");
		shoes11.setColor("Taupe");
		shoes11.setFilename("birken.PNG");
		
		Shoes shoes12 = new Shoes("3ME10330761","On Running","On Running x Post Archive Faction (Paf) Cloudmonster 2 Black Magnet","�� ���� x ����Ʈ ��ī�̺� �Ѽ� (����) Ŭ������� 2 �� ���׳�",418000);
		shoes12.setCondition("����");
		shoes12.setUnits(10);
		shoes12.setDate1("24/05/03");
		shoes12.setColor("Black/Magnet");
		shoes12.setFilename("onrunning.PNG");
		
		Shoes shoes13 = new Shoes("1126851-BCSTL","Hoka","Hoka Mafate Speed 2 Black Castlerock","ȣī ������ ���ǵ� 2 �� ĳ����",277000);
		shoes13.setCondition("����");
		shoes13.setUnits(10);
		shoes13.setDate1("-");
		shoes13.setColor("Black/Castlerock");
		shoes13.setFilename("hoka.PNG");
		
		Shoes shoes14 = new Shoes("150206C","Converse","Converse x Play Comme des Garcons Chuck 70 Ox Black","������ x �÷��� �ĵ������� ô 70 �ο� ��",127000);
		shoes14.setCondition("����");
		shoes14.setUnits(10);
		shoes14.setDate1("-");
		shoes14.setColor("Black/White-High Risk Red");
		shoes14.setFilename("converse.PNG");
		
		Shoes shoes15 = new Shoes("1XM02348G063","Fila","Fila Echappe MS Grey White","�ٶ� ������ MS �׷��� ȭ��Ʈ",82000);
		shoes15.setCondition("����");
		shoes15.setUnits(10);
		shoes15.setDate1("-");
		shoes15.setColor("Grey/White/White");
		shoes15.setFilename("fila.PNG");
		
		Shoes shoes16 = new Shoes("FQ3000-100","Nike","Nike x Supreme SB Darwin Low White","����Ű x ������ SB ���� �ο� ȭ��Ʈ",183000);
		shoes16.setCondition("����");
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
