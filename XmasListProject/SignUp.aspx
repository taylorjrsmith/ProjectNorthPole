<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="XmasListProject.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function() {

            $(".js-pin").on("keydown", function() {
                if ($(".js-pin").val().length > 6)
                    $(".js-pin").val($(".js-pin").val().substr(0, 6));
            });

        });
    </script>


    <div class="form-group">
        <div class="row">
            <div class="col-md-8 col-md-push-2">
                <asp:Panel runat="server" ID="pnlErrorMessages" CssClass="col-md-12 alert alert-danger" Visible="false">
                    <asp:Literal runat="server" ID="litErrorMessage"></asp:Literal>
                </asp:Panel>


                <h1 class="text-center">Sign up to start creating your list</h1>
                <p>With my christmas list you will never need to manually write your christmas list again. You can send it directly to santa from your account. We will never share your details except for with santa and we will also never need to email unless you are attempting to recover your pin.</p>

                <div style="border: 2px black solid; background-color: #56e39f; border-radius: 25px; padding: 10px 0 10px 0; margin: 40px 0;">

                    <div class="form-group row">
                        <label class=" col-md-push-1 col-md-3 control-label">Name:</label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="TextUser" CssClass="form-control" Placeholder="John Smith"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextUser"
                                                    Display="Dynamic" CssClass="alert alert-danger col-md-push-1 col-md-10 col-md-pull-1" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group row">
                        <label class=" col-md-push-1 col-md-3 control-label">PIN:</label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="TextPin" TextMode="Password" CssClass="form-control js-pin" Placeholder="******"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextPin"
                            Display="Dynamic" CssClass="alert alert-danger col-md-push-1 col-md-10 col-md-pull-1" ErrorMessage="Please enter a 6 digit pin"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group row">
                        <label class=" col-md-push-1 col-md-3 control-label">Email:</label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="TextEmail" CssClass="form-control" Placeholder="JohnSmith@gmail.com"></asp:TextBox>
                        </div>
                    </div>
                    


                    <div class="form-group row">
                        <label class=" col-md-push-1 col-md-3 control-label">Postcode:</label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="TextPostcode" CssClass="form-control" Placeholder="EC1 3YE"></asp:TextBox>
                        </div>
                    </div> 
                    
                    <div class="form-group row">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextPostcode"
                                                    Display="Dynamic" CssClass="alert alert-danger col-md-push-1 col-md-10 col-md-pull-1" ErrorMessage="Please enter your postcode"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group row">

                        <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_OnClick" Text="Sign Up" CssClass="btn btn-primary col-md-push-9 col-md-2" />
                    </div>
                </div>
              <p>Have you already got an account? <a href="Login.aspx">Sign in here</a></p>
            </div>
        </div>
    </div>
   

</asp:Content>
