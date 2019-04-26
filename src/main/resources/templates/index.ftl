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

 <!--所有的css-->
    <!-- 引导工具-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- 插件 -->
    <link rel="stylesheet" href="css/core.css">
    <!-- 首行黑色导航栏-->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- 正文样式 -->
    <link rel="stylesheet" href="css/style.css">
    <!-- 相应css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- 用户style -->
    <#--<link rel="stylesheet" href="css/custom.css">-->
    <!--layui-->
    <link rel="stylesheet" href="${base}/layui/css/layui.css"


    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start of 头部 -->
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
                        <div class="col-md-2 col-md-offset-5 col-sm-4 col-xs-12">
                            <div class="header-logo text-center col-md-2">
                                <a href="/"><img alt="" src="images/new/logo.png"></a>
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
                                        <li><a href="商店.html">商店
                                                <div class="ul-style1 login-register1 box-shadow1 white-bg p-30">
                                                    <button  value="submit" class="btn-default">公共课</button>
                                                    <button  value="submit" class="btn-default">工学类</button>
                                                    <button  value="submit" class="btn-default">理学类</button>
                                                    <button  value="submit" class="btn-default">计算机类</button>
                                                    <button  value="submit" class="btn-default">经济管理</button>
                                                </div>
                                            </a>
                                        </li>
                                        <li><a href="/contact">留言</a></li>
                                        <#if member_nikname?? && member_nikname != "" >
                                            <li><a href="javascript:;">欢迎您，会员&nbsp;&nbsp;${member_nikname+"      "?substring(0,6)}...</a></li>
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
        <!-- Start of slider area -->
        <section class="slider-container">
            <!-- Slider Image -->
            <div id="mainSlider" class="nivoSlider slider-image">
                <img src="images/new/nav1.png" alt="main slider" title="#htmlcaption1">
                <img src="images/new/nav2.png" alt="main slider" title="#htmlcaption2">
            </div>
            <!-- Slider Caption 1 -->
            <div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
                <div class="slider-progress"></div> 
                <div class="container slider-height">
                    <div class="row slider-height">
                        <div class="col-xs-offset-5 col-xs-7 slider-height">
                            <div class="slide-text">
                                <div class="middle-text">
                                    <div class="cap-shop wow  fadeInDown" data-wow-duration="0.5s" data-wow-delay="0.5s">
                                        <a href="/shop">Shop now</a>
                                    </div>  
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>                      
            </div>
            <!-- Slider Caption 2 -->
            <div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
                <div class="slider-progress"></div> 
                <div class="container slider-height">
                    <div class="row slider-height">
                        <div class="col-xs-offset-5 col-xs-7 slider-height">
                            <div class="slide-text">
                                <div class="middle-text">
                                    <div class="cap-shop wow fadeInDown" data-wow-duration="0.5s" data-wow-delay="0.5s">
                                        <a href="/shop">Shop now</a>
                                    </div>  
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End of slider area -->
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper">  
            <!-- Start About us Area -->
            <div class="why-us section-padding text-center">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4">
                            <div class="why-us-inner">
                                <div class="why-us-icon mb-20">
                                    <img src="images/why-us/1.png" alt="">
                                </div>
                                <h5 class="text-uppercase m-0 text-defualt"><strong>免费包装</strong></h5>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="why-us-inner">
                                <div class="why-us-icon mb-20">
                                    <img src="images/why-us/2.png" alt="">
                                </div>
                                <h5 class="text-uppercase m-0 text-defualt"><strong>甄选书籍</strong></h5>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="why-us-inner">
                                <div class="why-us-icon mb-20">
                                    <img src="images/why-us/3.png" alt="">
                                </div>
                                <h5 class="text-uppercase m-0 text-defualt"><strong>七天退款</strong></h5>
                            </div>
                        </div>
                        <div class="col-md-3 hidden-sm">
                            <div class="why-us-inner m-0">
                                <div class="why-us-icon mb-20">
                                    <img src="images/why-us/4.png" alt="">
                                </div>
                                <h5 class="text-uppercase m-0 text-defualt"><strong>最棒礼物</strong></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End About us Area -->
            <!-- Start Banner Area -->
            <div class="banner-area">
                <div class="container">
                    <div class="row rp-style">
                        <div class="col-sm-4 cp-style">
                            <div class="banner-inner">
                                <a class="test-popup-link banner-img" href="images/new/banner3.png">
                                    <img src="images/new/banner3.png" alt="">
                                </a>
                                <div class="banner-text banner-text-1">
                                    <a href="#" class="banner-heading text-uppercase text-right">物理</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8 cp-style">
                            <div class="row rp-style">
                                <div class="col-sm-8 cp-style">
                                    <div class="banner-inner">
                                        <a class="test-popup-link banner-img" href="images/new/banner2.png">
                                            <img src="images/new/banner2.png" alt="">
                                        </a>
                                        <div class="banner-text banner-text-2 text-center">
                                            <a href="#" class="banner-heading text-uppercase text-right">数学</a>
                                        </div>
                                    </div>                                      
                                </div>
                                <div class="col-sm-4 cp-style">
                                    <div class="banner-inner">
                                        <a class="test-popup-link banner-img" href="images/new/banner1.png">
                                            <img src="images/new/banner1.png" alt="">
                                        </a>
                                        <div class="banner-text banner-text-3">
                                            <a href="#" class="banner-heading text-uppercase text-right">英语</a>
                                        </div>
                                    </div>                                      
                                </div>
                            </div>
                            <div class="row rp-style mt-8">
                                <div class="col-sm-4 cp-style">
                                    <div class="banner-inner">
                                        <a class="test-popup-link banner-img" href="images/new/banner5.png">
                                            <img src="images/new/banner5.png" alt="">
                                        </a>
                                        <div class="banner-text banner-text-4 text-right">
                                            <a href="#" class="banner-heading text-uppercase text-right">计算机</a>
                                        </div>
                                    </div>                                      
                                </div>
                                <div class="col-sm-8 cp-style">
                                    <div class="banner-inner m-0">
                                        <a class="test-popup-link banner-img" href="images/new/banner4.png">
                                            <img src="images/new/banner4.png" alt="">
                                        </a>
                                        <div class="banner-text banner-text-5 text-center">
                                            <a href="#" class="banner-heading text-uppercase text-right">化学</a>
                                        </div>
                                    </div>                                      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Banner Area -->-->
            <!-- Start New Arrival Area  -->
            <div class="new-arrival-area">
                <div class="container">
                    <div class="row rp-style-2">
                        <div class="col-md-12">
                            <div class="section-title text-center mb-35">
                                <h2 class="text-uppercase"><strong>商品预览</strong></h2>
                            </div>
                        </div>
                    </div>
                    <div class="row rp-style-2">
                        <div class="featured-carousel indicator-style">
                           <#list goods as g>
                                <div class="product-container cp-style-2">
                                    <div class="product-inner">
                                        <a href="/bookinfo?goods_id=${g.goods1.goods_id}">
                                            <div class="product-img b-img">
                                                <img src="images/new/${g.goods1.goods_img}" alt="">
                                            </div>
                                        </a>
                                        <span class="product-tag text-uppercase orang-bg">-20%</span>
                                        <ul class="quick-veiw text-center">
                                            <li><a href="javascript:addCart(${g.goods1.goods_id});"><i class="fa fa-shopping-cart"></i></a></li>
                                            <li><a href="/bookinfo?goods_id=${g.goods1.goods_id}"><i class="fa fa-eye"></i></a></li>
                                            <#--<li><a href="#"><i class="fa fa-refresh"></i></a></li>-->
                                            <li><a href="javascript:addLike(${g.goods1.goods_id});"><i class="fa fa-heart"></i></a></li>
                                        </ul>
                                        <div class="product-text">
                                            <ul class="pull-left list-inline ratings">
                                                <#list 1..g.goods1.goods_star as t>
                                                    <li><i class="rated fa fa-star"></i></li>
                                                </#list>
                                            </ul>
                                            <ul class="pricing list-inline pull-right">
                                                <li class="text-right c-price">${g.goods1.goods_price-20}</li>
                                                <li class="text-right p-price">${g.goods1.goods_price}</li>
                                            </ul>
                                            <div class="clear"></div>
                                            <h6 class="product-name">
                                                <a href="javascript:;" title="${g.goods1.goods_author}">${g.goods1.goods_author}</a>
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="product-inner mt-35">
                                        <a href="/bookinfo?goods_id=${g.goods2.goods_id}">
                                            <div class="product-img b-img">
                                                <img src="images/new/${g.goods2.goods_img}" alt="">
                                            </div>
                                        </a>
                                        <ul class="quick-veiw text-center">
                                            <li><a href="javascript:addCart(${g.goods2.goods_id});"><i class="fa fa-shopping-cart"></i></a></li>
                                            <li><a href="/bookinfo?goods_id=${g.goods2.goods_id}"><i class="fa fa-eye"></i></a></li>
                                            <#--<li><a href="#"><i class="fa fa-refresh"></i></a></li>-->
                                            <li><a href="javascript:addLike(${g.goods2.goods_id});"><i class="fa fa-heart"></i></a></li>
                                        </ul>
                                        <div class="product-text">
                                            <ul class="pull-left list-inline ratings">
                                                <#list 1..g.goods2.goods_star as t>
                                                    <li><i class="rated fa fa-star"></i></li>
                                                </#list>
                                            </ul>
                                            <ul class="pricing list-inline pull-right">
                                                <li class="text-right c-price">${g.goods2.goods_price-20}</li>
                                                <li class="text-right p-price">${g.goods2.goods_price}</li>
                                            </ul>
                                            <div class="clear"></div>
                                            <h6 class="product-name">
                                                <a href="javascript:;" title="${g.goods2.goods_author}">${g.goods2.goods_author}</a>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                           </#list>
                        </div>
                    </div>
                </div>
            </div>
            <br><br>
            <!-- End Of New Arrival Area  -->
            <div class="subscribe-area text-center section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="text-white">
                                <h1>填写你的意见或建议</h1>
                                <p class="mb-40">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>   
                            </div>
                            <form class="subscribe-box" action="#">
                                <div class="subscribe-box">
                                    <input type="email" required="" placeholder="Enter your Email here...">
                                    <button type="submit" id="search-letter-btn" class="btn-default btn-search">转到</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Of Subscribe Area -->
            <!-- Start Blog Area -->
            <div class="blog-testimonial-area section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="section-title text-center mb-35">
                                <h2 class="text-uppercase"><strong>书籍介绍</strong></h2>
                                <img src="images/section-border.png" alt="">
                            </div>
                            <div class="blog-carousel indicator-style-two">
                                <div class="single-blog blog-bg">
                                    <div class="blog-img b-img">
                                        <a href="">
                                            <img alt="" src="images/new/blog1.png">
                                        </a>
                                    </div>
                                    <div class="blog-text p-20">
                                        <h4 class="text-uppercase text-defualt">
                                            <a href="">三体</a>
                                        </h4>
                                        <ul class="blog-list">
                                            <li><a href="#">作者</a></li>
                                            <li><a href="#">刘慈欣</a></li>
                                        </ul>
                                        <p>讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过刘宇昆翻译后获得了第73届雨果奖最佳长篇小说奖</p>
                                        <ul class="blog-list bottom">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-comments"></i>
                                                    12 Comments
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="text-defualt">
                                                    <i class="fa fa-heart"></i>
                                                    50 Likes
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="single-blog blog-bg">
                                    <div class="blog-img b-img">
                                        <a href="">
                                            <img alt="" src="images/new/blog2.png">
                                        </a>
                                    </div>
                                    <div class="blog-text p-20">
                                        <h4 class="text-uppercase text-defualt">
                                            <a href="">黄金时代</a>
                                        </h4>
                                        <ul class="blog-list">
                                            <li><a href="#">作者</a></li>
                                            <li><a href="#">王小波</a></li>
                                        </ul>
                                        <p>《黄金时代》是作家王小波创作的中篇小说，是作品系列之“时代三部曲”中的一部作品“二十世纪中文小说一百强”。</p>
                                        <ul class="blog-list bottom">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-comments"></i>
                                                    12 Comments
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="text-defualt">
                                                    <i class="fa fa-heart"></i>
                                                    50 Likes
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="single-blog blog-bg">
                                    <div class="blog-img b-img">
                                        <a href="">
                                            <img alt="" src="images/new/blog2.png">
                                        </a>
                                    </div>
                                    <div class="blog-text p-20">
                                        <h4 class="text-uppercase text-defualt">
                                            <a href="">三体</a>
                                        </h4>
                                        <ul class="blog-list">
                                            <li><a href="#">作者</a></li>
                                            <li><a href="#">刘慈欣</a></li>
                                        </ul>
                                        <p>讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过刘宇昆翻译后获得了第73届雨果奖最佳长篇小说奖</p>
                                        <ul class="blog-list bottom">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-comments"></i>
                                                    12 Comments
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="text-defualt">
                                                    <i class="fa fa-heart"></i>
                                                    50 Likes
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="single-blog blog-bg">
                                    <div class="blog-img b-img">
                                        <a href="">
                                            <img alt="" src="images/new/blog1.png">
                                        </a>
                                    </div>
                                    <div class="blog-text p-20">
                                        <h4 class="text-uppercase text-defualt">
                                            <a href="">黄金时代</a>
                                        </h4>
                                        <ul class="blog-list">
                                            <li><a href="#">作者</a></li>
                                            <li><a href="#">王小波</a></li>
                                        </ul>
                                        <p>《黄金时代》是作家王小波创作的中篇小说，是作品系列之“时代三部曲”中的一部作品“二十世纪中文小说一百强”。</p>
                                        <ul class="blog-list bottom">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-comments"></i>
                                                    12 Comments
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="text-defualt">
                                                    <i class="fa fa-heart"></i>
                                                    50 Likes
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="section-title text-center mb-35">
                                <h2 class="text-uppercase"><strong>客户评价</strong></h2>
                                <img src="images/section-border.png" alt="">
                            </div>
                            <div class="testimonial-list indicator-style">
                                <div class="testimonial-inner">
                                    <div class="single-testimonial blog-bg mb-20">
                                        <div class="testimonial-img">
                                            <a href="#">
                                                <img src="images/client/1.png" alt="">
                                            </a>
                                        </div>
                                        <div class="testimonial-content">
                                            <h5 class="text-uppercase text-defualt">t***1（匿名）</h5>
                                            <p class="m-0">大学时候看的电子书，现在买来送给男朋友的，希望他也会喜欢。书应该是正品，质量还可以的，但我只有包装好以后拍的照片了。。 </p>
                                        </div>
                                    </div>
                                    <div class="single-testimonial blog-bg">
                                        <div class="testimonial-img">
                                            <a href="#">
                                                <img src="images/client/2.png" alt="">
                                            </a>
                                        </div>
                                        <div class="testimonial-content">
                                            <h5 class="text-uppercase text-defualt">我***室（匿名）</h5>
                                            <p class="m-0">很满意，很清楚，是不是正版不知道，总归价格便宜，看着不伤眼，也没有错别字。 </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial-inner">
                                    <div class="single-testimonial blog-bg mb-20">
                                        <div class="testimonial-img">
                                            <a href="#">
                                                <img src="images/client/1.png" alt="">
                                            </a>
                                        </div>
                                        <div class="testimonial-content">
                                            <h5 class="text-uppercase text-defualt">t***1（匿名）</h5>
                                            <p class="m-0">大学时候看的电子书，现在买来送给男朋友的，希望他也会喜欢。书应该是正品，质量还可以的，但我只有包装好以后拍的照片了。。 </p>
                                        </div>
                                    </div>
                                    <div class="single-testimonial blog-bg">
                                        <div class="testimonial-img">
                                            <a href="#">
                                                <img src="images/client/2.png" alt="">
                                            </a>
                                        </div>
                                        <div class="testimonial-content">
                                            <h5 class="text-uppercase text-defualt">我***室（匿名）</h5>
                                            <p class="m-0">很满意，很清楚，是不是正版不知道，总归价格便宜，看着不伤眼，也没有错别字。 </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Blog Area -->
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
        <!-- 底部-->
        <footer id="footer" class="footer-area">
            <div class="footer-top-area text-center ptb-40">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="footer-top-content">
                                <a href="index.ftl">
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
    <script src="layui/layui.js"></script>

</body>

</html>
