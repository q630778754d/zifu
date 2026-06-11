<?php
$zpay_config = array();
//Z支付商户号
$zpay_config['mch_id']='2163790';
//Z支付商户秘钥
$zpay_config['secret_key']='jInwiGl4ReWV2dDPafP0fEr4Z5LpeYFj';
//设置为0-->返回json数据,1-->使用表单提交直接跳转页面.
$zpay_config['isHtml'] = 1;
//同步地址 替换为你的同步地址
$zpay_config['return_url']='http://'.$_SERVER['HTTP_HOST'].'/pay/zpay/return/'.TRADE_NO.'/';
//异步地址 替换为你的异步地址
$zpay_config['notify_url']='http://'.$_SERVER['HTTP_HOST'].'/pay/zpay/notify/'.TRADE_NO.'/';