function login_box() {
    let nav_login_name = document.getElementById("nav_login_name");
    let nav_login_btn = document.getElementById("nav_login_btn");
    
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if(xhr.readyState == 4 && xhr.status == 200) {
            var r = xhr.responseText;
            var obj = JSON.parse(r);                //返回的字符串解析为对象
            if(obj.code == 1) {
                nav_login_name.innerHTML = obj.data;
                nav_login_btn.innerHTML = "退出";
            } else {
                nav_login_name.innerHTML = "";
                nav_login_btn.innerHTML = "登录";
            }
        }
    }
    // xhr.withCredentials = true;
    xhr.open("GET",`http://127.0.0.1:8080/pro/isLogin`,true);               
    xhr.send();

    nav_login_btn.onclick = function() {
        if(this.innerHTML == "登录") {              //为登录按钮绑定事件
            location.href = "http://127.0.0.1:8080/login.html";
        } else if(this.innerHTML == "退出") {
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if(xhr.readyState == 4 && xhr.status == 200) {
                    var r = xhr.responseText;
                    var obj = JSON.parse(r);                //返回的字符串解析为对象
                    if(obj.code == 1) {
                        alert("登录已退出");
                        location.replace("http://127.0.0.1:8080/nav.html");
                    } 
                }
            }
            xhr.open("GET",`http://127.0.0.1:8080/pro/exit`,true);               
            xhr.send();
        }
    }
}

