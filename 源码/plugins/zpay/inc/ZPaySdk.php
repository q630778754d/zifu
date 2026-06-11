<?php


namespace zpay;

require_once dirname(__FILE__) . '/zpay_function.php';

class ZPaySdk
{

    private $config;

    //支付页面地址
    private $payUrl = "https://pay.rxkku.net/payPage/pay.php?out_trade_no=";
    //支付网关
    private $gateway = "https://pay.rxkku.net/v1/common/";
    //获取微信用户信息地址
    private $getWeChatInfoApiUrl = "http://jk.lyifc.cn/getWechatUserInfo.php";

    //创建订单接口
    private $createOrderUrl = 'createOrder';
    //获取订单接口
    private $getOrderApiUrl ='getOrder';
    //关闭订单接口
    private $closeOrderApiUrl ='closeOrder';
    //sdk版本号
    private $version = 'v1.0.0';


    function __construct($mch_id=null,$key=null)
    {
        require_once dirname(__FILE__) . '/zpay_config.php';
        $this->config = $zpay_config;
        if ($mch_id!=null)
        {
            $this->config['mch_id']=$mch_id;
        }
        if ($key != null)
        {
            $this->config['secret_key']=$key;
        }
    }

    //创建订单
    public function createOrder($parameter)
    {
        //验证传入的参数
        if ($parameter == null) {
            exit('参数列表为空');
        } else if ($parameter['out_trade_no'] == null || $parameter['out_trade_no'] == '') {
            exit('订单号为空');
        } else if ($parameter['attach'] == null || $parameter['attach'] == '') {
            exit('附加参数为空');
        } else if ($parameter['amount'] == null || $parameter['amount'] == '') {
            exit('金额为空');
        } else if ($parameter['type'] == null || $parameter['type'] == '') {
            exit('支付类型为空');
        }
        $parameter['mch_id'] = $this->config['mch_id'];
        $parameter['timestamp'] = millisecondWay();
        //补齐参数
        $parameter['sign'] = $this->createSign($parameter['out_trade_no'], $parameter['attach'], $parameter['type']
            , $parameter['amount'], $parameter['timestamp'], $this->config['mch_id'], $this->config['secret_key']);
        //如过传递过来的同步地址为空就获取配置文件里的
        if ($parameter['return_url'] == '' || $parameter['return_url'] == null) {
            $parameter['return_url'] = $this->config['return_url'];
            if ($parameter['return_url'] == '') {
                exit('未传入同步地址');
            }
        }
        if ($parameter['notify_url'] == '' || $parameter['notify_url'] == null) {
            $parameter['notify_url'] = $this->config['notify_url'];
            if ($parameter['notify_url'] == '') {
                exit('未传入异步地址');
            }
        }
        $parameter['isHtml'] = $this->config['isHtml'];
        $request_url = $this->gateway.$this->createOrderUrl;
        if ($parameter['isHtml'] == 0) {
            $content = get_cur($request_url, $parameter, 'POST');
            //判断是否是url
            $getOrderInfo = json_decode($content, true);
            if ($getOrderInfo['code'] == 200) {
                return $getOrderInfo;
            } else {
                exit("订单创建失败，错误信息:" . $getOrderInfo['msg']);
            }
        } else if ($parameter['isHtml'] == 1) {
            $sHtml = "<form id='submit' name='submit' action='" . $request_url . "' method='post'>";
            foreach ($parameter as $key => $val) {
                $sHtml .= "<input type='hidden' name='" . $key . "' value='" . $val . "'/>";
            }
            $sHtml = $sHtml . "<input type='submit' value='提交订单'></form>";
            $sHtml = $sHtml . "<script>document.forms['submit'].submit();</script>";
            return $sHtml;
        }
    }

    public function getPayUrl($getOrderInfo)
    {
        return $this->payUrl.$getOrderInfo['data']['outTradeNo'];
    }

    //判断订单是否支付成功
    public function checkOrder($out_trade_no)
    {
        $parameter['out_trade_no'] = $out_trade_no;
        $request_url = $this->gateway.$this->getOrderApiUrl;
        $parameter = json_decode(get_cur($request_url, $parameter), true);
        if ($parameter['code'] == 200) {
            //订单状态：-1:订单过期 0:等待支付 1:完成 2:支付完成但通知失败
            if ($parameter['data']['state'] == 1) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    //关闭订单
    public function closeOrder($out_trade_no)
    {
        $parameter['out_trade_no'] = $out_trade_no;
        $parameter['sign'] = md5($out_trade_no, $this->config['secret_key']);
        $request_url = $this->gateway.$this->closeOrderApiUrl;
        $parameter = json_decode(get_cur($request_url, $parameter), true);
        if ($parameter['code'] == 200) {
            //关闭成功
            return true;
        } else {
            //关闭失败
            return false;
        }
    }

    //附加服务获取微信用户信息，传入用户ID，传入要接收数据的地址
    public function get_WeChat_info($url)
    {
        $request_url = $this->getWeChatInfoApiUrl;

        $http_request_parameter['mch_id'] = $this->config['mch_id'];
        $http_request_parameter['redirect_uri'] = $url;
        $http_request_parameter['t'] = millisecondWay();
        $http_request_parameter['sign'] = $this->wechatSign($this->config['mch_id'], $http_request_parameter['redirect_uri']
            , $this->config['secret_key'], $http_request_parameter['t']);
        $request_url = $request_url . '?' . http_build_query($http_request_parameter);
        Header("Location:".$request_url);

    }

    //创建订单生成签名
    public function createSign($out_trade_no, $attach, $type, $amount, $timestamp, $mch_id, $key)
    {
        return md5($out_trade_no . $attach . $type . $amount . $timestamp . $mch_id . $key);
    }
    //微信登陆签名
    public function wechatSign($mch_id, $host, $key, $time)
    {
        return md5($mch_id . $host . $key . $time);
    }

    //异步验证签名
    public function isSign()
    {
        //异步回来的参数表
        $notify_parameter = get_notify_parameter();
        $_sign = md5($notify_parameter['out_trade_no']
            . $notify_parameter['attach']
            . $notify_parameter['type']
            . $notify_parameter['amount']
            . $notify_parameter['really_amount']
            . $this->config['mch_id']
            . $this->config['secret_key']);
        if ($notify_parameter['sign'] == $_sign) {
            return true;
        } else {
            return false;
        }
    }
}