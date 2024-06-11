function CheckAddShoes(){
	var shoesId=document.getElementById("ShoesId");
	var shoesBrand = document.getElementById("ShoesBrand");
	var shoesName1 = document.getElementById("ShoesName");
	var shoesPrice = document.getElementById("ShoesPrice");
	var shoesUnits = document.getElementById("ShoesUnits");
	
	if(!check(/^[a-zA-Z0-9]*[0-9]{4,14}$/,shoesId,"[모델 번호]\n숫자와 영문을 조합하여 5~15자까지 입력하세요")){
		return false;
	}
	if(shoesBrand.value.length < 3){
		alert("[신발 브랜드]\n최소 3자리를 입력하세요.");
		shoesBrand.focus();
		return false;
	}
	
	if(!check(/^[a-zA-z0-9]*$/,shoesName1,"[신발 영문 이름]\n 영문을 입력하세요")){
		return false;
	}
	
	if(shoesName1.value == ""){
		alert("[신발 영문 이름]\n 영문을 입력하세요");
		return false;
	}


	if(shoesPrice.value.length==0 || isNaN(shoesPrice.value)){
		alert("[가격]\n숫자만 입력하세요");
		shoesPrice.focus();
		return false;
	}
	
	if(shoesPrice.value < 0){
		alert("[가격]\n음수를 입력할 수 없습니다.");
		shoesPrice.focus();
		return false;
	}
	
	if(shoesUnits.value == "" || isNaN(shoesUnits.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		shoesUnits.focus();
		return false();
	}
	
	function check(regExp,e,msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.focus();
		return false;
	}
	document.newShoes.submit()
}