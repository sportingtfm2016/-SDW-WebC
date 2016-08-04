<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckDatabase.aspx.cs" Inherits="TFMWebC.Pages.CheckDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ListView ID="ListView1" runat="server">
    <LayoutTemplate>
        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
    
    </LayoutTemplate>
    <ItemTemplate>
     <br />
        <asp:Label ID="Label1" runat="server" Text='<%# Bind("iDUsuarios") %>'> </asp:Label> <br />
         <asp:Label ID="Label2" runat="server" Text='<%# Bind("Usuario") %>'> </asp:Label> <br />
          <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'> </asp:Label> <br />
    </ItemTemplate>
    <ItemSeparatorTemplate>
    ---------------------------------------
    
    </ItemSeparatorTemplate>
    </asp:ListView>
    </div>
    </form>
</body>
</html>
