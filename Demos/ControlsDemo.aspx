<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlsDemo.aspx.cs" Inherits="Demos_ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #form1 {
            height: 300px;
        }
        .auto-style1 {
            width:750px;
            height: 500px;
            margin-left: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p style="margin-left: 120px">
            &nbsp;</p>
        <p style="margin-left: 120px">
            &nbsp;</p>
        <p style="margin-left: 120px">
            &nbsp;</p>
        <p style="margin-left: 600px">
            Số seri card<em>:</em><asp:TextBox ID="YourName" runat="server"></asp:TextBox>
        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="donate" CssClass="button" />
    
        &nbsp;&nbsp;&nbsp;
    
        </p>
    
    </div>
        <div style="margin-left: 230px">
            <asp:Label ID="Result" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <img alt="" class="auto-style1" src="../Images/asd.jpg" /><br />
            
            <br />
            <br />
        </div>
    </form>
</body>
</html>
