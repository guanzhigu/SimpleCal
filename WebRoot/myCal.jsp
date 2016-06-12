<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我的计算器</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<!-- 在jsp中添加js代码，防止用户空提交 -->
<script language="javascript">
<!--
	//写一个函数验证用户是不是空提交
	function checkNum() {
		//判断num1，是不是空的
		if (form1.num1.value == "") {
			window.alert("num1,不能为空！哈哈哈");
			return false;
		}
		//判断num1，是不是一个数
		if (Math.round(form1.num1.value) != form1.num1.value) {
			window.alert("num1,不是一个数");
			return false;
		}
	}
	-->
</script>
<body>
	<%
		//接受到第一个数
	       String s_num1=request.getParameter("num1");
	       //接受第二个数
	       String s_num2=request.getParameter("num2");
	       //接收运算符号
	       String flag=request.getParameter("flag");
	      
	        int num1=0;
	        int num2=0;
	        int result=0;
	        //java中String->int
	        
	        //为了防止异常的发生，我们做一个处理
	        if(s_num1!=null&&s_num2!=null&&flag!=null){
	        
	        num1=Integer.parseInt(s_num1);
	        num2=Integer.parseInt(s_num2);
	      //计算
	      if(flag.equals("+")){
	       //加
	       result=num1+num2;
	      }else if(flag.equals("-")){
	       //减
	       result=num1-num2;
	      }else if(flag.equals("*")){
	       //乘
	       result=num1*num2;
	      }else if(flag.equals("/")){
	       //除
	       result=num1/num2;
	      }
	      }
	%>
	<form name="form1" action="myCal.jsp">
		请输入第一个数：<input type="text" name="num1"  size="6" value="<%=num1 %>"><br /> 
		&nbsp;&nbsp;&nbsp;<select
			name="flag">
			<option value=+>+</option>
			<option value=->-</option>
			<option value=*>*</option>
			<option value= />/
			</option>
		</select><br />
		 请输入第二个数：<input type="text" name="num2" size="6" value="<%=num2%>"><br /> <input
			type="submit" value="计算" onClick="return checkNum();">
	</form>
	<hr>
	<!--这里输出计算的结果-->
	计算结果：<%=result%><!-- 表达式语法 -->
	<br />
</body>
</html>
