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
    <!-- User style -->
    <#--<link rel="stylesheet" href="css/custom.css">-->
    <!--layui-->
    <link rel="stylesheet" href="${base}/layui/css/layui.css" media="all" />


    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <style>

        .table td{
            vertical-align:middle !important;
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
                                <ul class="header-top-style text-uppercase">
                                    <li><a href="/index">首页</a></li>
                                    <li><a href="/shop">商店</a>
                                    </li>
                                    <li><a href="/contact">留言</a></li>
                                    <li><a href="/cart">购物车</a></li>
                                </ul>
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
        <!-- Start Breadcrumbs Area -->
        <div class="breadcrumbs-area breadcrumbs-bg ptb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumbs-inner">
                            <h5 class="breadcrumbs-disc m-0">Best Products for you</h5>
                            <h2 class="breadcrumbs-title text-black m-0">加入我们吧 </h2>
                            <ul class="top-page">
                                <li><a href="/index">首页</a></li>
                                <li>></li>
                                <li>登录/注册</li>
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
            <div class="banner-two-area">
                <div class="banner-two-bottom">
                    </div>
            </div>
            <!-- Banner Area End -->
            <!-- Start Register Area -->
            <div class="register-area pt-90">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="registered-customers">
                                <h4 class="text-uppercase mb-20"><strong>登录</strong></h4>
                                <form action="javascript:;">
                                    <div class="login-account p-30 box-shadow">
                                        <p>如果你已经是会员了，请登录</p>
                                        <br>
                                        <input type="text" required id="loginUsername" placeholder="username" name="name"value="junan">
                                        <input type="password" required id="loginPassword" placeholder="Password" name="password" value="123456">
                                        <p><small><a href="#">忘记密码？</a></small></p>
                                        <button type="submit" id="login" class="cart-button text-uppercase">登录</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="registered-customers new-customers">
                                <div class="section-title text-uppercase mb-40">
                                    <h4><strong>新会员注册</strong></h4>
                                </div>
                                <form action="javascript:;">
                                    <div class="login-account p-30 box-shadow">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <input type="text" required id="register_name" placeholder="姓名">
                                            </div>
                                            <div class="col-sm-6">
                                                <select class="custom-select" id="register_city">
                                                    <option value="北京">北京</option>
                                                    <option value="上海">上海</option>
                                                    <option value="成都">成都</option>
                                                    <option value="其他">其他</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-6">
                                                    <input required type="tel" id="register_phone" placeholder="电话">
                                            </div>
                                            <div class="col-sm-6" style="margin-bottom: 15px">
                                                <input type="text" value="" required id="identifyCode_input" placeholder="验证码">
                                                <img style="float: right" id="identifyCode" src="/login/getIdentifyCode">
                                            </div>
                                        </div>
                                        <input type="text" required id="register_nikname" placeholder="昵称（登录时的用户名）">
                                        <input type="email" required id="register_email"  placeholder="邮箱">
                                        <input type="password" required id="register_pwd1" placeholder="密码">
                                        <input type="password" required id="register_pwd2" placeholder="重复输入密码">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button value="register" id="register" type="submit" class="cart-button text-uppercase mt-20">注册</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><><br><br>
            <!-- End of Register Area -->
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
                                            <img src="images/new/logo3.png" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Brand Area -->
        </section>
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
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>
    <!--layui-->
    <script type="text/javascript" src="${base}/layui/layui.js"></script>

</body>

</html>
