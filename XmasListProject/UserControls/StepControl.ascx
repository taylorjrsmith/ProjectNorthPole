<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StepControl.ascx.cs" Inherits="XmasListProject.UserControls.StepControl" %>
<div class="row">
    <div class="col-sm-2">
        <div class="circle-step">
            <p>
                <asp:Literal runat="server" ID="StepCount" Text="1"></asp:Literal>
            </p>
        </div>
    </div>
    <div class="col-sm-10 ">
        <p class="step-text">
            <asp:Literal ID="StepDescription" runat="server"  Text="This is dummy text"></asp:Literal>
        </p>
    </div>
</div>
