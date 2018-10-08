<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XmasListProject._Default" %>

<%@ Register TagPrefix="uc" TagName="Step" Src="~/UserControls/StepControl.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron-custom full-width">
    </div>
    <div class="banner-btn">
        <asp:Button runat="server" Text="Create my list" CssClass="btn btn-green" />
    </div>

    <div class="row">
        <uc:Step runat="server" ID="Step1" StepNumber="1" StepInstruction="Step 1: Enter name & postcode" />
        <uc:Step runat="server" ID="Step2" StepNumber="2" StepInstruction="Step 2: Create your wish list" />
        <uc:Step runat="server" ID="Step3" StepNumber="3" StepInstruction="Step 3: Send your list to santa" />
    </div>

</asp:Content>
