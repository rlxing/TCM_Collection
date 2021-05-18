<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="实时热点.aspx.cs" Inherits="论坛资讯.实时热点" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" />
    <script type="text/javascript" src="scripts/bootstrap.min.js"></script>
    <style>
         body{
    background-image:url(Images/论坛/bg.png) ;
    background-size: cover;
    }
         .lab{
             width:1200px;
         }
         .lab1{
             width: 220px;
             height:400px;
             background-color:whitesmoke;
                margin-top:20px;
                margin-left:20px;
                text-align:left;
                border-radius:10px;
                padding: 20px;
         }
          .lab2{
             width: 530px;
             height:400px;
             background-color:whitesmoke;
                margin-top:20px;
                margin-left:60px;
                text-align:left;
                text-align:left;
                border-radius:10px;
                padding: 20px;
         }
    </style>
    <title></title>
</head>
<body>
    <form id="form4" runat="server">
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
<!-- 导航条 -->
     <div class="container">

 
    <!-- 搜索 -->
    <div class="row">
  <div class="col-md-10 col-md-offset-1">
    <div class="row">
  <div class="col-lg-6" style="width:800px">
    <div class="input-group">
        <asp:TextBox ID="TextBox3" class="form-control" placeholder="Search for..." runat="server" Height="34px" Width="691px"></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" Text="搜索" OnClick="Button4_Click" />
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->
</div>
<!-- 搜索 -->

<div class="row">
  <div class="col-md-2 col-md-offset-1">
      <div class="lab1" align="center">
           <div>
               <asp:Label ID="Label1" runat="server" Text="实时热点" BackColor="#FFFF99"></asp:Label>
               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="196px" GridLines="None">
                   <Columns>
                       <asp:BoundField DataField="Title" SortExpression="Title" />
                       <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="实时热点.aspx?id={0}" Text="&gt;&gt;&lt;span class=&quot;glyphicon glyphicon-time&quot; aria-hidden=&quot;true&quot; style=&quot;color:aqua&quot;&gt;&lt;/span&gt;" />
                   </Columns>
               </asp:GridView>
               <br />
               <asp:Label ID="Label2" runat="server" Text="热度最高" BackColor="#FFFF99"></asp:Label>
               <br />
               <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" Width="199px" BorderStyle="None" BorderWidth="0px" GridLines="None">
                   <Columns>
                       <asp:BoundField DataField="Title" SortExpression="Title" />
                       <asp:HyperLinkField Text="&gt;&gt;&lt;span class=&quot;glyphicon glyphicon-fire&quot; aria-hidden=&quot;true&quot; style=&quot;color:red&quot;&gt;&lt;/span&gt;" DataNavigateUrlFields="id" DataNavigateUrlFormatString="最高热度.aspx?id={0}" />
                   </Columns>
               </asp:GridView>
               <br />
               <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="height: 26px" Text="发布信息&lt;&lt;" />
               <br />
                           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [HOT-Forum]"></asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [NEW-Forum]"></asp:SqlDataSource>

        </div>
       </div>
  </div>



  <div class="col-md-4">
<div class="lab2" align="center">
           <div>
               
               <asp:Label ID="Label3" runat="server" Text="查看信息"></asp:Label>
               <br />
               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [NEW-Forum] WHERE ([Id] = @Id)">
                   <SelectParameters>
                       <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                   </SelectParameters>
               </asp:SqlDataSource>
               <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None" Height="68px" Width="493px">
                   <AlternatingRowStyle BackColor="PaleGoldenrod" />
                   <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                   <Fields>
                       <asp:BoundField DataField="Title" SortExpression="Title" />
                       <asp:BoundField DataField="Content" SortExpression="Content" />
                   </Fields>
                   <FooterStyle BackColor="Tan" />
                   <HeaderStyle BackColor="Tan" Font-Bold="True" />
                   <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
               </asp:DetailsView>
               
               <br />
               
        </div>
       </div>
  </div>
  </div>
</div>
       
  </div>  
     

   


 </div>
    </form>
   
</body>
</html>
