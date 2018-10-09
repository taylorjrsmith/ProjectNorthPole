<%@ Page Title="" Language="C#" MasterPageFile="~/MCL.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="XmasListProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Services Section -->
    <div id="services" class="text-center">
        <div class="container">
            <div class="col-md-10 col-md-offset-1 section-title">
                <h2>Login</h2>
                <hr>
            </div>
            <div class="col-md-10 col-md-offset-1 row" style="padding: 20px; /* color: black; */">
                <div class="form-group">
                    <label class="label" style="font-size: 18px; color: #888; font-family: 'Open Sans', sans-serif;">
                        Name</label>
                    <asp:TextBox runat="server" ID="Name" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="label" style="font-size: 18px; color: #888; font-family: 'Open Sans', sans-serif;">
                        Pin</label>
                    <asp:TextBox runat="server" ID="Pin" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="label" style="font-size: 18px; color: #888; font-family: 'Open Sans', sans-serif;">
                        Postcode</label>
                    <asp:TextBox runat="server" ID="Postcode" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
