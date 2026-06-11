<?php

if(!defined('IN_PLUGIN'))exit();

    $out_trade_no = daddslashes($_GET['out_trade_no']);
    //流水号
    $trade_no = daddslashes($_GET['out_trade_no']);

	$price = (float)$_GET['amount'];

	if(round($price,2)==round($order['realmoney'],2) && $order['status']==0){
		if($DB->exec("update `pre_order` set `status` ='1' where `trade_no`='$out_trade_no'")){
			$DB->exec("update `pre_order` set `api_trade_no` ='$trade_no',`endtime` ='$date',`date` =NOW() where `trade_no`='$out_trade_no'");
			processOrder($order);
            exit('success');
		}
	}

?>