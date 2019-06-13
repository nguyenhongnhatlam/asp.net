﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Demos_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/Text.txt");
            string MessageBody = File.ReadAllText(fileName);
            MessageBody = MessageBody.Replace("##Name##", Name.Text);
            MessageBody = MessageBody.Replace("##Email##", EmailAddress.Text);
            MessageBody = MessageBody.Replace("##PhoneHome##", PhoneHome.Text);
            MessageBody = MessageBody.Replace("##ConfirmMatKhauAddress##", ConfirmMatKhauAddress.Text);
            MessageBody = MessageBody.Replace("##Comments##", Comments.Text);
            Message.Visible = true;
            Message.Text = MessageBody;
            FormTable.Visible = false;
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}