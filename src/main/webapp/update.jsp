<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>lu</title>
    <script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body leftmargin="8" topmargin="8" >

<form name="form" id="form" action="${pageContext.request.contextPath}/lu/addUser" method="post" accept-charset="UTF-8">

    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
        <tr bgcolor="#E7E7E7">
            <td height="24" colspan="2" >客户&nbsp;</td>
        </tr>

        <tr>
            <td width="80px">姓名：</td>
            <td><input id="name" name="name" type="text" value="${name}" />&nbsp;&nbsp;<span id="name1"></span></td>
        </tr>
        <tr>
            <td width="80px">性别：</td>
            <td>
            <c:if test="${age == 1}"><input id="xb" name="age" type="radio" checked="checked"/>男</td></c:if>
            <c:if test="${age == 0}"><input id="xb" name="age" type="radio" checked="checked"/>女</td></c:if>

            </td>
        </tr>

        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>
                &nbsp;

<%--                <a onclick="addclu()"  class="coolbg">保存</a>--%>

                <a href="${pageContext.request.contextPath}/lu/getUserAll" class="coolbg">返回</a>
            </td>
        </tr>
        <tr>
            <td width="80px">提交：</td>
            <td><input type="submit" /></td>
        </tr>
    </table>

</form>

<script type="text/javascript">
	function addclu() {
		alert("1111")
		$("#form").submit();
	}

</script>

</body>
</html>