<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	session.setAttribute("path", path);
	
	String qrCodeUrl2=request.getParameter("qrCodeUrl");
%>
<html>
<head>
<title>聚合支付</title>
<script type="text/javascript" src="${path}js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${path}js/jquery.qrcode.min.js"></script>
<link href="${path}pay_files/pay.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrap_header">
		<div class="header clearfix">
			<div class="logo_panel clearfix">
				<div class="logo fl">
					<img src="${path}pay_files/logo.png" alt="logo">
				</div>
				<div class="lg_txt">| 玢翔支付体验平台</div>
			</div>
			<div class="fr tip_panel">
				<div class="txt">欢迎使用玢翔支付付款</div>
				<a href="">常见问题</a>
			</div>
		</div>
	</div>

	<div class="cashier_desk pay_ment">
		<div class="bd">
			<ul class="payment">
				<table align="center" cellspacing="10">
					<tr>
							<font size="40px" color="#009ddc">聚合支付</font>
					</tr>
					<tr>
					<tr height="20px"></tr>
					<td>
						<div id="code" oid="4835a85a4e01402aa17f8a73c356f80d"
							style="height: 250px; width: 250px">
							<label>请用微信/支付宝扫一扫即可付款:</label><br /><br />
					</td>

					<td width="180px"></td>
					<td>
						<form action="${path}roncooPay/f2fPay" method="post">
							<label>请输入微信/支付宝支付授权码即可付款:</label><br /><br /> <input type="text"
								size="40" name="authCode" style="line-height: 25px;"> <input
								type="hidden" name="productName" value="聚合支付产品测试" /> <input
								type="hidden" name="orderPrice" value="0.01" /> <input
								type="hidden" name="payWayCode" value="UNION"> <input
								type="hidden" name="remark" value="聚合支付备注信息" />
							<p class="pay_btn">
								<input type="submit" value="0.01元支付体验" />
							</p>
						</form>
					</td>
					</tr>
					<tr height="60px"></tr>
				</table>
			</ul>
		</div>
	</div>

	<div class="footer w100">
		<div class="container">
			<ul class="con-content">
				<li><strong class="a">联系电话：</strong></li>
				<li></li>
				<!-- <li class="lightly">电话繁忙时，请联系在线客服</li> -->
			</ul>
			<ul class="con-content">
				<li><strong class="b">工作时间：</strong></li>
				<li>周一至周五 09:00-23:00</li>
				<li>周六至周日 10:00-18:00</li>
			</ul>
			<ul class="con-content">
				<li><strong class="c">反馈意见：</strong></li>
				<li>service@fx.com</li>
			</ul>
		</div>
		<div class="copyright">Copyright © 2018-2106 玢翔健康科技(上海)有限公司版权所有</div>
		<p class="yue">
			<a href="http://www.miitbeian.gov.cn/" target="_blank">沪ICP备12345678号</a>
		</p>
	</div>


	<script type="text/javascript">
		$(function() {
			$("#code").qrcode({
				render : "table",
				correctLevel : 0,
				width : 300,
				height : 300,
				text : "${qrCodeUrl}"
			});
		})
	</script>
</body>

</html>
