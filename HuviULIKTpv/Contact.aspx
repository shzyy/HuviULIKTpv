```aspx
<%@ Page Title="Huviringid" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs"
    Inherits="HuvUl.Contact" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <main>
        <h2>Huviringide haldamine</h2>

        <h3>Huviringid</h3>
        <asp:GridView ID="gvHuviringid"
            runat="server"
            AutoGenerateColumns="true"
            EmptyDataText="Huviringe ei leitud"
            CssClass="table table-striped" />

        <h3>Osalejad</h3>
        <asp:GridView ID="gvOsalejad"
            runat="server"
            AutoGenerateColumns="true"
            EmptyDataText="Osalejaid ei leitud"
            CssClass="table table-striped" />

        <h3>Registreerimised</h3>
        <asp:GridView ID="gvRegistreerimised"
            runat="server"
            AutoGenerateColumns="true"
            EmptyDataText="Registreerimisi ei leitud"
            CssClass="table table-striped" />
    </main>

</asp:Content>
```