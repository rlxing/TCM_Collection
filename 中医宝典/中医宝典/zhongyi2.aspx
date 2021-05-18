<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhongyi2.aspx.cs" Inherits="中医古籍.zhongyi2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="StyleSheet1.css" rel="stylesheet"/>
    <title>古籍</title>

    <style>
        body{
            margin: 0;
            padding: 0;
            background-image: url(Images/古籍/list1.jpg);
            position: relative;
        }
        .navbar-default{
            background-color: #f4efd6;
            background-image: url(Images/古籍/list1.jpg);
        }
        .navbar-header{
            margin: auto auto auto 10%;
        }
        .titleborder{
            margin: 5px auto 5px 20%;
            border-bottom: rgb(145, 71, 19) solid 3px;
            width: 60%;
        }
        .body11{
            margin: auto auto auto 20%;
            border-bottom: rgb(145, 71, 19) solid 3px;
            width: 60%;
        }
        .body2{
            overflow: auto;
            margin: auto auto auto 20%;
            width: 60%;
            height: 550px;
        }
        .content{
            font-size: 25px;
            font-family: 楷书;
            color: #7e0f0f;
        }
        pre{
            white-space: pre-wrap;
        }
        .pull-right{
            margin-top:8px;
        }
    </style>
    <script>
        function getQueryString(name) {
            var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
            var r = window.location.search.substr(1).match(reg);
            if (r != null) {
                return decodeURIComponent(r[2]);
            }
            return null;
        }
        
        $(function () {
            var ct = getQueryString('ct');
            $("#content").load('content/' + ct);
            //$("#content").load('content/001.html');
        });
    </script>
</head>
<body>
<form id="form1" runat="server">
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
    <div style="height:70px;"></div>
    <div class="head1"></div>
    <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <img src="Images/古籍//list2.png" alt=""/>
        </div>
        <a href="古籍1.aspx"><span class="headfont navbar-right">中医古籍</span></a>
        <span class="headfont1 navbar-right">传承国学经典，弘扬华夏文明</span>
    </nav>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cmbook] WHERE ([Content] = @Content)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Content" QueryStringField="ct" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <p id="Message" runat="server" class="title">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="title">
            <ItemTemplate>
                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Bind("BookName") %>' />
                &gt;&gt;<asp:Label ID="ContentTitleLabel" runat="server" Text='<%# Bind("ContentTitle", "{0}") %>' />
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger pull-right" NavigateUrl='<%# Bind("BookName", "zhongyi3.aspx?BookName={0}") %>'>返回书籍目录</asp:HyperLink>
                <br />
            </ItemTemplate>
        </asp:FormView>
    </p>

    <p class="titleborder"></p>
    <div class="body1">
        <div class="body2">
            <pre id="content" class="content">
                没有内容
            </pre>
        </div>
    </div>
</form>
</body>
</html>
