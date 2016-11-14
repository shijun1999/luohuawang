<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>InfoBubble Example</title>
    <style>
        .infobox_outer{
            width: 200px;
            position: absolute;
            visibility: visible;
            left: 39.9499px; top: 181.741px; cursor: default;
        }
        .infobox_inner {
            border: 1px solid black;
            border-radius: 2px 2px 2px 2px;
            box-shadow: 0 0 8px #000000;
            color: #FFFFFF;
            float: left;
            font-family: Arial,Helvetica,sans-serif;
            font-size: 12px;
            height: 96px;
            margin-top: -18px;
            padding: 1px;
            width: 195px;
        }

        .img_close{
            position: relative;
            cursor: pointer;
            margin: 12px 5px 2px 2px;
            width:10px;
            height:10px;
        }
        .infobox_doc{
            float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255); margin-top: 0px; width: 195px;
        }
        .infobox_title{
            float: left; color: rgb(255, 255, 255); padding: 2px; font-size: 11px; line-height: 12px;
            background: none repeat scroll 0% 0% rgb(162, 49, 47); width: 190px;
        }
        .infobox_detail{
            color: rgb(23, 55, 94);
            line-height: 14px;
            font-size: 11px;
            width: 112px;
            float: left;
        }
    </style>
</head>
<body>
<div class="infobox_outer">
    <img class="img_close" src="icon_close.png" align="right">
    <div class="infobox_inner">
        <div class="infobox_doc">
            <div class="infobox_title">
                15765 Lodestone Lane, Hacie...
            </div>
            <div style="float: left; width: 67px; margin-left: 6px;">
                <img width="60px" height="70px" border="0"
                     align="absmiddle"
                     src="http://photo3.proxiopro.com/p2/50311714/0.jpg?t=1477927189"
                     style="cursor:pointer;"></div>
            <div class="infobox_detail"><span
                    style="font-weight: bold; ">USD 1,588,000</span><br>Hacienda
                Heights<br>California<br>91745<br>USA
            </div>
        </div>
    </div>
</div>

</body>
</html>