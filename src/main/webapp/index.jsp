<%--
  Created by IntelliJ IDEA.
  User: yuhuk
  Date: 2020/8/11
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body leftmargin="8" topmargin="8" >

<form name="form" id="form" action="${pageContext.request.contextPath}/lu/getUserAll" method="post" accept-charset="UTF-8">

    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
        <tr bgcolor="#E7E7E7">
            <td height="24" colspan="2" >&nbsp;请登录&nbsp;</td>
        </tr>

        <tr>
            <td width="80px">姓名：</td>
            <td><input id="name" name="name" type="text" />&nbsp;&nbsp;<span id="name1"></span></td>
        </tr>

        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>

                <a onclick="addclu()"  class="coolbg">登录</a>

            </td>
        </tr>
    </table>

</form>

<script type="text/javascript">
    function addclu() {
        alert("1111")
        if ($("#name").val() == "admin"){
            $("#form").submit();
        }else {
            alert("用户名或密码错误")
        }


    }

</script>

</body>
</html>