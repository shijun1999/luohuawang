<%@ page contentType="text/html; charset=UTF-8" %>

<div class="td-header-wrap td-header-style-1">

    <div class="td-header-top-menu-full">
        <div class="td-container td-header-row td-header-top-menu">
            <div class="top-bar-style-2">
                <div class="td-header-sp-top-menu">
                    <div class="td_data_time">星期三, 十一月 9日, 2016.</div>
                    <div class="menu-top-container">
                        <ul id="menu-td-demo-top-menu" class="top-header-menu">
                            <li id="menu-item-33"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-first td-menu-item td-normal-menu menu-item-33">
                                <a href="http://www.ladichan.com/?page_id=30">联系我们</a></li>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#loginFormModaldialog">
                                Log In / Sign Up
                            </button>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="td-banner-wrap-full td-logo-wrap-full">
        <div class="td-container td-header-row td-header-header">
            <div class="td-header-sp-logo">
                <a href="http://www.ladichan.com/">
                    <img class="td-retina-data"
                         src="/images/dwgy_logo.png" alt=""/>
                </a>
            </div>
            <div class="td-header-sp-recs">
                <div class="td-header-rec-wrap">

                    <!-- A generated by theme -->

                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>


                    <!-- end A -->


                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-kootour nomargin">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#navbar-kootour-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<a class="navbar-brand navbar-brand-img" href="index.html">
                    <img  alt="Brand" src="/images/icons/logo.svg" />
                </a>  -->
                <p class="navbar-text kootour-link">
                    <a href="#">TAOFUN</a>
                </p>
            </div>

            <div class="collapse navbar-collapse" id="navbar-kootour-collapse">
                <ul class="nav navbar-nav">
                    <li><a class="is-active" href="main">首页</a></li>
                    <li><a href="/vancities">热门城市</a></li>
                    <li><a href="/developments">楼花转让</a></li>
                    <li><a href="/buildings">房产分析</a></li>
                    <li><a href="/agents">购房指南</a></li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Messages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="morgagecalculate">房屋贷款计算器</a></li>
                            <li><a href="realestateterm">地产词典</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Trash</a></li>
                        </ul>
                    </li>
                    <li><a class="" href="/list">后台管理</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

    <div class="modal modal--rew fade registrationform modalform" id="loginFormModaldialog" tabindex="-1" role="dialog"
         aria-labelledby="myLargeModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="col-lg-12 col-md-112 col-sm-12 col-xs-12">
                    <section class="section">
                        <div class="modal-header">
                            <button type="button" class="close" id="closeModal" data-dismiss="modal" aria-hidden="true">
                                ×
                            </button>
                            <div class="login-wrap">
                                <div class="login-container">
                                    <p class="nomargin text-right blue"><b>Log In</b></p>
                                </div>
                                <div class="login-separator">
                                    <p class="nomargin text-center blue">|</p>
                                </div>
                                <div class="login-container">
                                    <p class="nomargin text-left blue">Sign Up</p>
                                </div>
                            </div>

                            <div class="login-wrap login-wrap-collapse">
                                <div class="login-container">
                                    <a class="btn btn-social fullwidth btn-social-facebook">
                                        <img alt="Brand" src="/images/icons/facebook_signup.png"/> facebook
                                    </a>
                                </div>
                                <div class="login-separator"></div>
                                <div class="login-container">
                                    <a class="btn btn-social fullwidth btn-social-wechat">
                                        <img alt="Brand" src="/images/icons/wechat.png"/> wechat
                                    </a>
                                </div>
                            </div>

                            <div class="login-wrap">
                                <div class="login-container"></div>
                                <div class="login-separator">
                                    <p class="nomargin text-center blue">OR</p>
                                </div>
                                <div class="login-container"></div>
                            </div>
                        </div>
                        <div class="modal-body" style="border-style: none;">
                            <div class="row">
                                <div class="col-md-12">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Login" data-toggle="tab">Log In</a></li>
                                        <li><a href="#signup" data-toggle="tab">Sign Up</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <!-- Tab for Log In-->
                                        <div class="tab-pane active" id="Login">
                                                <form method="post" id="login_form" novalidate="novalidate" class="form-horizontal">
                                                    <div class="form-group">
                                                        <div id="login_error" style="color:red"></div>
                                                        </div>
                                                    <div class="form-group">
                                                        <label for="loginemail" class="col-sm-2 taofun-main-color" >
                                                            Email</label>
                                                        <div class="col-sm-10">
                                                            <div class="form-validator">
                                                                <input type="email"
                                                                       class="form-control input-lg gray"
                                                                       name="loginemail"
                                                                       id="loginemail" placeholder="Email">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="loginpassword" class="col-sm-2 taofun-main-color">
                                                            Password</label>
                                                        <div class="col-sm-10 ">
                                                            <div class="form-validator">
                                                                <input type="password"
                                                                       class="form-control input-lg gray"
                                                                       name="loginpassword"
                                                                       id="loginpassword" placeholder="Password">
                                                            </div>
                                                        </div>
                                                    </div>
                                                <div class="form-group">
                                                    <div class="checkbox col-sm-offset-2 col-sm-10">
                                                        <label class="taofun-main-color_no_padding">
                                                            <input type="checkbox"> Remember me
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <a href="forget-password.html" role="button">Forgot password?</a>
                                                </div>
                                                <button type="submit"
                                                        class="btn btn-kootour-bold fullwidth">Log me In
                                                </button>

                                            </form>
                                        </div>

                                        <!-- Tab for Sign Up-->
                                        <div class="tab-pane" id="signup">
                                            <form method="post" id="reg_form" novalidate="novalidate" class="form-horizontal">
                                                <div class="form-group">
                                                    <div id="signup_error" style="color:red"></div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 taofun-main-color">
                                                        Name</label>
                                                    <div class="col-sm-10">
                                                        <div class="form-validator col-md-6">
                                                            <input type="text"
                                                                   class="form-control  input-lg gray" name="firstname"
                                                                   id="firstname" placeholder="First Name"/>
                                                        </div>
                                                        <div class="form-validator col-md-6">
                                                            <input type="text"
                                                                   class="form-control  input-lg gray"
                                                                   name="lastname"
                                                                   id="lastname" placeholder="Last Name"/>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="signupemail" class="col-sm-2 taofun-main-color">
                                                        Email</label>
                                                    <div class="col-sm-10">
                                                        <div class="form-validator">
                                                            <input type="email"
                                                                   class="form-control input-lg gray"
                                                                   name="signupemail"
                                                                   id="signupemail" placeholder="Email">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="signuppassword" class="col-sm-2 taofun-main-color">
                                                        Password</label>
                                                    <div class="col-sm-10 ">
                                                        <div class="form-validator">
                                                            <input type="password"
                                                                   class="form-control input-lg gray"
                                                                   name="signuppassword"
                                                                   id="signuppassword" placeholder="Password">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="resignuppassword"
                                                           class="col-sm-2 taofun-main-color">
                                                        Password</label>
                                                    <div class="col-sm-10 ">
                                                        <div class="form-validator">
                                                            <input type="password"
                                                                   class="form-control input-lg gray"
                                                                   name="resignuppassword"
                                                                   id="resignuppassword"
                                                                   placeholder="Re-enter Password"
                                                                   required="required">
                                                        </div>
                                                    </div>
                                                </div>

                                                <button type="submit" class="btn btn-kootour-bold fullwidth">Sign Up </button>
                                                <br>
                                                <br>
                                                <button type="submit" class="btn btn-kootour-bold fullwidth" onClick="this.form.reset()" >Reset </button>
                                            </form>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('#myModal').modal('show');
        });
    </script>
</div>