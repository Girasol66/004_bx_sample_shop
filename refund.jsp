<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
table.hovertable {
font-family: verdana,arial,sans-serif;
font-size:11px;
color:#333333;
border-width: 1px;
border-color: #999999;
border-collapse: collapse;
width: 1200px;
}
table.hovertable th {
background-color:#c3dde0;
border-width: 1px;
padding: 8px;
border-style: solid;
border-color: #a9c6c9;
}
table.hovertable tr {
background-color:#d4e3e5;
}
table.hovertable td {
border-width: 1px;
padding: 8px;
border-style: solid;
border-color: #a9c6c9;
</style>
</head>
<body>

<div  style="height:100px;position:absolute;left:25%;top:10%;margin-top:-50px;margin-left:-100px ;align:center ">

<table class="hovertable" >
<tr>
<th>商户订单号</th><th>支付状态</th><th>支付方式</th><th>操作</th>
</tr>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
<td>Item 1A</td><td>Item 1B</td><td>Item 1C</td><td><a href="#">退款</a></td>
</tr>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
<td>Item 2A</td><td>Item 2B</td><td>Item 2C</td><td><a href="#">退款</a></td>
</tr>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
<td>Item 3A</td><td>Item 3B</td><td>Item 3C</td><td><a href="#">退款</a></td>
</tr>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
<td>Item 4A</td><td>Item 4B</td><td>Item 4C</td><td><a href="#">退款</a></td>
</tr>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
<td>Item 5A</td><td>Item 5B</td><td>Item 5C</td><td><a href="#">退款</a></td>
</tr>
</table>
</div>
</body>
</html>