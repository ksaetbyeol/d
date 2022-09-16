function loginChk() {
        
    var form = document.login1;

    if (!form.id.value) {
        alert("아이디를 입력해 주십시오.");
        form.id.focus();
        return;
    }
 
    if (!form.pw.value) {
        alert("비밀번호를 입력해 주십시오.");
        form.pw.focus();
        return;
    }
    form.action = "";
    form.submit();
    }

