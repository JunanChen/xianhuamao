<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="en">
<head>
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
        <!-- User style -->
        <#--<link rel="stylesheet" href="css/custom.css">-->




        <!-- Modernizr JS -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <style>
            body {
                margin-top: 20px;
                margin: 0 auto;
            }

            font {
                color: #666;
                font-size: 22px;
                font-weight: normal;
                padding-right: 17px;
            }
            ol li{
                margin-top: 10px;
                margin-bottom: 10px;
            }
            .success{
               color:#CD6289;
            }
            .btn{
                color:#CD6289;
            }
            .btn:hover{
                color: #c6c7cd;
            }
            button{
                background-color: rgba(63, 63, 63, 0.05);
            }

        </style>
    </head>
</head>
<body>
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
                        <a href="/index"><img alt="" src="${base}/images/new/logo.png"></a>
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
<!-- Start Breadcrumbs Area -->
<div class="breadcrumbs-area breadcrumbs-bg ptb-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-inner">
                    <h5 class="breadcrumbs-disc m-0">Best Products for you</h5>
                    <h2 class="breadcrumbs-title text-black m-0">支付结果</h2>
                    <ul class="top-page">
                        <li><a href="javascript:;">商店/详情页</a></li>
                        <li>></li>
                        <li>支付结果</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs Area -->
<div class="container" style="height: 650px;">
    <div class="row text-center" style="margin-top: 50px;">
        <h1 class="success"> 付款成功!</h1>
    </div>
    <hr />

    <div class="row">
        <p class="lead">支付信息已发送至邮箱请尽快去邮箱收取,然后就能在知识的海洋中遨游了.(*^__^*).</p>
        <ul>
            <li><a href="https://mail.163.com ">网易163邮箱</a></li>
            <li><a href="https://mail.126.com ">网易126邮箱</a></li>
            <li><a href="https://www.yeah.net/">网易yeah.net邮箱</a></li>
            <li><a href="https://mail.sohu.com/fe/">搜狐sohu邮箱</a></li>
            <li><a href="https://mail.qq.com/">qq邮箱</a></li>
        </ul>
    </div>
    <hr />
    <div class="row">
        <h4>还没有收到邮件?</h4>
        <ol>
            <li>稍等片刻,从新检查你的邮箱(由于网络延迟,请耐心等待1-3分钟)</li>
            <li>您可以尝试在广告邮件中查找</li>
            <li>也可以选则&ensp;&ensp;&ensp;&ensp;<button class="btn">重新发送邮件</button></li>
        </ol>
    </div>
</div>
<!-- End Brand Area -->
<!-- End page content -->
<!-- Start footer area -->
<footer id="footer" class="footer-area">
    <div class="footer-top-area text-center ptb-40">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-top-content">
                        <a href="/index">
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
                                <img alt="" src="${base}/images/footer/icon/1.png">
                            </li>
                            <li class="footer-text text-ash">
                                <p>成都市郫都区</p>
                                <p>蜀信大道中路</p>
                            </li>
                        </ul>
                        <ul class="footer-contact">
                            <li class="contact-icon">
                                <img alt="" src="${base}/images/footer/icon/2.png">
                            </li>
                            <li class="footer-text text-ash">
                                <p>Telephone : 13808217512</p>
                                <p>Telephone : 3212344</p>
                            </li>
                        </ul>
                        <ul class="footer-contact">
                            <li class="contact-icon">
                                <img alt="" src="${base}/images/footer/icon/3.png">
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
                                        <img alt="" src="${base}/images/footer/tweet/1.jpg">
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
                                        <img alt="" src="${base}/images/footer/tweet/2.jpg">
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
                                        <img alt="" src="${base}/images/footer/tweet/1.jpg">
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
</body>
</html>