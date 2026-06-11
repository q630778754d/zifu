<?php

require_once 'src/ZPaySdk.php';
use zpay\ZPaySdk;
$request_parameter = $_GET;
$pay = new ZPaySdk();
//创建订单需要构建的参数
$parameter = array(
    //支付方式 1-->微信，2-->支付宝,3-->支付宝转账
    "type" => '1' ,
    //商户订单号
    "out_trade_no" => build_order_no(),
    //自定义参数
    "attach" => '测试',
    //金额
    "amount" => '0.01',
    //time_expire 订单有效 单位:分钟
    "time_expire" => 5,
);
//print_r($parameter);
echo $pay->createOrder($parameter);





