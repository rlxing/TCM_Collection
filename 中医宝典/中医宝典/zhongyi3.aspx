<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhongyi3.aspx.cs" Inherits="中医古籍.zhongyi3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet"/>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>目录</title>
    <style>
        .zhongyi3body {
            margin: 0;
            padding: 0;
            background-image: url("Images/古籍/004.jpg");
            background-size: 100%;
            position: relative;
        }
        .head1 {
            background-image: url("Images/古籍/image1.jpg");
            height: 15px;
        }
    </style>
</head>
<body class="zhongyi3body">
    <form id="form1" method="post" runat="server">
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
        <div class="head1"></div>
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <img src="Images/古籍/list2.png" alt=""/>
            </div>
            <a href="古籍1.aspx"><span class="headfont navbar-right">中医古籍</span></a>
            <span class="headfont1 navbar-right">传承国学经典，弘扬华夏文明</span>
        </nav>
        <div class="head1"></div>
        <p id="Message" runat="server" class="title">
            被替换内容
        </p>
        <p class="titleborder"></p>
  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cmbook] WHERE ([BookName] = @BookName)">
            <SelectParameters>
                <asp:QueryStringParameter Name="BookName" QueryStringField="BookName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
  
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="titleborder">
            <ItemTemplate>
                <div class="text-left">
                    &nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("Content", "zhongyi2.aspx?ct={0}") %>' Text='<%# Eval("ContentTitle", "{0}") %>' CssClass="HyperLink1"></asp:HyperLink>
                    <p class="titleborder1"></p>
                    <br />
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
