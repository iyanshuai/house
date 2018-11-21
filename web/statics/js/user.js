function show() {
    $("#tv_span").html("");
    var unick=$("#tv_unick").val();
    if(unick!=null && unick!=""){
        $.get("donick",{"unick":unick},function (data) {
            if(data.flag=="true"){
                $("#tv_span").html("<span style='color: red'>您的账号已被使用</span>")
            }else {
                $("#tv_span").html("<span style='color: red'>√</span>")
            }
        },"json")
    }
}


 function  check(){
    var unick = $("#tv_unick").val();
    var upwd = $("#tv_upwd").val();
    var password = $("#tv_upwd1").val();
    var tel = $("#tv_tel").val();
    var uname = $("#tv_uname").val();
    if (unick == "" || unick == null) {
        alert("用户名不能为空！");
        return false;
    }
    else if (upwd == "" || upwd == null) {
        alert("密码不能为空！");
        return false;
    } else if (upwd != password) {
        alert("两次密码不同！");
        return false;
    } else if (tel == "" || tel == null) {
        alert("电话不能为空！");
        return false;
    }
    var   user  = new Object();
    user.unick=unick;
    user.upwd=upwd;
    user.tel=tel;
    user.uname=uname;
     var a = JSON.stringify(user);
     $.post("regsiter",{"Jsonuser":a},function (data) {
         alert(1)
         if(data.flag=="true"){
             location.href="toLogin";
         }
     },"json");

 }
