<?php
/* * 
 * 码支付同步通知页面
 */

if(!defined('IN_PLUGIN'))exit();
$url=creat_callback($order);
returnTemplate($url['return']);
?>