<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="节气2.aspx.cs" Inherits="_24节气.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <style>
        body{
            background-image: url("../Images/节气/背景2.jpg");
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
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
    <div class="row" style="height:70px;">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-md-6">
                <asp:FormView ID="FormView7" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                    <EditItemTemplate>
                        Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        brief:
                        <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                        <br />
                        wuyu:
                        <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                        <br />
                        sanhou:
                        <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                        <br />
                        proper:
                        <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                        <br />
                        taboo:
                        <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Id:
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        brief:
                        <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                        <br />
                        wuyu:
                        <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                        <br />
                        sanhou:
                        <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                        <br />
                        proper:
                        <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                        <br />
                        taboo:
                        <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" class="img-thumbnail" runat="server" ImageUrl='<%# Eval("image", "Images/节气/{0}") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
&nbsp;</div>
            <div class="col-md-6">
                <h1 class="text-primary"><asp:FormView ID="FormView3" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                    <EditItemTemplate>
                        Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        brief:
                        <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                        <br />
                        wuyu:
                        <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                        <br />
                        sanhou:
                        <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                        <br />
                        proper:
                        <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                        <br />
                        taboo:
                        <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Id:
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        brief:
                        <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                        <br />
                        wuyu:
                        <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                        <br />
                        sanhou:
                        <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                        <br />
                        proper:
                        <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                        <br />
                        taboo:
                        <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                    </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [jieqi] WHERE ([Id] = @Id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </h1>
                <h3><asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                    <EditItemTemplate>
                        Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        brief:
                        <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                        <br />
                        wuyu:
                        <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                        <br />
                        sanhou:
                        <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                        <br />
                        proper:
                        <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                        <br />
                        taboo:
                        <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Id:
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        brief:
                        <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                        <br />
                        wuyu:
                        <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                        <br />
                        sanhou:
                        <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                        <br />
                        proper:
                        <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                        <br />
                        taboo:
                        <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="briefLabel" runat="server" Text='<%# Bind("brief") %>' />
                        <br />

                    </ItemTemplate>
                    </asp:FormView>
                </h3>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title ">物语</h3>
                </div>
                <div class="panel-body">
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <EditItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="wuyuLabel" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title ">三候</h3>
                </div>
                <div class="panel-body">
                    
                    <asp:FormView ID="FormView4" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <EditItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="sanhouLabel" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title ">适宜吃</h3>
                </div>
                <div class="panel-body">
                    
                    <asp:FormView ID="FormView5" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <EditItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="properLabel" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title ">禁忌吃</h3>
                </div>
                <div class="panel-body">
                    <asp:FormView ID="FormView6" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <EditItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            brief:
                            <asp:TextBox ID="briefTextBox" runat="server" Text='<%# Bind("brief") %>' />
                            <br />
                            wuyu:
                            <asp:TextBox ID="wuyuTextBox" runat="server" Text='<%# Bind("wuyu") %>' />
                            <br />
                            sanhou:
                            <asp:TextBox ID="sanhouTextBox" runat="server" Text='<%# Bind("sanhou") %>' />
                            <br />
                            proper:
                            <asp:TextBox ID="properTextBox" runat="server" Text='<%# Bind("proper") %>' />
                            <br />
                            taboo:
                            <asp:TextBox ID="tabooTextBox" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="tabooLabel" runat="server" Text='<%# Bind("taboo") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
