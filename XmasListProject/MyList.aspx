<%@ Page Title="" Language="C#" MasterPageFile="~/MCL.Master" AutoEventWireup="true" CodeBehind="MyList.aspx.cs" Inherits="XmasListProject.MyList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--  <div class="row" style="margin-top: 10px;">

        <div class="col-md-12" style="background: #f4d107; border: 2px solid black; border-radius: 25px; min-height: 100px; margin-bottom: 120px;">
            <div class="form-horizontal">
                <h2 class="col-md-12 text-center">Add an item to your list</h2>
                <div class="form-group">
                    <label class="col-md-1">Name :</label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="txtName" Width="100%" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-1">Price :</label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="txtPrice" Width="100%" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-1">Name :</label>
                    <div class="col-md-8">
                        <asp:FileUpload runat="server" ID="fuImage" CssClass="form-control" />
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <div class="col-md-3 ">
        <asp:Button runat="server" ID="btnAddItem" Text="Add new item" OnClick="btnAddItem_OnClick" CssClass="btn btn-green " />
    </div>
    <asp:Repeater runat="server" ID="rptListItems" OnItemDataBound="rptListItems_OnItemDataBound">
        <HeaderTemplate>
            <div class="row">
        </HeaderTemplate>
        <ItemTemplate>
            <div class="col-md-3" style="min-width: 400px; min-height: 400px; border: 2px solid black; border-radius: 10px;">
                <div class="row">
                    <div class="col-md-12">
                        <h2 style="text-align: center;">
                            <asp:Literal runat="server" ID="litProductName"></asp:Literal></h2>
                        <asp:Image runat="server" ID="imgItem" Style="margin: 0 10px;" Width="100%" />
                    </div>
                </div>
                <div class="row">
                    <div style="min-height: 100px; position: absolute; bottom: 0; background: #56e39f; border-bottom-left-radius: 10px; border-top: 2px solid black; border-bottom-right-radius: 10px; border-bottom: 5px solid #56e39f;" class="col-md-12">
                        <div class="col-md-4">
                            <img src="App_themes/toypart.png" alt="number of toy parts" width="100%" />
                        </div>
                        <div class="col-md-8">
                            <p style="font-size: 72px; text-align: left;">
                                <asp:Literal runat="server" ID="litPrice"></asp:Literal>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </ItemTemplate>
        <FooterTemplate>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    </div>
</asp:Content>
