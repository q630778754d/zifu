<?php
if(!defined('IN_PLUGIN'))exit();

if($order['typename']=='alipay'){
	if(strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger')!==false && !$submit2){
		echo "<script>window.location.href='/submit2.php?typeid={$order['type']}&trade_no={$trade_no}';</script>";exit;
	}
	if(strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger')!==false){
		include(SYSTEM_ROOT.'pages/wxopen.php');
		exit;
	}
}

if($order['typename']=='alipay'){
	if(checkmobile()==true){
		echo "<script>window.location.href='/pay/zhangyishou/alipaywap/{$trade_no}/?sitename={$sitename}';</script>";
	}else{
		echo "<script>window.location.href='/pay/zhangyishou/alipay/{$trade_no}/?sitename={$sitename}';</script>";
	}
}elseif($order['typename']=='wxpay'){
	if(checkmobile()==true){
		echo "<script>window.location.href='/pay/zhangyishou/wxwappay/{$trade_no}/?sitename={$sitename}';</script>";
	}else{
		echo "<script>window.location.href='/pay/zhangyishou/wxpay/{$trade_no}/?sitename={$sitename}';</script>";
	}
}