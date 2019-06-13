<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="About_Contact" %>

<%@ Register Src="~/Demos/ContactForm.ascx" TagPrefix="uc1" TagName="ContactForm" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
    <div>
        <uc1:ContactForm runat="server" ID="ContactForm" />
    </div>
    </form>
</body>
</html>
