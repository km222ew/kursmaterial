﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="GeekCustomer.Pages.CustomerPages.Create" %>

<asp:Content ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>
        Ny kund
    </h1>
    <asp:ValidationSummary runat="server" CssClass="validation-summary-errors" />
    <asp:FormView ID="CustomerFormView" runat="server"
        ItemType="GeekCustomer.Model.Customer"
        DefaultMode="Insert"
        RenderOuterTable="false"
        InsertMethod="CustomerFormView_InsertItem">
        <InsertItemTemplate>
            <div class="editor-label">
                <label for="Name">Namn</label>
            </div>
            <div class="editor-field">
                <asp:TextBox ID="Name" runat="server" Text='<%# BindItem.Name %>' />
            </div>
            <div class="editor-label">
                <label for="Address">Adress</label>
            </div>
            <div class="editor-field">
                <asp:TextBox ID="Address" runat="server" Text='<%# BindItem.Address %>' />
            </div>
            <div class="editor-label">
                <label for="PostalCode">Postnummer</label>
            </div>
            <div class="editor-field">
                <asp:TextBox ID="PostalCode" runat="server" Text='<%# BindItem.PostalCode %>' />
            </div>
            <div class="editor-label">
                <label for="City">Ort</label>
            </div>
            <div class="editor-field">
                <asp:TextBox ID="City" runat="server" Text='<%# BindItem.City %>' />
            </div>
            <div>
                <asp:LinkButton runat="server" Text="Spara" CommandName="Insert" />
                <asp:HyperLink runat="server" Text="Avbryt" NavigateUrl='<%# GetRouteUrl("Customers", null) %>' />
            </div>
        </InsertItemTemplate>
    </asp:FormView>
</asp:Content>
