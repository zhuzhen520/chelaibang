<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:75:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/store/confirm_order.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/container.html";i:1552637812;s:67:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/head.html";i:1552637812;s:68:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/style.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/requirejs.html";i:1552637812;s:67:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/foot.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/right_nav.html";i:1552637812;}*/ ?>
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
    <title>提交订单</title>
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

<div id="order-confirm" class="order-confirm">
    <section>
        <div class="user-address" @click="showAddressList">
            <i class="icon add"></i>
            <div class="txt-box" v-if="address !== null" v-cloak>
                <p class="name"><span v-text="address.real_name"></span> <span class="tel" v-text="address.phone"></span></p>
                <p v-text="addressDetail"></p>
            </div>
            <div class="txt-box" v-if="address === null">
                <p class="name"><span>请选择收货地址</span></p>
            </div>
        </div>
        <div class="integ-order-info">
            <div class="titles">商品信息</div>
            <div class="integ-order-pro">
                <?php $goodsNum = 0; if(is_array($cartInfo) || $cartInfo instanceof \think\Collection || $cartInfo instanceof \think\Paginator): $i = 0; $__LIST__ = $cartInfo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;$goodsNum += $vo['cart_num']; ?>
                <div class="item clearfix">
                    <div class="img fl"><img src="<?php echo $vo['productInfo']['image']; ?>"></div>
                    <div class="infos fr">
                        <p class="name"><?php echo $vo['productInfo']['store_name']; ?></p>
                        <p class="shux"><span>
                                <?php if(isset($vo['productInfo']['attrInfo'])){ echo $vo['productInfo']['attrInfo']['suk'];} ?></span></p>
                        <p class="count">￥<?php echo $vo['truePrice']; ?><span class="fr">X<?php echo $vo['cart_num']; ?></span></p>
                    </div>
                </div>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <ul class="parameter">
                <li class="flex">
                    <div class="txt">
                        配送费
                        <p v-show="priceGroup.storeFreePostage > 0 && postageMsg == priceGroup.storePostage" v-cloak="">满￥{{priceGroup.storeFreePostage}}元免配送费</p>
                    </div>
                    <a href="javascript:void(0);" v-cloak="">{{postageMsg}}</a>
                </li>
                <li class="flex" v-show="seckill_id==0 && bargain_id==0">
                    <div class="txt">
                        优惠券
                    </div>
                        <a class="select-txt" href="javascript:void(0);">
                                <?php if(empty($usableCoupon) || (($usableCoupon instanceof \think\Collection || $usableCoupon instanceof \think\Paginator ) && $usableCoupon->isEmpty())): ?>
                            <span @click.self="showCoupon" v-if="coupon == null">无优惠券</span>
                                <?php else: ?>
                                    <span style="color: #ff7271;" @click.self="showCoupon" v-if="coupon == null"><?php echo floatval($usableCoupon['coupon_price']); ?>元优惠券可用</span>
                                <?php endif; ?>
                            <span style="color: #ff8d10;" v-else v-cloak="" @click="showCoupon">-￥{{coupon.coupon_price}}
                                <span style="color: #666;margin: 0 .1rem;" @click.stop="coupon = null">取消使用</span>
                            </span>
                        </a>
                </li>
                <li>
                    <div class="title"> <span class="no_check_title" v-show="useIntegral != true">积分抵扣</span> <span class="checked_title"  v-show="useIntegral == true" v-cloak="">可用积分: <?php echo floatval($userInfo['integral']); ?></span>
                        <input type="checkbox" id="integral-btn" class="regular-checkbox">
                        <label for="integral-btn" class="check_btn" style="float: right;" @click="useIntegral = !useIntegral"> </label>
                    </div>
                </li>
                <li class="flex">
                    <div class="txt">
                        备注
                    </div>
                    <input type="text" v-model="payMark" placeholder="请填写自己需要注明的信息..."/>
                </li>
            </ul>
            <div class="all-price">共<?php echo $goodsNum; ?>件商品  小计: <span v-text="priceGroup.totalPrice">计算中</span>元</div>
        </div>
        <div class="comfirm-wrapper">
            <p class="Recharge-top">支付方式</p>
            <div class="Refund-list">
                <input type="radio" name="pay_type" v-model="payType" value="weixin" class="regular-checkbox">
                <label for="checkbox-1-1" class="skin-lable" @click="payType = 'weixin'"></label>
                <div class="passenger-list no-bbm">
                    <p class="p-name"><i class="bank-icon icon-weixin"></i>微信支付</p>
                </div>
            </div>
            <div class="Refund-list">
                <input type="radio" name="pay_type" v-model="payType" value="yue" class="regular-checkbox">
                <label for="checkbox-1-1" class="skin-lable" @click="payType = 'yue'"></label>
                <div class="passenger-list no-bbm">
                    <p class="p-name"><i class="bank-icon" style="background-image: url(/public/wap/first/crmeb/images/yue02.png);"></i>余额支付<em>可用余额<?php echo floatval($userInfo['now_money']); ?></em></p>
                </div>
            </div>
            <?php /*  <div class="Refund-list">
                  <input type="radio" name="pay_type" v-model="payType" value="offline" class="regular-checkbox">
                  <label for="checkbox-1-1" class="skin-lable" @click="payType = 'offline'"></label>
                  <div class="passenger-list no-bbm">
                      <p class="p-name"><i class="bank-icon" style="background-image: url(/public/wap/first/crmeb/images/xianxia02.png);"></i>线下付款</p>
                  </div>
              </div>  */ ?>
        </div>
        <div style="height: 1rem;"></div>
        <div class="cart-calc02"><div class="select-all">应付:<span>￥<span id="jprice" v-text="totalPrice">计算中</span><span id="integral_price" v-show="deduction > 0" v-cloak=""> - {{deduction}}</span></span></div> <a id="jsubmit" href="javascript:void(0);" @click="submit">订单结算</a></div>
    </section>
</div>
<script>
    (function(){
        var $cartInfo = <?php echo json_encode($cartInfo); ?>;
        var $priceGroup = <?php echo json_encode($priceGroup); ?>;
        var $offlinePostage = <?=$offlinePostage?>;
        var $totalIntegral = <?=$userInfo['integral']?>|| 0;
        var $integralRatio = <?=$integralRatio?> || 0 ;
        var $key = '<?=$orderKey?>';
        var $seckill_id = '<?=$seckill_id?>';
        var $bargain_id = '<?=$bargain_id?>';

        requirejs(['vue','store','helper','/public/wap/first/crmeb/module/store/use-coupon.js'
            ,'/public/wap/first/crmeb/module/store/use-address.js','layer'],function(Vue,storeApi,$h,useCoupon,useAddress,layer){
            Vue.use(useCoupon);
            Vue.use(useAddress);



            new Vue({
                el:"#order-confirm",
                data:{
                    cartInfo:$cartInfo,
                    priceGroup:$priceGroup,
                    coupon:null,
                    useCoupon:null,
                    useIntegral:false,
                    offlinePostage:$offlinePostage,
                    payType:'weixin',
                    payMark:'',
                    address:null,
                    orderId:null,
                    seckill_id:$seckill_id,
                    bargain_id:$bargain_id
                },
                computed:{
                    addressDetail:function(){
                        if(this.address == null)
                            return '';
                        else
                            return this.address.province +' '+this.address.city+' '+this.address.district +' '+this.address.detail
                    },
                    totalPrice:function(){
                        var totalPrice = this.priceGroup.totalPrice;
                        if(this.coupon!==null) totalPrice = $h.Sub(totalPrice,this.coupon.coupon_price);
                        if(totalPrice<0) totalPrice = 0;
                        return this.payType == 'offline' && this.offlinePostage == 1 ? totalPrice : $h.Add(totalPrice,this.priceGroup.storePostage);
                    },
                    postageMsg:function(){
                        if(this.payType == 'offline' && this.offlinePostage == 1) return '线下付款免邮费';
                        if(0 == this.priceGroup.storePostage) return '包邮';
                        return this.priceGroup.storePostage;
                    },
                    deduction:function(){
                        if(this.useIntegral && $totalIntegral>0 && $integralRatio>0){
                            var total = $h.Mul($totalIntegral,$integralRatio),totalPrice = this.totalPrice;
                            return totalPrice < total ? totalPrice : total;
                        }else{
                            return 0;
                        }
                    }
                },
                methods:{
                    showAddressList:function(){
                        var that = this;
                        this.$useAddress({
                            onSelect:function(id,address){
                                that.address = address;
                            },
                            checked:that.address != null && that.address.id
                        })
                    },
                    wechatPay:function(config){
                        var that = this;
                        mapleWx($jssdk(),function(){
                           this.chooseWXPay(config,function(){
                               that.successOrder();
                           },{
                               fail:that.extendOrder,
                               cancel:that.extendOrder
                           });
                        });
                    },
                    extendOrder:function(){
                        location.replace($h.U({
                            c:'my',
                            a:'order',
                            p:{uni:this.orderId == null ? $key : this.orderId}
                        }));
                    },
                    successOrder:function(){
                        location.replace($h.U({
                            c:'my',
                            a:'order',
                            p:{uni:this.orderId == null ? $key : this.orderId}
                        }));
                    },
                    goPay:function(){
                        var that = this;
                        $h.load();
                        storeApi.submitOrder($key,{
                            addressId:this.address.id,
                            couponId:this.coupon == null ? '' : this.coupon.id,
                            mark:this.payMark,
                            payType:this.payType,
                            seckill_id:$seckill_id,
                            bargainId:$bargain_id,
                            useIntegral:this.useIntegral
                        },function(res){
                            that.$set(that,'orderId',res.data.data.result.orderId);
                            $h.loadClear();
                            if(res.data.data.status == 'WECHAT_PAY'){
                                that.wechatPay(res.data.data.result.jsConfig);
                            }else if(res.data.data.status == 'SUCCESS'){
                                $h.pushMsgOnce(res.data.msg,function(){
                                    that.successOrder();
                                });
                            }else{
                                $h.pushMsgOnce(res.data.msg,function(){
                                    that.extendOrder();
                                });
                            }
                        });
                    },
                    submit:function(){
                        if(this.address == null)
                            return $h.returnErrorMsg('请选择收货地址!');
                        if(this.payType == 'yue')
                            layer.confirm('确定使用余额支付?',{icon:3},this.goPay);
                        else if(this.payType == 'offline')
                            layer.confirm('确定使用线下付款方式支付?',{icon:3},this.goPay);
                        else
                            this.goPay();
                    },
                    showCoupon:function(){
                        setTimeout(this.useCoupon.active,0);
                    },
                    selectCoupon:function(coupon){
                        this.$set(this,'coupon',coupon);
                    }
                },
                mounted:function(){
                    var that = this;
                    this.useCoupon = this.$useCoupon(this.priceGroup.totalPrice,{
                        onSelect:this.selectCoupon
                    });
                    storeApi.getUserDefaultAddress(function(res){
                        if(res.data.msg == 'ok') that.$set(that,'address',res.data.data);
                    });
                }
            });
        });
    })();
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
