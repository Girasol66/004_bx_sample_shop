<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getScheme() + "://" + request.getServerName()
          + ":" + request.getServerPort() + request.getContextPath()
          + "/";
  session.setAttribute("path", path);
%>
<html>
<head>
    <title>扫码支付</title>
  <script type="text/javascript" src="${path}js/jquery-1.7.2.min.js"></script>
  <link href="${path}pay_files/pay.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrap_header">
  <div class="header clearfix">
    <div class="logo_panel clearfix">
      <div class="logo fl"><img src="${path}pay_files/logo.png" alt="logo"></div>
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
          <li style="margin-left: 20px;">
        <img src="${path}images/union.png" alt="聚合支付" style="width: 200px;"/>
        <form action="${path}unionPay/goPay" method="post">
          <input type="hidden" name="productName" value="聚合支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="UNION">
          <input type="hidden" name="remark" value="聚合支付备注信息" />
          <p class="pay_btn">
            <input type="submit" value="0.01元支付体验" />
          </p>
        </form>
      </li>
      <li style="margin-left: 20px;">
        <img src="${path}images/weixin.png" alt="微信支付"  style="width: 200px;" />
        <form action="${path}roncooPay/scanPay" method="post">
          <input type="hidden" name="productName" value="微信支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="WEIXIN">
          <input type="hidden" name="remark" value="微信支付备注信息" />
          <p class="pay_btn">
            <input type="submit" value="0.01元支付体验" />
          </p>
        </form>
      </li>
      <li style="margin-left: 20px;"><img src="${path}images/zhifubao.png" alt="支付宝支付"  style="width: 200px;"/>
        <form action="${path}roncooPay/scanPay" method="post">
          <input type="hidden" name="productName" value="支付宝支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="ALIPAY">
          <input type="hidden" name="remark" value="支付宝支付备注信息" />
          <p class="pay_btn">
            <input type="submit" value="0.01元支付体验" />
          </p>
        </form>
      </li>
      <li style="margin-left: 20px;">
        <img src="${path}images/wangguan.png" alt="网关支付"  style="width: 200px;"/>
        <form action="${path}roncooPay/scanPay" method="post">
          <input type="hidden" name="productName" value="网关支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="">
          <input type="hidden" name="remark" value="网关支付备注信息" />
          <p class="pay_btn">
            <input type="submit" value="0.01元支付体验" />
          </p>
        </form>
      </li>
      <li style="margin-left: 20px;">
        <img src="${path}images/beisao.png" alt="条码支付"  style="width: 200px;"/>
        <form action="${path}roncooPay/toF2FPay" method="post">
          <br /><br />
          <p class="pay_btn">
            <input type="submit" value="条码支付体验" />
          </p>
        </form>
      </li>
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
      <li>周一至周五  09:00-23:00</li>
      <li>周六至周日  10:00-18:00</li>
    </ul>
    <ul class="con-content">
      <li><strong class="c">反馈意见：</strong></li>
      <li>service@fx.com</li>
    </ul>
  </div>
  <div class="copyright">Copyright © 2018-2106 玢翔健康科技(上海)有限公司</div>
  <p class="yue"><a href="http://www.miitbeian.gov.cn/" target="_blank">沪ICP备12345678号</a></p>
</div>
</body>

</html>
