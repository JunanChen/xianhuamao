<#assign base=request.contextPath />
<!doctype html>
<html class="no-js" lang="zxx" xmlns="http://www.w3.org/1999/html">

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
        <div class="breadcrumbs-area breadcrumbs-bg ptb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumbs-inner">
                            <h5 class="breadcrumbs-disc m-0">Best Products for you</h5>
                            <h2 class="breadcrumbs-title text-black m-0">欢迎向我们留言</h2>
                            <ul class="top-page">
                                <li><a href="/index">首页</a></li>
                                <li>></li>
                                <li>留言</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <!-- End Breadcrumbs Area -->
        <!-- Start page content -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <section id="page-content" class="page-wrapper pt-10">
                        <!-- Banner Area Start -->
                        <div class="banner-two-area">
                            <div class="banner-two-bottom">
                                <div class="single-banner-two">
                            </div>
                        </div>
                        <!-- Start Contact Us Bottom -->
                        <div class="contact-us-bottom">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4 class="text-uppercase mb-40"><strong>欢迎大家提出意见或建议</strong></h4>
                                    </div>
                                    <form action="javascript:;">
                                        <div class="col-sm-6">
                                            <div class="witte-massage">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="shop-select mb-30">
                                                            <label>
                                                                姓名
                                                                <span class="required">*</span>
                                                            </label>
                                                            <input type="text" required id="contact_name" name="name" placeholder="Name">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="shop-select">
                                                            <label>
                                                                邮箱
                                                                <span class="required">*</span>
                                                            </label>
                                                            <input type="email" required id="contact_email" name="email" placeholder="Email">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="shop-select">
                                                            <label>
                                                                电话
                                                                <span class="required">*</span>
                                                            </label>
                                                            <input type="text" required id="contact_tel" name="phone" placeholder="Phone">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-row contact-message">
                                                <label>
                                                    建议/意见
                                                    <span class="required">*</span>
                                                </label>
                                                <textarea required name="message" id="contact_message" placeholder="write something"></textarea>
                                            </div>
                                            <div class="order-button-payment mt-20">
                                                <input type="submit" id="contact_submit" name="submit" value="提交">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                            <br>
                            <br>
                        <!-- End Of Contact Us Bottom -->
                        <!-- Start Brand Area -->
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
                                                        <img class="img1" src="images/new/logo3.png" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
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
    <!-- Google Map js -->
    <!---<script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
          var mapOptions = {
            zoom: 16,
            scrollwheel: false,
            center: new google.maps.LatLng(23.763474, 90.431483)
          };
          var map = new google.maps.Map(document.getElementById('googleMap'),
              mapOptions);
          var marker = new google.maps.Marker({
            position: map.getCenter(),
            animation:google.maps.Animation.BOUNCE,
            icon: 'images/contact/4.png',
            map: map
          });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>--->
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>
    <script src="layui/layui.js"></script>
</body>

</html>
