<#assign base=request.contextPath />
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>闲话猫🐱 1.0</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">

    <!-- All css files are included here -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="${base}/css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="${base}/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="${base}/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="${base}/css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="${base}/css/responsive.css">
    <!--layui-->
    <link rel="stylesheet" href="${base}/layui/css/layui.css"



    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <style>
        .book{width:auto;height:auto;max-width:100%;max-height:100%;
            transform:translateX(30px);
        }
        .text-right{
            text-align: center;
        }
    </style>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Body main wrapper start -->
<div class="wrapper">
    <!-- Start of header area -->
    <header>
        <!--头部登录，搜索黑框框-->
        <div class="header-top gray-bg">
            <br>
        </div>
        <div class="header-bottom">
            <div class="container">
                <div class="row header-middle-content">
                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <div class="header-logo text-center">
                            <a href="/index"><img alt="" src="images/new/logo.png"></a>
                        </div>
                    </div>
                    <!--购物车-->
                    <nav class="primary-menu">
                        <!--菜单-->
                        <ul class="header-top-style text-uppercase">
                            <li><a href="/index">首页</a></li>
                            <li><a href="/shop">商店</a></li>
                            <li><a href="/contact">留言</a></li>
                            <#if member_nikname?? && member_nikname != "" >
                                <li>
                                    <a href="javascript:;">欢迎您，会员&nbsp;&nbsp;${member_nikname+"      "?substring(0,6)}...
                                        <div class="ul-style login-register box-shadow white-bg p-30">
                                            <button  value="submit" class="btn-default">账号管理</button>
                                            <button  value="submit" class="btn-default">退出</button>
                                        </div>
                                    </a>
                                </li>
                            <#else>
                                <li><a href="/loginRegister">登录</a></li>
                                <li><a href="/loginRegister">注册</a></li>
                            </#if>
                            <li><a href="/cart">购物车</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- Mobile Menu Start -->
            <div class="mobile-menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="mobile-menu">
                                <nav id="dropdown">
                                    <ul>
                                        <ul class="header-top-style text-uppercase">
                                            <li><a href="/index">首页</a></li>
                                            <li><a href="/shop">商店</a></li>
                                            <li><a href="/contact">留言</a></li>
                                            <#if member_nikname?? && member_nikname != "" >
                                                <li>
                                                    <a href="javascript:;">欢迎您，会员&nbsp;&nbsp;${member_nikname+"      "?substring(0,6)}...
                                                        <div class="ul-style login-register box-shadow white-bg p-30">
                                                            <button  value="submit" class="btn-default">账号管理</button>
                                                            <button  value="submit" class="btn-default">退出</button>
                                                        </div>
                                                    </a>
                                                </li>
                                            <#else>
                                                <li><a href="/loginRegister">登录</a></li>
                                                <li><a href="/loginRegister">注册</a></li>
                                            </#if>
                                            <li><a href="/cart">购物车</a></li>
                                        </ul>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu End -->
    </header>
    <!-- End of header area -->
    <!-- Start Breadcrumbs Area -->
    <div class="container">
        <div class="breadcrumbs-area breadcrumbs-bg ptb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumbs-inner">
                            <h5 class="breadcrumbs-disc m-0">Best Products for you</h5>
                            <h2 class="breadcrumbs-title text-black m-0">立刻下单享优惠 </h2>
                            <ul class="top-page">
                                <li><a href="/index">首页</a></li>
                                <li>></li>
                                <li>购物车</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <!-- End Breadcrumbs Area -->
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper pt-10">
            <!-- Banner Area Start -->
            <div class="banner-two-area">
                <div class="banner-two-bottom">
                    <div class="single-banner-two">
                    </div>
                </div>
                <!-- Banner Area End -->
                <!-- Start Contact Us Top Area -->
                <!--主体信息-->
                <h4 style="margin-bottom: 10px">订单详情 </h4>
                <a>&nbsp;订单号:3180edc7a07f4b04be33bbe4e6b1e9a2</a>
                <table class="table">
                    <thead>
                    <tr class="active">
                        <th colspan="4 ">书籍</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>小计</th>
                    </tr>
                    </thead>
                    <tbody id="bagItems">

                    <#list carts as cart>
                        <tr class="line">

                            <td>
                                <div style="width:120px;height:100px">

                                    <img class="book" src="images/new/${cart.goods.goods_img}">
                                </div>
                            </td>
                            <td>${cart.goods.goods_name}</td>
                            <td>${cart.goods.goods_author}</td>
                            <td>${cart.goods.goods_publish}</td>
                            <td>${cart.goods.goods_price?string('0.00')}</td>
                            <td>${cart.cart_goods_count}</td>
                            <td>${(cart.goods.goods_price*cart.cart_goods_count)?string('0.00')}</td>
                        </tr>
                    </#list>

                    </tbody>
                </table>
            </div>
            <br>
            <br>
            <h4 class="" style="margin-left: 20px;float: right">收货人信息</h4>
            <br>
        <form action="${base}/orderInfo/pay" method="post">
            <div class="row">
                <div class="form-group col-sm-4 col-sm-offset-8">
                    <label for="email" class="control-label">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>收货人姓名
                    </label>
                    <input type="text" required class="form-control" name="name" id="name">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-4 col-sm-offset-8">
                    <label for="name" class="control-label">
                        <span class="glyphicon glyphicon-envelope"></span> 收货人邮箱</label>
                    <input type="email" required class="form-control" name="email" id="email">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-4 col-sm-offset-8">
                    <label for="name" class="control-label">
                        <span class="glyphicon glyphicon-home"></span> 收货人地址</label>
                    <input type="text" required class="form-control" name="address" id="address">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-4 col-sm-offset-8">
                    <label for="name" class="control-label">
                        <span class="glyphicon glyphicon-phone-alt"></span> 收货人电话</label>
                    <input type="text" required class="form-control" name="tele" id="tele">
                </div>
            </div>


            <hr />
            <div class="row text-right col-sm-offset-8" style="float: right;margin-right: 5px">
                <img style="display: inline;width: 50px;height: 50px" alt="支付宝:" src="images/zhifubao.png">
                总金额:&yen; <span class="price">${order.order_total_price?string('0.00')}</span> RMB&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="submit" class="btn btn-danger">支付订单</button>
            </div>
        </form>
        <hr />
    </div>
    <br>
    <br>
    <!-- End page content -->
    <!-- Start footer area -->
    <footer id="footer" class="footer-area">
        <div class="footer-top-area text-center ptb-40">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-top-content">
                            <a href="index.html">
                                <!--<img src="images/footer/logo.png" alt="">-->
                            </a>
                            <ul class="social-icon">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-middle-area footer-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-footer-inner">
                            <h5 class="footer-title text-white">联系方式</h5>
                            <ul class="footer-contact">
                                <li class="contact-icon">
                                    <img alt="" src="images/footer/icon/1.png">
                                </li>
                                <li class="footer-text text-ash">
                                    <p>成都市郫都区</p>
                                    <p>蜀信大道中路</p>
                                </li>
                            </ul>
                            <ul class="footer-contact">
                                <li class="contact-icon">
                                    <img alt="" src="images/footer/icon/2.png">
                                </li>
                                <li class="footer-text text-ash">
                                    <p>Telephone : 13808217512</p>
                                    <p>Telephone : 3212344</p>
                                </li>
                            </ul>
                            <ul class="footer-contact">
                                <li class="contact-icon">
                                    <img alt="" src="images/footer/icon/3.png">
                                </li>
                                <li class="footer-text text-ash">
                                    <p>Email : 2208579592@</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6">
                        <div class="single-footer-inner">
                            <h5 class="footer-title text-white">分类</h5>
                            <ul class="footer-menu">
                                <li><a href="/index">首页</a></li>
                                <li><a href="/shop">商店</a></li>
                                <li><a href="/contact">留言</a></li>
                                <li><a href="/loginRegister">登录/注册</a></li>
                                <li><a href="/cart">购物车</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-9">
                        <h2 class="footer-title">团队</h2>
                        <div class="tweet-list">
                            <ul class="left-tweet">
                                <li class="tweet-inner clearfix">
                                    <div class="tweet-img">
                                        <a href="#">
                                            <img alt="" src="images/footer/tweet/1.jpg">
                                        </a>
                                    </div>
                                    <div class="tweet-text">
                                        <a href="#">杜良硕</a>
                                        <p>前端页面设计</p>
                                    </div>
                                </li>
                                <li class="tweet-inner clearfix">
                                    <div class="tweet-img">
                                        <a href="#">
                                            <img alt="" src="images/footer/tweet/2.jpg">
                                        </a>
                                    </div>
                                    <div class="tweet-text">
                                        <a href="#">苏越飞</a>
                                        <p>Jan 25, 2017</p>
                                    </div>
                                </li>
                            </ul>
                            <ul class="left-tweet">
                                <li class="tweet-inner clearfix">
                                    <div class="tweet-img">
                                        <a href="#">
                                            <img alt="" src="images/footer/tweet/1.jpg">
                                        </a>
                                    </div>
                                    <div class="tweet-text">
                                        <a href="#">陈俊安</a>
                                        <p>Jan 25, 2017</p>
                                    </div>
                                </li>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="copyright">
                            <p>&copy; 2019成都工业学院<a target="_blank" href="http://down.admin5.com/">二十书项目</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End footer area -->
</div>
<!-- Body main wrapper end -->

<!-- Placed js at the end of the document so the pages load faster -->

<!-- jquery latest version -->
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!-- Bootstrap framework js -->
<script src="js/bootstrap.min.js"></script>
<!-- All js plugins included in this file. -->
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
<script src="layui/layui.js"></script>
<script type="text/javascript">
    function submit_pay() {

        var name = $('#name').val();
        var email = $('#email').val();
        var address = $('#address').val();
        var tele = $('#tele').val();

        $.ajax({
            type : 'post',
            url : '${base}/orderInfo/pay',
            data : "name="+name+"&email="+email+"&address="+address+"&tele="+tele,
            dataType : 'json',
            success : function (data) {
                if(data.code == 0){
                    alert("支付成功！")
                }else if(datda.code == 400){
                    alert("支付失败！");
                }
            },
            error : function () {
                alert("未知错误！");
            }
        });
    }
</script>
</body>

</html>
