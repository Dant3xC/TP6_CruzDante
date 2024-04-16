<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP5_Delgado._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>TP6</h1>
        <p class="lead">Trabajo de ListBox</p>
        <table class="nav-justified">
            <tr>
                <td style="width: 188px" rowspan="5" class="modal-sm"><br />
                    <asp:ListBox ID="ListBox1" runat="server" Height="170px" Width="175px"></asp:ListBox>
                    <br />
                </td>
                <td style="width: 120px">
                    <asp:Button ID="BtnIcluir" runat="server" Height="25px" Text="Incluir" Width="100px" OnClick="BtnIcluir_Click" />
                </td>
                <td rowspan="5">
                    <asp:ListBox ID="ListBox2" runat="server" Height="170px" Width="175px" style="margin-left: 0"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    <asp:Button ID="BtnRemover" runat="server" Height="25px" OnClick="BtnRemover_Click" Text="Remover" Width="100px" />
                    </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    <asp:Button ID="BtnNuevoItem" runat="server" Height="25px" Text="Nuevo" Width="100px" OnClick="BtnNuevoItem_Click" />
                    </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    <asp:Button ID="BtnLimpiar" runat="server" Height="25px" OnClick="Button3_Click" Text="Limpiar lista" Width="100px" />
                    </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    </td>
            </tr>
            <tr>
                <td style="width: 188px" class="modal-sm">
                    &nbsp;</td>
                <td style="width: 120px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" rowspan="3">
                    <asp:Panel ID="Panel" runat="server" Height="67px" Visible="False">
                        <asp:Label ID="Label1" runat="server" Text="Nuevo Item  "></asp:Label>
                        <asp:TextBox ID="TxtItemNuevo" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <br />
                        <asp:Button ID="BtnInsertarNuevo" runat="server" OnClick="BtnInsertarNuevo_Click" Text="Insertar item" />
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="BtnVer" runat="server" OnClick="BtnVer_Click" Text="ver seleccionado" />
                    <asp:Label ID="LbMostrar" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <p class="lead">&nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
