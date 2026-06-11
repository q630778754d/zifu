<?php
$zpay_config = array();
//Z支付商户号
$zpay_config['mch_id']='';
//Z支付商户秘钥
$zpay_config['secret_key']='';
//设置为0-->返回json数据,1-->使用表单提交直接跳转页面.
$zpay_config['isHtml'] = 1;
//同步地址 替换为你的同步地址
$zpay_config['return_url']='http://'.$_SERVER['HTTP_HOST'];
//异步地址 替换为你的异步地址
$zpay_config['notify_url']='http://'.$_SERVER['HTTP_HOST'].'/index.php/Wap/Pay/zpay_notify.html';