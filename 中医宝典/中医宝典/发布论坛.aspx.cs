﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 论坛资讯
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string A = TextBox4.Text;
            


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string text = TextBox3.Text.Trim();
            Response.Redirect("搜索.aspx?text=" + text);
        }
    }
}