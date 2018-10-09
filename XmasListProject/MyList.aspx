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

    <div id="portfolio">
        <div class="container">
            <div class="section-title text-center center">
                <h2>My List</h2>
                <hr>
            </div>




            <asp:Repeater runat="server" ID="rptListItems" OnItemDataBound="rptListItems_OnItemDataBound">
                <HeaderTemplate>
                    <div class="row">
                        <div class="portfolio-items">
                </HeaderTemplate>
                <ItemTemplate>

                    <div class="col-sm-6 col-md-3 col-lg-3 lorem">
                        <div class="portfolio-item">
                            <div class="hover-bg">
                                <a href="img/portfolio/01-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
                                    <div class="hover-text">
                                        <asp:Literal runat="server" ID="litProductName"></asp:Literal></h2>
                                    </div>
                                    <asp:Image runat="server" ID="imgItem" CssClass="img-responsive" />
                                </a>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
