function sendit() {
  const userpw = modifyPwForm.userpw;
  if (userpw.value == "") {
    alert("비밀번호를 입력하세요!");
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

  return true;
}

function pwcheck() {
  const userpw = document.modifyPwForm.userpw;
  const userpw_re = document.modifyPwForm.userpw_re;
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
