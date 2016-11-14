<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <title>温哥华淘房网</title>

    <link rel='stylesheet' href='/css/taofun-style.css' type='text/css'/>
    <link rel="stylesheet" href="/css/taofun.css"/>
</head>

<body>

<!--
Header style 1
-->
<jsp:include page="../taofunheader.jsp"/>

<div class="td-main-content-wrap td-main-page-wrap">
    <div class="td-container">
        <div class="vc_row wpb_row td-pb-row">
            <div class="wpb_column vc_column_container td-pb-span12">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <p></p>
                            <h2 style="text-align: center;"><strong>房屋贷款计算器</strong></h2>
                            <p style="text-align: center;">输入房屋价格，首付款，贷款周期来计算出每个月需要支付的贷款金额。</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="vc_row wpb_row td-pb-row">
            <div class="wpb_column vc_column_container td-pb-span12">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <div style="width: 688px; height: 752px; background-color: #ccc; font: normal normal normal 8pt verdana,arial,sans-serif; line-height: 13px; margin: 0 auto; padding: 0; overflow: hidden; text-align: center; border: 1px solid #ccc;">
                                <div style="height: 25px; overflow: hidden; color: #fff;">
                                    <h5 style="margin: 6px 5px 7px; font-size: 11px; color: #fff; display: block; text-align: center; font-weight: bold;">
                                        Monthly Payment Calculator</h5>
                                </div>
                                <p>
                                    <iframe src="http://www.zillow.com/mortgage/MortgageCalculatorWidgetLarge.htm?homePrice=400000"
                                            width="688px" height="700px" frameborder="0"
                                            scrolling="no"></iframe>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- /.td-main-content-wrap -->


<jsp:include page="../taofunfoot.jsp"/>
</div><!--close content div-->

</body>
</html>