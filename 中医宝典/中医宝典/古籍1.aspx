<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="古籍1.aspx.cs" Inherits="中医古籍.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>中医古籍</title>
    <style>
        body{
            margin:0px;
            padding:0px;
            background-color:#f4e6c0;
        }
        .head1{
            background-image:url("Images/古籍/image1.jpg");
            height:15px;
        }
        .head2{
            background-image:url("Images/古籍/headimg.png");
            height:283px;
        }
        .border1{
            width: 90%;
            height: 1px;
            background-color:#f4e6c0;
            margin:0px auto auto 5%;
        }
        .border2{
            width: 90%;
            height: 4px;
            background: #aa7555;
            margin:15px auto 15px 5%;
        }
        .border3{
            width: 90%;
            height: 1px;
            background: #aa7555;
            margin:15px auto 15px 5%;
        }
        .auto-style1 {
            height: 200px;
        }
        .style2 {
            width:160px;
        }
        .style3,.style4,.style5{
            width:260px;color: #7e0f0f;
        }
        .style3{
            font-size:25px;
            font-family:华文行楷;
            height:25px;
        }
        .style4{
            border-bottom: 2px solid #ffd800;
            font-size:18px;
            font-family:楷体;
            height:18px;
        }
        .style5{
            font-size:16px;
            font-family:隶书;
        }
        a:hover{
            text-decoration:none;
        }
        .thumbnail{
            width:95%;/*单个table的宽度*/
            background-color:rgb(249, 240, 219);
        }
        .pull-right{
            margin-top:-35px;
        }
    </style>
</head>
<body>
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
    <div style="height:70px;"></div>
    <div>
        <div class="head1"></div>
        <div class="head2"></div>
    </div>
    
    <div>
        <p class="border1"></p>
        <p class="border2"></p>
        <p class="border3"></p>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
    <br />

    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="datalist1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <a class="thumbnail" >
                <table class="auto-style1">
                    <tr>
                        <td class="style2" rowspan="3">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Image", "~/Images/古籍/{0}") %>' Width="150px" />
                        </td>
                        <td class="style3">
                            《<asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />》
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;作者:<asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("BookName", "zhongyi3.aspx?BookName={0}") %>' CssClass="btn btn-danger pull-right">
                                阅读
                            </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:Label ID="IntroductionLabel" runat="server" Text='<%# SubStr(Eval("Introduction").ToString(),75) %>' />
                        </td>
                    </tr>
                </table>
            </a>
            <br />
        </ItemTemplate>
    </asp:DataList>
</form>
</body>
</html>
