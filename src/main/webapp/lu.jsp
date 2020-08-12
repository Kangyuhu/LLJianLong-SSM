<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>客户信息管理</title>
    <script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body leftmargin="8" topmargin="8" >

<form name="form" id="form" action="${pageContext.request.contextPath}/lu/addUser" method="post" accept-charset="UTF-8">

    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
        <tr bgcolor="#E7E7E7">
            <td height="24" colspan="2" >&nbsp;添加客户&nbsp;</td>
        </tr>

        <tr>
            <td width="80px">姓名：</td>
            <td><input id="name" name="name" type="text" />&nbsp;&nbsp;<span id="name1"></span></td>
        </tr>
        <tr>
            <td width="80px">性别：</td>
            <td>
                <input id="xb" name="age" value="1" type="radio" checked="checked"/>帅哥
                <input id="xb2" name="age" value="0" type="radio"/>美女
            </td>
        </tr>

        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>
                <a onclick="addclu()"  class="coolbg">保存</a>
                <a href="" class="coolbg">返回</a>
            </td>
        </tr>
        <%--<tr>
            <td width="80px">提交：</td>
            <td><input type="submit" /></td>
        </tr>--%>
    </table>

</form>

<script type="text/javascript">
	function addclu() {
		alert("1111")
		$("#form").submit();
	}

</script>

<!--  内容列表   -->
<form id="form2" action="${pageContext.request.contextPath}/lu/deleteUser" method="post">

    <table id="infotb" width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center"
           style="margin-top:8px">
        <tr bgcolor="#E7E7E7">
            <td height="24" colspan="12" >&nbsp;用户列表&nbsp;</td>
        </tr>
        <tr align="center" bgcolor="#FAFAF1" height="22" id="tr2">
            <td width="4%">选择</td>
            <td width="6%">序号</td>
            <td width="10%">联系人</td>
            <td width="10%">性别</td>
            <td width="10%">操作</td>
        </tr>
        <c:forEach items="${userAll}" var="uall">
            <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';"
                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                <td><input name="id" type="checkbox" id="id" value="${uall.id}"></td>
                <td>${uall.id}</td>
                <td>${uall.name}</td>
                <c:if test="${uall.age == 1}"><td align="center">男</td></c:if>
                <c:if test="${uall.age == 0}"><td align="center">女</td></c:if>
                <td><a href="${pageContext.request.contextPath}/cus/updateEcho?id=${uall.id}&dbf=1">编辑</a> |
                    <a href="${pageContext.request.contextPath}/lu/getById?id=${uall.id}&dbf=0">查看详情</a></td>
            </tr>
        </c:forEach>


        <tr>
            <td colspan="7">
                <div id="pager" style="width:20%;float:right">
                </div>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
                <script type="text/javascript">

                    //删除
                    function del() {
                        var len = $("input[name = id]:checked").length;
                        if (len > 0){
                            if (confirm("确定删除吗？")){
                                alert(len)
                                $("#form2").submit();
                            }
                        }else {
                            alert("选择要删除的内容");
                        }
                    }

                    //全选
                    function  checkedAll() {
                        alert("啦啦啦");
                        $("[name = id]").prop("checked",true);
                    }

                    //反选
                    function cancelCheckedAll() {
                        //var ids = document.getElementsByName("id");
                        var ids = $("[name = id]");

                        for(var i=0;i<ids.length;i++){
                            if(ids[i].checked)
                                ids[i].checked=false ;
                            else
                                ids[i].checked=true ;
                        }
                    }

                    //全不选
                    function noCheckedAll() {
                        alert("哒哒哒");
                        $("[name = id]").prop("checked",false);
                    }

                </script>
            </td>
        </tr>


        <tr bgcolor="#FAFAF1">
            <td height="28" colspan="12">
                &nbsp;
                <a href="javascript:void (0)" onclick="checkedAll()" class="coolbg">全选</a>
                <a href="javascript:void (0)" onclick="cancelCheckedAll()" class="coolbg">反选</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="javascript:void (0)" onclick="noCheckedAll()" class="coolbg">全不选</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="javascript:void(0)" onclick="del()" class="coolbg">&nbsp;删除&nbsp;</a>
            </td>
        </tr>
        <tr align="right" bgcolor="#EEF4EA">
            <td height="36" colspan="12" align="center">

                </div>
            </td>
        </tr>
    </table>

</form>




</body>
</html>