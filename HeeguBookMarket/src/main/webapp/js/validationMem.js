function CheckAddMember(){
	var m_Id = document.getElementById("Id");
	var m_pwd = document.getElementById("Pwd");
	var m_Name = document.getElementById("Name");
	var m_birth = document.getElementById("Birth");
	var m_mail = document.getElementById("Mail");
	var m_phone = document.getElementById("Phone");
	
		if(!check(/^[a-zA-Z0-9]*[0-9]{4,14}$/,m_Id,"[아이디]\n숫자와 영문을 조합하여 5~15자까지 입력하세요")){
		return false;
	}
	if(!check(/^[a-zA-Z0-9]*[0-9]{3,14}$/,m_pwd,"[비밀번호]\n숫자와 영문을 조합하여 3~15자까지 입력하세요")){
		return false;
	}
		if(m_Name.value.length < 3){
		alert("[이름]\n최소 3자리를 입력하세요.");
		m_Name.focus();
		return false;
	}
	function check(regExp,e,msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.focus();
		return false;
	}
	document.addMember.submit()
}