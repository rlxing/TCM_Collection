<%@ Page Title="" Language="C#" MasterPageFile="~/drugindex.Master" AutoEventWireup="true" CodeBehind="drugdetail.aspx.cs" Inherits="中药检索.drugdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 437px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-light" style="opacity:0.97;">
        <div class="row" style="height:70px;"></div>
        <div class="col-sm col-md">
            <div class="input-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control inputColor" placeholder="请输入药材名称"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="btn btn-outline-secondary btnColor" OnClick="Button1_Click"/>
            </div>
        </div>
        <div class="row" style="height:50px;">
            <div class="col-sm-1 col-md-1"></div>
            <div class="col-sm-2 col-md-2 text-center fw-bold fs-3">
                搜索排行
            </div>
            <div class="col-sm-1 col-md-1"></div>
            <div  class="col-sm-8 col-md-8 text-center fw-bold fs-3">
                详情
            </div>
        </div>
        <div class="row">
            <div class="col-sm-1 col-md-1"></div>
            <div class="col-sm-2 col-md-2">
                <ul class="list-group listWidth">
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=1" class="link-danger">当归</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=2" class="link-warning">金银花</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=3" class="link-success">茯苓</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=4" class="link-secondary">板蓝根</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=5" class="link-secondary">黄精</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=6" class="link-secondary">苍术</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=7" class="link-secondary">麦冬</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=8" class="link-secondary">人参</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=9" class="link-secondary">党参</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=10" class="link-secondary">白及</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=11" class="link-secondary">三七</a></li>
                </ul>
            </div>
            <div  class="col-sm-1 col-md-1">
            </div>
            <div  class="col-sm-7 col-md-7">
                <div class="row">
                    <div class="col-sm col-md">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT * FROM [drug] WHERE ([id] = @id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <EditItemTemplate>
                                id:
                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                sort:
                                <asp:TextBox ID="sortTextBox" runat="server" Text='<%# Bind("sort") %>' />
                                <br />
                                alias:
                                <asp:TextBox ID="aliasTextBox" runat="server" Text='<%# Bind("alias") %>' />
                                <br />
                                avaParts:
                                <asp:TextBox ID="avaPartsTextBox" runat="server" Text='<%# Bind("avaParts") %>' />
                                <br />
                                traits:
                                <asp:TextBox ID="traitsTextBox" runat="server" Text='<%# Bind("traits") %>' />
                                <br />
                                origin:
                                <asp:TextBox ID="originTextBox" runat="server" Text='<%# Bind("origin") %>' />
                                <br />
                                harvest:
                                <asp:TextBox ID="harvestTextBox" runat="server" Text='<%# Bind("harvest") %>' />
                                <br />
                                xingweiguijing:
                                <asp:TextBox ID="xingweiguijingTextBox" runat="server" Text='<%# Bind("xingweiguijing") %>' />
                                <br />
                                features:
                                <asp:TextBox ID="featuresTextBox" runat="server" Text='<%# Bind("features") %>' />
                                <br />
                                usage:
                                <asp:TextBox ID="usageTextBox" runat="server" Text='<%# Bind("usage") %>' />
                                <br />
                                images:
                                <asp:TextBox ID="imagesTextBox" runat="server" Text='<%# Bind("images") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                sort:
                                <asp:TextBox ID="sortTextBox" runat="server" Text='<%# Bind("sort") %>' />
                                <br />
                                alias:
                                <asp:TextBox ID="aliasTextBox" runat="server" Text='<%# Bind("alias") %>' />
                                <br />
                                avaParts:
                                <asp:TextBox ID="avaPartsTextBox" runat="server" Text='<%# Bind("avaParts") %>' />
                                <br />
                                traits:
                                <asp:TextBox ID="traitsTextBox" runat="server" Text='<%# Bind("traits") %>' />
                                <br />
                                origin:
                                <asp:TextBox ID="originTextBox" runat="server" Text='<%# Bind("origin") %>' />
                                <br />
                                harvest:
                                <asp:TextBox ID="harvestTextBox" runat="server" Text='<%# Bind("harvest") %>' />
                                <br />
                                xingweiguijing:
                                <asp:TextBox ID="xingweiguijingTextBox" runat="server" Text='<%# Bind("xingweiguijing") %>' />
                                <br />
                                features:
                                <asp:TextBox ID="featuresTextBox" runat="server" Text='<%# Bind("features") %>' />
                                <br />
                                usage:
                                <asp:TextBox ID="usageTextBox" runat="server" Text='<%# Bind("usage") %>' />
                                <br />
                                images:
                                <asp:TextBox ID="imagesTextBox" runat="server" Text='<%# Bind("images") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td class="auto-style2">编号：<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                        </td>
                                        <td rowspan="5">
                                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Bind("images", "{0}") %>' Width="200px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">名称：<asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">类别：<asp:Label ID="sortLabel" runat="server" Text='<%# Bind("sort") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">别名：<asp:Label ID="aliasLabel" runat="server" Text='<%# Bind("alias") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">药用部位：<asp:Label ID="avaPartsLabel" runat="server" Text='<%# Bind("avaParts") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">药用性状：<asp:Label ID="traitsLabel" runat="server" Text='<%# Bind("traits") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">产地：<asp:Label ID="originLabel" runat="server" Text='<%# Bind("origin") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">采收加工：<asp:Label ID="harvestLabel" runat="server" Text='<%# Bind("harvest") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">性味归经：<asp:Label ID="xingweiguijingLabel" runat="server" Text='<%# Bind("xingweiguijing") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">功能主治：<asp:Label ID="featuresLabel" runat="server" Text='<%# Bind("features") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">用法用量：<asp:Label ID="usageLabel" runat="server" Text='<%# Bind("usage") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-md-1"></div>
        </div>
    </div>
</asp:Content>
