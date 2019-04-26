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
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!--layui-->
    <link rel="stylesheet" href="${base}/layui/css/layui.css" media="all" />

    <style>

        .glyphicon-book {
            font-size: 9pt;
        }

        .div1 a {
            color: royalblue;
        }

        #forYou img:hover {
            transform: scale(1.2, 1.2);
            transition: transform 0.2s;
        }

        #bookinfo a:hover {
            color: #00C29A;
        }
        #lal a{
            color: black;
        }
        #lal a:hover{
            color: #00C29A;
        }
        #bookinfo a {
            text-decoration: none;
            color: black;
        }

        #bookinfo {
            margin-left: 15px;
            margin-top: 10px;
        }

        #bookinfo div {
            padding-top: 10px
        }

        #bookbuy {
            margin-top: 30px;
        }

        #bookbuy a {
            width: 100px;
        }

        #de a {
            text-decoration: none;
            color: grey;
        }

        #de a:hover {
            opacity: 0.7;
        }
    </style>
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
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
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5 hidden-xs">
                        </div>
                        <div class="col-sm-3 col-xs-6">
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <div class="header-top-right">
                                <span class="mr-20"><a href="javascript:search();" id="btn_search"><img alt="" src="${base}images/header/search-icon.png"></a></span>
                                <span><input type="text" class="pl-10" id="search" placeholder="Search..."></span>
                            </div>
                        </div>
                    </div>
                </div>
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
                                <li><a href="/shop">商店</a>
                                    <div class="ul-style1 login-register1 box-shadow1">
                                        <#list categories as category>
                                            <a href="/shop/${category.category_id}"><button value="submit" class="btn-default">${category.category_name}</button></a>
                                        </#list>
                                    </div>
                                </li>
                                <li><a href="/contact">留言</a></li>
                                <#if member_nikname?? && member_nikname != "" >
                                    <li>
                                        <a href="javascript:;">欢迎您，会员&nbsp;&nbsp;${member_nikname+"      "?substring(0,6)}...
                                            <div class="ul-style1 login-register1 box-shadow1">
                                                <a href="#"><button  value="submit" class="btn-default">账号管理</button></a>
                                                <a href="#"><button  value="submit" class="btn-default">退出</button></a>
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
                        </div>
                    </div>
                </div>
                <!-- Mobile Menu End -->
        </header>
        <!-- End of header area -->
        <!--4个分类小框框 -->
        <div class="breadcrumbs-area breadcrumbs-bg ptb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumbs-inner">
                            <h5 class="breadcrumbs-disc m-0">Best Products for you</h5>
                            <h2 class="breadcrumbs-title text-black m-0">图书详情</h2>
                            <ul class="top-page">
                                <li><a href="/index">首页</a></li>
                                <li></li>
                                <li>详情页</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
        <!-- End Breadcrumbs Area -->
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper pt-10">
            <!-- Banner Area Start -->
            <!--浏览商品-->
            <div id="" class="container" style="margin-top: 30px;">
                <div class="col-lg-4 col-md-4" style="margin-left: -30px;">
                    <div id="" class="col-md-12">
                        <img src="images/new/${goods.goods_img}" style=";border: 1.5px solid rgba(169,169,169,0.01);" />
                    </div>
                </div>
                <div id="" class="col-lg-8 col-md-8" style="margin-left: 30px;">
                    <div id="" class="row">
                        <p style="font-family: 'arial black' ;font-size: 20px;">${goods.goods_name}(${goods.goods_desc})</p>
                        <#--<p style="color: gray;">SBN编号: 9787030455291</p>-->
                    </div>
                    <div id="" class="row" style="background: #F5F5F5;padding: 10px;">
                        <div id="" class="row" style="padding: 5px;">
                            <div id="" class="col-lg-5 col-md-5 col-sm-5">
                                <span style="font-size:14px;">售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价:</span>
                                <span style="color: red;font-size: 12px;">￥</span>
                                <span style="color: red;font-size: 23px;">${goods.goods_price-20}</span>
                            </div>
                            <div id="" class="col-lg-7 col-md-7 col-sm-7">
                                <span style="font-size:14px;tex: center;line-height: 33px;">${goods.goods_like}</span><span style="font-size:14px;line-height: 33px;">人喜欢</span> &nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="glyphicon glyphicon-star" style="font-size: 13px;color: #FEBC05;"></span>
                                <span class="glyphicon glyphicon-star" style="font-size: 13px;color: #FEBC05;"></span>
                                <span class="glyphicon glyphicon-star" style="font-size: 13px;color: #FEBC05;"></span>
                                <span class="glyphicon glyphicon-star" style="font-size: 13px;color: #FEBC05;"></span>
                                <span class="glyphicon glyphicon-star" style="font-size: 13px;color: #FEBC05;"></span>
                            </div>
                        </div>
                        <div id="lal" class="row" style="padding: 5px;">
                            <div id="" class="col-lg-5 col-md-5 col-sm-5">
                                <span style="font-size:14px;">纸质售价:</span>
                                <span style="color: black;font-size: 12px;">￥</span>
                                <span style="font-size: 14px;">${goods.goods_price}</span>
                                <a href="#" style="padding-left: 5px;font-size: 14px;">购买纸书</a>
                            </div>
                        </div>
                    </div>
                    <div id="bookinfo" class="row">
                        <div id="" class="row">
                            <span style="font-size:14px;">作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者:</span>
                            <a style="font-size:14px;">${goods.goods_author}</a>
                        </div>
                        <br>
                        <div id="" class="row">
                            <span style="font-size:14px;">出&nbsp;&nbsp;版&nbsp;&nbsp;社:</span>
                            <a style="font-size:14px;">${goods.goods_publish}</a>
                        </div>
                        <br>
                        <div id="" class="row">
                            <span style="font-size:14px;">出版时间:</span>
                            <span style="font-size:14px;">${goods_publish_time}</span>
                        </div>
                        <br>
                        <div id="" class="row">
                            <span style="font-size:14px;">字&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数:</span>
                            <span style="font-size:14px;">${goods.goods_words}</span>
                        </div>
                        <br>
                        <div id="" class="row">
                            <span style="font-size:14px;">所属分类:</span>
                            <a style="font-size:14px;">${goods.category.category_name}</a>
                        </div>
                        <br>
                    </div>
                    <div id="bookbuy" class="row">
                        <div id="" class="col-lg-2 col-md-2 col-sm-2">
                            <a href="javascript:addCart(${goods.goods_id});" class="btn btn-success">加入购物车</a>
                        </div>
                        <div id="" class="col-lg-2 col-md-2 col-sm-2">
                            <a href="#" class="btn btn-danger">立即购买</a>
                        </div>
                        <div id="" class="col-lg-2 col-md-2 col-sm-2">
                            <a href="#content" class="btn btn-default" disabled="disabled">试&nbsp;&nbsp;读</a>
                        </div>
                    </div>
                    <div id="" style="padding-top: 10px;">
                        <hr style="border:1px dotted;" />
                    </div>
                    </div>
                </div>

            </div>

        <!-- End page content -->
            <div class="brand-area pb-90">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-title text-center mb-35">
                                <h2 class="text-uppercase"><strong>我们的其它品牌</strong></h2>
                                <p class="text-defualt">BRAND</p>
                                <img alt="" src="images/section-border.png">
                            </div>
                            <div class="brand-carousel">
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo1.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo2.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo3.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo4.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo5.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo1.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo2.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single-brand text-center">
                                        <a href="#">
                                            <img src="images/new/logo3.png" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>
    <!--layui-->
    <script type="text/javascript" src="${base}/layui/layui.js"></script>

</body>

</html>
