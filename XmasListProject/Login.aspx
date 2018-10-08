<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="XmasListProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="form-group">
        <div class="row">
            <div class="col-md-8 col-md-push-2">
                <asp:Panel runat="server" ID="pnlErrorMessages" CssClass="col-md-12 alert alert-danger" Visible="false">
                    <asp:Literal runat="server" ID="litErrorMessage"></asp:Literal>
                </asp:Panel>


                <h1 class="text-center">Login to your account</h1>

                <div style="border: 2px black solid; background-color: #56e39f; border-radius: 25px; padding: 10px 0 10px 0; margin: 40px 0;">

                    <div class="form-group row">
                        <label class=" col-md-push-1 col-md-3 control-label">Name:</label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="TextUser" CssClass="form-control" Placeholder="John Smith"></asp:TextBox>
                        </div>
                    </div>
                   

                    <div class="form-group row">
                        <label class=" col-md-push-1 col-md-3 control-label">PIN:</label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="TextPin" TextMode="Password" CssClass="form-control js-pin" Placeholder="******"></asp:TextBox>
                        </div>
                    </div>


                    <div class="form-group row">
                        <label class=" col-md-push-1 col-md-3 control-label">Postcode:</label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="TextPostcode" CssClass="form-control" Placeholder="EC1 3YE"></asp:TextBox>
                        </div>
                    </div> 
                   

                    <div class="form-group row">

                        <asp:Button runat="server" ID="btnLogin" OnClick="btnLogin_OnClick" Text="Login" CssClass="btn btn-primary col-md-push-9 col-md-2" />
                    </div>
                </div>
                <p>Haven't got an account? <a href="SignUp.aspx">Create one</a></p>
            </div>
        </div>
    </div>

</asp:Content>
