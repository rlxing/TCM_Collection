<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="节气1.aspx.cs" Inherits="_24节气.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>24节气</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <style>
        body{
            background-image: url("../Images/节气/背景.jpg");
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">宝典</a>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="节气1.aspx">24节气</a></li>
                    <li><a href="drugindex.aspx">药材检索</a></li>
                    <li><a href="古籍1.aspx">中医古籍</a></li>
                    <li><a href="论坛1.aspx">论坛</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row" style="height:70px;"></div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail"  style="height:400px;">
                    <img src="Images/节气/立春.jpg" />
                    <div class="caption">
                        <h3>立春</h3>
                        <p>立是开始的意思，立春就是春季的开始。此后气温回升，养生重在护肝。</p>
                        <p><a href="节气2.aspx?id=1" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/雨水.jpg" />
                    <div class="caption">
                        <h3>雨水</h3>
                        <p>降雨开始，雨量渐增。养生着重养护脾脏。</p>
                        <p><a href="节气2.aspx?id=2" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/惊蛰.jpg" />
                    <div class="caption">
                        <h3>惊蛰</h3>
                        <p>蛰是藏的意思。惊蛰是指春雷乍动，惊醒了蛰伏在土中冬眠的动物。惊蛰期间雨水渐多，乍暖乍寒，养生应顺乎阳气的升发、万物始生的特点。</p>
                        <p><a href="节气2.aspx?id=3" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/春分.jpg" />
                    <div class="caption">
                        <h3>春分</h3>
                        <p>分是平分的意思。春分表示昼夜平分，养生应注意保持人体的阴阳平衡状态。</p>
                        <p><a href="节气2.aspx?id=4" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/清明.jpg" />
                    <div class="caption">
                        <h3>清明</h3>
                        <p>天气晴朗，草木繁茂。清明时节慢性病多发，养生应注重防病，饮食清淡。</p>
                        <p><a href="节气2.aspx?id=5" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/谷雨.jpg" />
                    <div class="caption">
                        <h3>谷雨</h3>
                        <p>雨生百谷。雨量充足而及时，谷类作物能茁壮成长。养生要注意增减衣服，避免受寒感冒。</p>
                        <p><a href="节气2.aspx?id=6" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/立夏.jpg" />
                    <div class="caption">
                        <h3>立夏</h3>
                        <p>夏季的开始。此时养生重点关注心脏。</p>
                        <p><a href="节气2.aspx?id=7" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/小满.jpg" />
                    <div class="caption">
                        <h3>小满</h3>
                        <p>麦类等夏熟作物籽粒开始饱满。小满节气是皮肤病高发期，要未病先防。</p>
                        <p><a href="节气2.aspx?id=8" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/芒种.jpg" />
                    <div class="caption">
                        <h3>芒种</h3>
                        <p>麦类等有芒作物成熟。此时湿热明显，养生要注意祛湿。</p>
                        <p><a href="节气2.aspx?id=9" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/夏至.jpg" />
                    <div class="caption">
                        <h3>夏至</h3>
                        <p>炎热的夏天来临。夏至养生多吃“苦”，清热祛暑。</p>
                        <p><a href="节气2.aspx?id=10" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/小暑.jpg" />
                    <div class="caption">
                        <h3>小暑</h3>
                        <p>暑是炎热的意思。小暑就是气候开始炎热，养生重在“心静”。</p>
                        <p><a href="节气2.aspx?id=11" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/大暑.jpg" />
                    <div class="caption">
                        <h3>大暑</h3>
                        <p>一年中最热的时候。此时易伤精耗气，可选用药粥滋补身体。</p>
                        <p><a href="节气2.aspx?id=12" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/立秋.jpg" />
                    <div class="caption">
                        <h3>立秋</h3>
                        <p>秋季的开始。气温由热转凉，要养阴清热，适当补充营养。</p>
                        <p><a href="节气2.aspx?id=13" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/处暑.jpg" />
                    <div class="caption">
                        <h3>处暑</h3>
                        <p>处是终止、躲藏的意思。处暑是表示炎热的暑天结束，饮食要减辣增酸，保证充足睡眠。</p>
                        <p><a href="节气2.aspx?id=14" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/白露.jpg" />
                    <div class="caption">
                        <h3>白露</h3>
                        <p>天气转凉，露凝而白。此时养生要健脾润燥，重保暖慎秋冻。</p>
                        <p><a href="节气2.aspx?id=15" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/秋分.jpg" />
                    <div class="caption">
                        <h3>秋分</h3>
                        <p>昼夜平分。此时养生谣遵循阴阳平衡的规律，防秋燥。</p>
                        <p><a href="节气2.aspx?id=16" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/寒露.jpg" />
                    <div class="caption">
                        <h3>寒露</h3>
                        <p>露水已寒，将要结冰。养生重点是养阴防燥、润肺益胃。</p>
                        <p><a href="节气2.aspx?id=17" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/霜降.jpg" />
                    <div class="caption">
                        <h3>霜降</h3>
                        <p>天气渐冷，开始有霜。养生重补气血，同时防“老寒腿”和“老慢支”。</p>
                        <p><a href="节气2.aspx?id=18" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/立冬.jpg" />
                    <div class="caption">
                        <h3>立冬</h3>
                        <p>冬季的开始。立冬补冬，多吃温热补益的食物。</p>
                        <p><a href="节气2.aspx?id=19" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/小雪.jpg" />
                    <div class="caption">
                        <h3>小雪</h3>
                        <p>开始下雪。气温降低，要合理饮食，补温益肾，御寒保暖。</p>
                        <p><a href="节气2.aspx?id=20" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/大雪.jpg" />
                    <div class="caption">
                        <h3>大雪</h3>
                        <p>降雪量增多，地面可能积雪。气温显著下降，养生在“藏”字上下功夫。</p>
                        <p><a href="节气2.aspx?id=21" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/冬至.jpg" />
                    <div class="caption">
                        <h3>冬至</h3>
                        <p>寒冷的冬天来临。养生重在防寒保暖，保护心脑血管，保持心情愉悦。</p>
                        <p><a href="节气2.aspx?id=22" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/小寒.jpg" />
                    <div class="caption">
                        <h3>小寒</h3>
                        <p>气候开始寒冷。养生很重要的一点就是“养肾防寒”。</p>
                        <p><a href="节气2.aspx?id=23" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail" style="height:400px;">
                    <img src="Images/节气/大寒.jpg" />
                    <div class="caption">
                        <h3>大寒</h3>
                        <p>一年中最冷的时候。养生重在“藏”，要及时防御外邪的侵袭。</p>
                        <p><a href="节气2.aspx?id=24" class="btn btn-primary" role="button">查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>
