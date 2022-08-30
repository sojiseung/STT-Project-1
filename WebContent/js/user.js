function sendit() {
	  const joinForm = document.joinForm;
	  const userid = joinForm.userid;
		console.log("?");
	  if (userid.value == "") {
	    alert("아이디를 입력하세요!");
	    userid.focus();
	    return false;
	  }
	  
	  const exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

	  if(exptext.test(userid.value) == false){
		  //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우			
		  alert("이메일 형식이 올바르지 않습니다.");
		  userid.focus();
		  return false;
		}
	  
	  const userpw = joinForm.userpw;
	  const userpw_re = joinForm.userpw_re;
	  if (userpw.value == "") {
	    alert("비밀번호를 입력하세요!");
	    userpw.focus();
	    return false;
	  }
	  if(userpw.value != userpw_re.value){
		  alert("비밀번호가 같은지 확인해주세요!");
		  userpw.focus();
		  return false;
	  }
	  const reg =
	    /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
	  if (!reg.test(userpw.value)) {
	    alert(
	      "비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 하나 이상 포함해야 합니다!"
	    );
	    userpw.focus();
	    return false;
	  }
	  if (/(\w)\1\1\1/.test(userpw.value)) {
	    alert("같은 문자를 4번 연속해서 사용할 수 없습니다!");
	    userpw.focus();
	    return false;
	  }
	  if (userpw.value.search(/\s/) != -1) {
	    alert("비밀번호는 공백을 포함할 수 없습니다!");
	    userpw.focus();
	    return false;
	  }

	  const username = joinForm.username;
	  if (username.value == "") {
	    alert("이름을 입력하세요!");
	    username.focus();
	    return false;
	  }

	  const exp_name = /[가-힣]+$/;
	  if (!exp_name.test(username.value)) {
	    alert("이름에는 한글만 입력하세요!");
	    username.focus();
	    return false;
	  }

	  return true;
	}


const autoHyphen = (target) => {
  target.value = target.value
    .replace(/[^0-9]/g, "")
    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
};

function pwcheck() {
  const userpw = document.joinForm.userpw;
  const userpw_re = document.joinForm.userpw_re;
  const userpw1 = document.getElementById("userpw1");
  const userpw2 = document.getElementById("userpw2");
  if (userpw.value != userpw_re.value) {
    userpw2.style.borderColor = "red";
    userpw1.style.borderColor = "red";
  } else {
    userpw1.style.borderColor = "green";
    userpw2.style.borderColor = "green";
  }
}
function checkId(){
	const xhr = new XMLHttpRequest();
	const result = document.getElementById("result");
	const userid = document.joinForm.userid;
	console.log("?");
	if(userid.value == ""){
		alert("아이디를 입력하세요.");
		userid.focus();
		return false;;
	}
	console.log("!");
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				let txt = xhr.responseText;
				txt = txt.trim();
				if(txt == 'O'){
					result.innerHTML = "사용 가능한 아이디입니다.";
					document.joinForm.userpw.focus();
				}
				else{
					result.innerHTML = "중복된 아이디가 있습니다.";
					userid.value = '';
					userid.focus();
				}
				console.log("200");
			}
		}
	}
	xhr.open("GET",cp+"/user/checkidok.us?userid="+userid.value);
	xhr.send();
}

