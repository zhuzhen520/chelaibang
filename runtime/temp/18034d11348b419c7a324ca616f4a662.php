<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:69:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/my/order_list.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/container.html";i:1552637812;s:67:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/head.html";i:1552637812;s:68:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/style.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/requirejs.html";i:1552637812;s:67:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/foot.html";i:1552637812;s:72:"/www2/wwwroot/Zhu/CRMEB/application/wap/view/first/public/right_nav.html";i:1552637812;}*/ ?>
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
    <title>订单列表</title>
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

<style>
    .user-order-list .menu .item span{padding: 0;}
</style>
<div class="user-order-list" id="order-list">
    <section>
        <form action="" method="post" @submit.prevent="searchOrder">
            <div class="search-wrapper flex" ref="head">
                <input type="search" v-model="search" placeholder="输入订单号"/>
                <button type="button" @click="searchOrder"><i class="iconfont icon-icon"></i></button>
            </div>
            <div class="menu flex" ref="nav">
                <div class="item" :class="{on:type === ''}" @click="changeType('')"><span>全部</span></div>
                <div class="item" :class="{on:type === 0}" @click="changeType(0)"><span>待付款</span></div>
                <div class="item" :class="{on:type == 1}" @click="changeType(1)"><span>待发货</span></div>
                <div class="item" :class="{on:type == 2}" @click="changeType(2)"><span>待收货</span></div>
                <div class="item" :class="{on:type == 3}" @click="changeType(3)"><span>待评价</span></div>
            </div>
            <div class="user-order-con" ref="bsDom" style="-webkit-overflow-scrolling : touch;">
                <div>
                <div class="item-block product-info" v-for="item in group.list" v-cloak="">
                    <div class="con-tit" @click="toOrderUrl(item)"><span class="count"><span v-if="item.combination_id != 0" style="background-color: #f48900;color: #fff;padding: .02rem .05rem;border-radius: 3px;font-size: 0.18rem;margin-right: .1rem;">拼团</span>订单: {{item.order_id}}</span> <span class="status-txt off fr" v-text="item._status._title"></span></div>
                    <div class="delivery-con" @click="toOrderUrl(item)">
                        <ul>
                            <li v-for="cart in item.cartInfo">
                                <a class="flex" href="javascript:void(0);">
                                    <div class="picture"><img @click.stop="toProductUrl(cart.productInfo.id)" :src="cart.productInfo.image" /></div>
                                    <div class="info-centent flex">
                                        <p class="name" v-text="cart.productInfo.store_name"></p>
                                        <p class="description" v-text="attrText(cart.productInfo)"></p>
                                        <p class="count"><span>￥{{cart.truePrice}}</span> X{{cart.cart_num}}</p>
                                    </div>
                                </a>
                                <div class="assess status-on" v-if="item._status._type == 3 && cart.is_reply == false">
                                    <a :href="'/wap/my/order_reply/unique/'+cart.unique">评价</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="all-price">
                        <div class="infos">
                            <p v-if="item.total_postage > 0">运费 <span class="fr">￥{{item.total_postage}}</span></p>
                            <p>商品总价 <span class="fr">￥{{item.total_price}}</span></p>
                            <p class="deb" v-show="item.coupon_price > 0">优惠 <span class="fr">-￥{{item.coupon_price}}</span></p>
                            <p class="deb" v-show="item.deduction_price > 0">积分抵扣 <span class="fr">-￥{{item.deduction_price}}</span></p>
                        </div>
                        <div class="all-count">实付款 <span class="fr">￥{{item.pay_price}}</span></div>
                        <div class="order-con-btn">
                            <a :href="'/wap/my/order_pink/id/'+item.pink_id" v-if="item.pink_id > 0"><span class="delete-order">查看拼团</span></a>
                            <a class="payment" v-if="item._status._type == 0" href="javascript:void(0);"  @click.prevent="confirm(item)">立即付款</a>
                            <a :href="'/wap/my/express/uni/'+item.order_id" v-if="item._status._type == 2 && item.delivery_type == 'express'"><span class="delete-order">查询快递</span></a>
                            <a class="payment" @click.prevent="userTake(item)" v-if="item._status._type == 2" href="javascript:void(0);">确认收货</a>
                            <a class="payment" @click.prevent="goDetails(item)" v-if="item._status._type == 3" href="javascript:void(0);">再来一单</a>
                        </div>

                    </div>
                </div>
                    <p class="loading-line" v-show="loading == true"><i></i><span>正在加载中</span><i></i></p>
                    <p class="loading-line" v-show="loading == false && group.loaded == false" v-cloak=""><i></i><span>加载更多</span><i></i></p>
                    <p class="loading-line" v-show="loading == false && group.loaded == true" v-cloak=""><i></i><span>没有更多了</span><i></i></p>
                </div>
            </div>
        </form>
    </section>
</div>
<script>
    (function(){
        require(['vue','axios','better-scroll','helper','store','layer'],function(Vue,axios,BScroll,$h,storeApi,layer){
            new Vue({
                el:"#order-list",
                data:{
                    group:{
                        first:0,
                        limit:8,
                        list:[],
                        loaded:false,
                        top:0
                    },
                    loading: false,
                    scroll:null,
                    type:null,
                    search:''
                },
                watch:{
                    type:function (v,o) {
                        if(v === null) return;
                        this.search = '';
                        this.group = {
                            first:0,
                            limit:8,
                            list:[],
                            loaded:false,
                            top:0
                        };
                        this.loading = false;
                        this.getList();
                        this.$nextTick(function(){
                            this.scroll.scrollTo(0,0);
                        });
                    }
                },
                methods:{
                    goDetails:function (item) {
                        storeApi.orderDetails(item.order_id,function(res){
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
                    confirm:function(item){
                        var that = this;
                        if(this.payType == 'yue')
                            layer.confirm('确定使用余额支付?',{icon:3},function () {
                                that.goPay(item);
                            });
                        else if(this.payType == 'offline')
                            layer.confirm('确定使用线下付款方式支付?',{icon:3},function () {
                                that.goPay(item);
                            });
                        else
                            that.goPay(item);
                    },
                    goPay:function(item){
                        $h.loadFFF();
                        storeApi.payOrder(item.order_id,function(res){
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
                    userTake:function(item){
                        var that = this;
                        layer.confirm('确定立即收货?',{icon:3},function(index){
                            layer.close(index);
                            $h.loadFFF();
                            storeApi.userTakeOrder(item.order_id,function(){
                                $h.loadClear();
                                $h.pushMsg('收货成功',function(){
                                    location.reload(true);
                                });
                            },function(e){ $h.loadClear(); return true; });
                        })
                    },
                    searchOrder:function(){
                        if(this.search == '') return ;
                        this.group = {
                            first:0,
                            limit:8,
                            list:[],
                            loaded:false,
                            top:0
                        };
                        this.loading = false;
                        this.type = null;
                        this.getList();
                        this.$nextTick(function(){
                            this.scroll.scrollTo(0,0);
                        });
                    },
                    changeType:function(type){
                        if(this.loading) return ;
                        this.type = type;
                    },
                    attrText:function (product){
                        return product.attrInfo == undefined ? '' : product.attrInfo.suk;
                    },
                    toProductUrl:function(id){
                        location.href = $h.U({c:'store',a:'detail',p:{id:id}});
                    },
                    toOrderUrl:function(order){
                        location.href = $h.U({c:'my',a:'order',p:{uni:order.order_id}});
                    },
                    getList:function(){
                        if(this.loading) return ;
                        this.getOrderList();
                    },
                    getOrderList:function(){
                        var that = this,type = 'group',group = that.group;
                        if(group.loaded) return ;
                        this.loading = true;
                        storeApi.getUserOrderList({
                            type:this.type,
                            first:group.first,
                            limit:group.limit,
                            search:this.search
                        },function(res){
                            var list = res.data.data;
                            group.loaded = list.length < group.limit;
                            group.first += list.length;
                            group.list = group.list.concat(list);
                            that.$set(that,type,group);
                            that.loading = false;
                            that.$nextTick(function(){
                                if(list.length) that.scroll.refresh();
                                that.scroll.finishPullUp();
                            });
                        },function(){that.loading = false});
                    },
                    bScrollInit:function () {
                        var that = this;
                        this.$refs.bsDom.style.height = (
                            document.documentElement.clientHeight -
                            this.$refs.head.offsetHeight -
                            this.$refs.nav.offsetHeight)+'px';
                        this.$refs.bsDom.style.overflow = 'hidden';

                        this.scroll = new BScroll(this.$refs.bsDom,{click:true,probeType:1,cancelable:false,deceleration:0.005,snapThreshold:0.01});
                        this.scroll.on('pullingUp',function(){
                            that.loading == false && that.getList();
                        })
                    },
                    getType:function(){
                        if(location.hash == '')
                            this.type = '';
                        else if(location.hash == '#0')
                            this.type = 0;
                        else
                            this.type = location.hash.split('#')[1];
                    }
                },
                mounted:function(){
                    this.bScrollInit();
                    this.getType();
                }
            })
        })
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
