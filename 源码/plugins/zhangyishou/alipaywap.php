<?php
/*
 * 支付宝当面付扫码支付
*/
if(!defined('IN_PLUGIN'))exit();

session_start();

@header('Content-Type: text/html; charset=UTF-8');

$sitename=htmlspecialchars(base64_decode($_GET['sitename']));

if(strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger')!==false){
	include(SYSTEM_ROOT.'pages/wxopen.php');
	exit;
}

require_once(PAY_ROOT."inc/config.php");
$getwayurl = 'http://api.zhangyishou.com/api/Order/AddOrder';
$params = [
	'MerchantId' => (int)$pay_config['merchantId'],
	'DownstreamOrderNo' => TRADE_NO,
	'OrderTime' => $date,
	'PayChannelId' => (int)$pay_config['channelId'],
	'AsynPath' => $conf['localurl'].'pay/zhangyishou/notify/'.TRADE_NO.'/',
	'OrderMoney' => (float)$order['realmoney'],
	'IPPath' => $clientip,
];

$signStr = "";
foreach($params as $row){
	$signStr .= $row;
}
$signStr .= $pay_config['key'];
$params['MD5Sign'] = md5($signStr);
$params['Mproductdesc'] = $ordername;

if($_SESSION[TRADE_NO.'_alipay']){
	$data = $_SESSION[TRADE_NO.'_alipay'];
}else{
	$data = zz_get_curl($getwayurl, json_encode($params));
	$_SESSION[TRADE_NO.'_alipay'] = $data;
}

$result = json_decode($data, true);

if($result['Code']=='1009'){
	$code_url = $result['Info'];
}else{
	sysmsg('支付宝创建订单失败！['.$result['Code'].']'.$result['Message'].':'.$result['Info']);
}

?>
<html lang="zh-cn">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>支付宝支付 - <?php echo $sitename?></title>
  <link href="//cdn.staticfile.org/twitter-bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <br>
<div class="col-xs-12 col-sm-10 col-md-8 col-lg-6 center-block" style="float: none;">
<div class="panel panel-primary">
    <div class="panel-heading" style="text-align: center;"><h3 class="panel-title">
        <img src="/assets/icon/alipay.ico">
     支付宝支付手机版
    </div>
        <div class="list-group" style="text-align: center;">
            <div class="list-group-item list-group-item-info">手机截图保存到相册使用扫码完成支付</div>
            <div class="list-group-item">
            <div class="qr-image" id="qrcode"></div>
            <br>
            <font style="font-size:18px">应付金额：<?php echo $order['realmoney']?>元</font>
            <br>
            <font color="red">(订单遇到问题请联系购买网站客服获取帮助)</font><br><font color="red">(支付完成需要耐心等待一会！！！)</font>

             <hr>
             <div class="foot">
<div class="inner">
<div id="J_downloadInteraction" class="download-interaction download-interaction-opening">
    <div class="inner-interaction">
        <p class="download-opening">正在打开支付宝<span class="download-opening-1">.</span><span class="download-opening-2">.</span><span class="download-opening-3">.</span></p>
        <p class="download-asking">如果没有打开支付宝，<a class="btn btn-info btn-block" href="javascript:;" onclick="alijspaywap();">请点此重新唤起</a></p>
	</div>
</div>
</div>
</div>
				<font color="red">如果自动打开支付宝无法支付 请关闭支付宝应用后 手动保存二维码 再次打开支付宝扫码支付！</font>
            </div>
        </div>
</div>
</div>
<script src="//cdn.staticfile.org/jquery/1.12.4/jquery.min.js"></script>
<script src="/assets/js/jquery-qrcode.min.js"></script>
<script src="//cdn.staticfile.org/layer/2.3/layer.js"></script>
<script>
    var code_url = '<?php echo $code_url?>';
    $('#qrcode').qrcode({
        text: code_url,
        width: 180,
        height: 180,
        foreground: "#000000",
        background: "#ffffff",
        typeNumber: -1
    });
    // 检查是否支付完成
    function loadmsg() {
        $.ajax({
            type: "GET",
            dataType: "json",
            url: "/getshop.php",
            timeout: 10000, //ajax请求超时时间10s
           data: {type: "alipay", trade_no: "<?php echo $order['trade_no']?>",'r':Math.random()}, 
            success: function (data, textStatus) {
                //从服务器得到数据，显示数据并继续查询
                if (data.code == 1) {
                    layer.msg('支付成功，正在跳转中...', {icon: 16,shade: 0.01,time: 15000});
                    setTimeout(window.location.href=data.url, 1000);
                }else{
                    setTimeout("loadmsg()", 4000);
                }
            },
            //Ajax请求超时，继续查询
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                if (textStatus == "timeout") {
                    setTimeout("loadmsg()", 1000);
                } else { //异常
                    setTimeout("loadmsg()", 4000);
                }
            }
        });
    }
    function checkresult() {
        $.ajax({
            type: "GET",
            dataType: "json",
            url: "/getshop.php",
            timeout: 10000, //ajax请求超时时间10s
            data: {type: "alipay", trade_no: "<?php echo $order['trade_no']?>"},
            success: function (data, textStatus) {
                //从服务器得到数据，显示数据并继续查询
                if (data.code == 1) {
                    layer.msg('支付成功，正在跳转中...', {icon: 16,shade: 0.01,time: 15000});
                    setTimeout(window.location.href=data.url, 1000);
                }else{
                    layer.msg('未完成支付！');
                }
            },
            //Ajax请求超时，继续查询
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                layer.msg('服务器错误');
            }
        });
    }
    window.onload = loadmsg();
</script>
<script>
    function alijswap(qrcode, flag) {
	var isflag = false;
	if (isflag) {
		return
	};
	isflag = true;
	url = 'alipayqr://platformapi/startapp?saId=10000007&clientVersion=3.7.0.0718&qrcode=' + qrcode;
	location['href'] = url;
	flag = typeof(flag) == 'undefined' ? '': flag;
	setTimeout(function() {
		if (typeof flag !== 'string') {
			flag = ''
		};
		if (flag && typeof flag === 'string') {
			location['href'] = flag
		}
	},
	2000);
	setTimeout(function() {
		isflag = false
	},
	800)
	}
          function alijspaywap()
          {
             alijswap(code_url);
          }
          alijspaywap();
    </script>
</body>
</html>