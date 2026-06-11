<?php
if(!defined('IN_PLUGIN'))exit();

require 'inc/ZPaySdk.php';
use zpay\ZPaySdk;

$pay = new ZPaySdk($channel['appid'],$channel['appkey']);
$type = 1;
if ($order['typename'] == 'alipay')
{
    $type = 2;
}else
{
    $type = 1;
}
//创建订单需要构建的参数
$parameter = array(
    //支付方式 1-->微信，2-->支付宝,3-->支付宝转账
    "type" => $type ,
    //商户订单号
    "out_trade_no" => $trade_no,
    //自定义参数
    "attach" => 'chyzf',
    //金额
    "amount" => (float)$order['realmoney'],
    //time_expire 订单有效 单位:分钟
    "time_expire" => 5,
);
echo $pay->createOrder($parameter);

