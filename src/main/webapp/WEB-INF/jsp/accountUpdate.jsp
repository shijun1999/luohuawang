<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <%@ include file="content.jsp" %>
</head>

<body>
<jsp:include page="taofunheader.jsp"/>
<div class="td-main-content-wrap td-main-page-wrap td-container">
    <form method="post" id="save_acct_form" action="saveAccount" novalidate="novalidate" class="form-horizontal">
        <input type="hidden" id="status" name="status" value="${status}">
        <div class="form-group">
            <div id="status_display" class="col-sm-offset-1 taofun-main-color" style="color:red">111</div>
        </div>
        <div class="form-group">
            <label for="firstName" class="col-sm-offset-1 col-sm-2 taofun-main-color">
                Name</label>
            <div class="col-sm-8">
                <div class="form-validator col-md-6">
                    <input type="text"
                           class="form-control  input-lg gray" name="firstName"
                           id="firstName" value="${firstName}" placeholder="First Name"/>
                </div>
                <div class="form-validator col-md-6">
                    <input type="text"
                           class="form-control  input-lg gray"
                           name="lastName"
                           id="lastName" value="${lastName}" placeholder="Last Name"/>

                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-offset-1 col-sm-2 taofun-main-color">
                Email</label>
            <div class="col-sm-8">
                <div class="form-validator">
                    <input type="email"
                           class="form-control input-lg gray"
                           name="email"
                           value="${email}"
                           id="email" placeholder="Email">
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-offset-1 col-sm-2 taofun-main-color">
                Password</label>
            <div class="col-sm-8">
                <div class="form-validator">
                    <input type="password"
                           class="form-control input-lg gray"
                           name="password"
                           id="password" placeholder="Password" value="${password}">
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="repassword"
                   class="col-sm-offset-1 col-sm-2 taofun-main-color">
                Re-Password</label>
            <div class="col-sm-8">
                <div class="form-validator">
                    <input type="password"
                           class="form-control input-lg gray"
                           name="repassword"
                           id="repassword"
                           placeholder="Re-enter Password"
                           required="required">
                </div>
            </div>
        </div>

        <button type="submit" class="col-sm-offset-3 btn btn-kootour-bold">Update</button>
        <br>
        <br>

    </form>


</div> <!-- /.td-main-content-wrap -->

<div><br></div>
<jsp:include page="taofunfoot.jsp"/>

<script src="/js/jquery3.1.1.min.js"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/bootstrap3.3.7.min.js"></script>
<script src="/js/bootstrap-dialog.min.js"></script>
<script src="/js/accountupdate.js"></script>

</body>
</html>