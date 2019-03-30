<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:64:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/my/order.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/container.html";i:1552637812;s:67:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/head.html";i:1552637812;s:68:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/style.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/requirejs.html";i:1552637812;s:67:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/foot.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/right_nav.html";i:1552637812;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
<meta name="browsermode" content="application"/>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!-- 禁止百度转码 -->
<meta http-equiv="Cache-Control" content="no-siteapp">
<!-- uc强制竖屏 -->
<meta name="screen-orientation" content="portrait">
<!-- QQ强制竖屏 -->
<meta name="x5-orientation" content="portrait">
    <title>订单详情</title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
    <script type="text/javascript" src="/public/static/plug/wxApi.js"></script>
    <script>
        $jssdk = function(){return <?=\service\WechatService::jsSdk()?>;}
        window.wechat_share_title="<?=\service\SystemConfigService::get('wechat_share_title')?>";
        window.wechat_share_synopsis="<?=\service\SystemConfigService::get('wechat_share_synopsis')?>";
        window.wechat_share_img="<?=\service\SystemConfigService::get('wechat_share_img')?>";
        mapleWx($jssdk(), function () {
            this.onMenuShareAll({
                title: wechat_share_title || $('title').text(),
                desc: wechat_share_synopsis || $('title').text(),
                imgUrl: location.origin +wechat_share_img,
                link:location.href,
            });
        });
    </script>
    <script type="text/javascript" src="/public/static/plug/requirejs/require.js"></script>
<script>
    requirejs.config({
        urlArgs: "v=201712230955",
        map: {
            '*': {
                'css': "/public/static/plug/requirejs/require-css.js"
            }
        },
        shim: {
            'iview': {
                deps: ['css!iviewcss']
            },
            'layer': {
                deps: ['css!layercss']
            },
            'ydui': {
                deps: ['css!yduicss']
            },
            'vant': {
                deps: ['css!vantcss']
            },
            'cityselect': {
                deps: ['css!yduicss']
            }
        },
        baseUrl: '//' + location.hostname + "/public/",
        paths: {
            'static': 'static',
            'vue': 'static/plug/vue/dist/vue.min',
            'axios': 'static/plug/axios.min',
            'iview': 'static/plug/iview/dist/iview.min',
            'iviewcss': 'static/plug/iview/dist/styles/iview',
            'lodash': 'static/plug/lodash',
            'layer': 'static/plug/layer/layer',
            'layercss': 'static/plug/layer/theme/default/layer',
            'jquery': 'static/plug/jquery-1.10.2.min',
            'moment': 'static/plug/moment',
            'sweetalert': 'static/plug/sweetalert2/sweetalert2.all.min',
            'helper':'static/plug/helper',
            'store':'wap/first/crmeb/module/store',
            'better-scroll':"static/plug/better-scroll",
            'ydui':"static/plug/ydui/ydui",
            'yduicss':"static/plug/ydui/ydui-px",
            'vant':"static/plug/vant/vant.min",
            'vantcss':"static/plug/vant/vant",
            'cityselect':"static/plug/ydui/cityselect",
            'reg-verify':"static/plug/reg-verify"
        }
    });
</script>
    
    <script type="text/javascript" src="/public/wap/first/crmeb/js/common.js"></script>
</head>
<body>

<div id="user-order" class="user-order-con">
    <section>
        <div class="coc-header send clearfix">
            <div class="logistics-state <?php echo $order['_status']['_class']; ?> fl"></div>
            <div class="logistics-info fr">
                <div class="logistics-info-txt">
                    <p><?php echo $order['_status']['_title']; ?></p>
                    <?php if($order['pink_id']): if(isPinkStatus($order['pink_id'])): ?>
                        <span><?php echo $order['_status']['_msg']; ?></span>
                        <?php else: ?>
                        <span>拼团活动已经结束</span>
                        <?php endif; else: ?>
                    <span><?php echo $order['_status']['_msg']; ?></span>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <div class="adderss-info">
            <i class="iconfont icon-dizhi1"></i>
            <div class="content">
                <p><?php echo $order['real_name']; ?> <?php echo $order['user_phone']; ?></p>
                <p class="address-content"><?php echo $order['user_address']; ?></p>
            </div>
        </div>
        <?php if($order['_status']['_type'] >= '2'): ?>
        <div class="item-block delivery-infos">
            <div class="con-tit">配送信息</div>
            <div class="delivery-con">
                <ul>
                    <li>配送方式：<?php echo $order['_status']['_deliveryType']; ?></li>
                    <?php if($order['delivery_type'] == 'express'): ?>
                    <li>快递公司：<?php echo $order['delivery_name']; ?></li>
                    <li>快递单号：<?php echo $order['delivery_id']; ?></li>
                    <?php endif; if($order['delivery_type'] == 'send'): ?>
                    <li>配送人员：<?php echo $order['delivery_name']; ?></li>
                    <li>联系电话：<a class="tel" href="tel:<?php echo $order['delivery_id']; ?>"><?php echo $order['delivery_id']; ?></a> <i class="icon-tel"></i></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
        <?php endif; ?>
        <div class="item-block product-info">
            <div class="con-tit">产品信息</div>
            <div class="delivery-con">
                <ul>
                    <?php if(is_array($order['cartInfo']) || $order['cartInfo'] instanceof \think\Collection || $order['cartInfo'] instanceof \think\Paginator): $i = 0; $__LIST__ = $order['cartInfo'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cart): $mod = ($i % 2 );++$i;?>
                    <li>
                        <a class="flex" href="javascript:void(0);">
                            <div class="picture"><img @click.stop="toProductUrl('<?php echo $cart['productInfo']['id']; ?>')" src="<?php echo $cart['productInfo']['image']; ?>" /></div>
                            <div class="info-centent flex">
                                <p class="name"><?php echo $cart['productInfo']['store_name']; ?></p>
                                <p class="description"><?=isset($cart['productInfo']['attrInfo']) ? $cart['productInfo']['attrInfo']['suk'] : ''?></p>
                                <p class="count"><span>￥<?php echo $cart['truePrice']; ?></span> X<?php echo $cart['cart_num']; ?></p>
                            </div>
                        </a>
                        <?php if($order['_status']['_type'] == '3'): if(!\app\wap\model\store\StoreProductReply::isReply($cart['unique'],'product')): ?>
                            <div class="assess status-on">
                                <a href="javascript:void(0);" @click="goReply('<?php echo $cart['unique']; ?>')">评价</a>
                            </div>
                        <?php endif; endif; ?>
                    </li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <div class="all-price">
                <div class="infos">
                    <?php if($order['total_postage'] > '0'): ?>
                    <p>运费 <span class="fr">￥<?php echo $order['total_postage']; ?></span></p>
                    <?php endif; ?>
                    <p>商品总价 <span class="fr">￥<?php echo $order['total_price']; ?></span></p>
                    <?php if($order['coupon_price'] > '0'): ?>
                    <p class="deb">优惠 <span class="fr">-￥<?php echo $order['coupon_price']; ?></span></p>
                    <?php endif; if($order['deduction_price'] > '0'): ?>
                    <p class="deb">积分抵扣 <span class="fr">-￥<?php echo $order['deduction_price']; ?></span></p>
                    <?php endif; ?>
                </div>
                <div class="all-count">实付款 <span class="fr">￥<?php echo $order['pay_price']; ?></span></div>
            </div>
        </div>
        <div class="item-block delivery-infos">
            <div class="con-tit">订单信息</div>
            <div class="delivery-con">
                <ul>
                    <li>订单编号：<?php echo $order['order_id']; ?></li>
                    <li>下单时间：<?php echo date("Y-m-d H:i",$order['add_time']); ?></li>
                    <li>支付方式：<?php echo $order['_status']['_payType']; ?></li>
                    <li>支付状态：<?php echo $order['paid']==1?'已支付' : '未支付'; ?></li>
                    <?php if($order['paid'] == '1'): ?>
                    <li>支付时间：<?php echo date("Y-m-d H:i",$order['pay_time']); ?></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
        <?php if(($order['_status']['_type'] != -1 && $order['_status']['_type'] != 3 && $order['pay_type'] != 'offline') || ($order['pay_type'] == 'offline' && ($order['status'] == 1 || $order['status'] > 2))): ?>
            <div style="height:1rem"></div>
            <div class="order-con-btn">
                <?php if($order['_status']['_type'] != 2): ?>
                    <span class="more-menu" @click.self="showMenu = !showMenu">
                    更多
                    <ul :class="{active:showMenu == true}">
                        <?php if($order['_status']['_type'] == 0 || $order['_status']['_type'] == 4 || $order['_status']['_type'] == -2){ ?>
                            <li><a href="javascript:void(0);" @click="removeOrder">删除订单</a></li>
                        <?php }else if($order['_status']['_type'] != 2 && $order['_status']['_type'] != 3 && $order['_status']['_type'] != -1){ ?>
                            <li><a href="javascript:void(0);" @click="applyRefundOrder">申请退款</a></li>
                        <?php } ?>
                    </ul>
                    </span>
                <?php endif; if($order['pink_id']): ?>
                <a href="javascript:void(0);" @click="LinkPink(<?php echo $order['pink_id']; ?>)"><span class="delete-order">查看拼团</span></a>
                <?php endif; if($order['_status']['_type'] == 0){ ?>
                    <a class="payment" href="javascript:void(0);" @click="confirm">立即付款</a>
                <?php }else if($order['_status']['_type'] == 2){ if($order['delivery_type'] == 'express'): ?>
                    <a href="<?php echo url('express',['uni'=>$order['order_id']]); ?>"><span class="delete-order">查询快递</span></a>
                    <?php endif; ?>
                    <a class="payment" href="javascript:void(0);" @click="userTake">确认收货</a>
                <?php } ?>
            </div>
        <?php endif; if($order['_status']['_type'] == '3'): ?>
            <div style="height:1rem"></div>
            <div class="order-con-btn">
                <a class="payment" href="javascript:void(0);" @click="goDetails">再来一单</a>
            </div>
        <?php endif; ?>
    </section>
</div>
<script type="text/javascript">
    requirejs(['vue','store','helper','layer'],function(Vue,storeApi,$h,layer){

        new Vue({
            el:"#user-order",
            data:{
                orderId:'<?=$order['order_id']?>',
                payType:'<?=$order['pay_type']?>',
                showMenu:false
            },
            methods:{
                toProductUrl:function(id){
                    location.href = $h.U({c:'store',a:'detail',p:{id:id}});
                },
                goDetails:function () {
                    that = this;
                    storeApi.orderDetails(that.orderId,function(res){
                        if(res.data.code == 200){
                            var cartId = res.data.data;
                            location.href = $h.U({
                                c: 'store',
                                a: 'confirm_order',
                                p: {cartId: cartId}
                            });
                        }else{
                            $h.pushMsg(res.data.msg);
                        }
                    },function(res){
                        $h.pushMsg(res.msg);
                    });
                },
                applyRefundOrder:function(){
                    var that = this;
                    layer.confirm('确定申请退款?',{icon:3},function(index){
                        layer.close(index);
                        require(['wap/first/crmeb/module/refund-reason'],function($r){
                            Vue.use($r);
                            that.$orderRefundReason(function(msg){
                                $h.load();
                                storeApi.orderApplyRefund(that.orderId,msg,function(res){
                                    $h.loadClear();
                                    $h.pushMsg('申请退款成功!',function(){
                                        location.reload(true);
                                    });
                                },function(){ $h.loadClear(); return true; });
                            });
                        });
                    });
                },
                removeOrder:function(){
                    var that = this;
                    layer.confirm('确定删除该订单?',{icon:3},function(index){
                        layer.close(index);
                        $h.loadFFF();
                        storeApi.removeUserOrder(that.orderId,function(){
                            $h.loadClear();
                            $h.pushMsg('删除成功',function(){
                                location.replace($h.U({
                                    c:'my',
                                    a:'order_list'
                                }));
                            });
                        });
                    })
                },
                confirm:function(){
                    if(this.payType == 'yue')
                        layer.confirm('确定使用余额支付?',{icon:3},this.goPay);
                    else if(this.payType == 'offline')
                        layer.confirm('确定使用线下付款方式支付?',{icon:3},this.goPay);
                    else
                        this.goPay();
                },
                LinkPink:function (pink_id) {
                    location.href = $h.U({
                        c:'my',
                        a:'order_pink',
                        p:{id:pink_id}
                    });
                },
                goPay:function(){
                    $h.loadFFF();
                    storeApi.payOrder(this.orderId,function(res){
                        $h.loadClear();
                        var data = res.data;
                        if(data.data.status == 'WECHAT_PAY'){
                            mapleWx($jssdk(),function(){
                                this.chooseWXPay(data.data.result.jsConfig,function(){
                                    $h.pushMsg('支付成功',function(){
                                        location.reload(true);
                                    })
                                },{
                                    fail:function(){ $h.pushMsg('已取消支付');},
                                    cancel:function(){ $h.pushMsg('已取消支付');}
                                });
                            });
                        }else{
                            $h.pushMsg(data.msg,function(){
                                location.reload(true);
                            });
                        }
                    },function(e){ $h.loadClear(); return true; })
                },
                userTake:function(){
                    var that = this;
                    layer.confirm('确定立即收货?',{icon:3},function(index){
                        layer.close(index);
                        $h.loadFFF();
                        storeApi.userTakeOrder(that.orderId,function(){
                            $h.loadClear();
                            $h.pushMsg('收货成功',function(){
                                location.reload(true);
                            });
                        },function(e){ $h.loadClear(); return true; });
                    })
                },
                goReply:function(unique){
                    location.href = $h.U({
                        c:'my',
                        a:'order_reply',
                        p:{unique:unique}
                    });
                }
            },
            mounted:function () {
                vm = this;
            }
        })
    });
</script>


<!--crmEb-->
<?php /*  <section id="right-nav" class="right-barnav" >
      <a class="rb-home" href="<?php echo Url('Index/index'); ?>"></a>
      <a class="rb-car" href="<?php echo Url('Store/cart'); ?>"></a>
      <a class="rb-server" href="<?php echo Url('Service/service_list'); ?>"></a>
  </section>  */ ?>
<section id="right-nav" class="right-menu-wrapper">
    <a class="home" href="<?php echo Url('Index/index'); ?>"></a>
    <a class="buy-car" href="<?php echo Url('Store/cart'); ?>"></a>
</section>


</body>
</html>
