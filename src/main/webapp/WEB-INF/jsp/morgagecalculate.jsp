<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<head>
    <%@ include file="content.html" %>
</head>

<body>
<jsp:include page="taofunheader.jsp"/>

<div class="td-main-content-wrap td-main-page-wrap">
    <div class="td-container">
        <div class="vc_row wpb_row td-pb-row">
            <div class="wpb_column vc_column_container td-pb-span12">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <p></p>
                            <h2 style="text-align: center;"><strong><s:text name="morgagecalculate.cal"/></strong></h2>
                            <p style="text-align: center;"><s:text name="morgagecalculate.desc"/></p>

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
</div>

<jsp:include page="taofunfoot.jsp"/>
</div>

</body>
</html>