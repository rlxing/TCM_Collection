using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 中医古籍
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void input1_ServerClick(object sender, EventArgs e)
        {
            string name = "脉经";
            //Response.Write("<script>alert('hahaha')</script>");
            //Response.Redirect("zhongyi2.aspx?name=" + name);
            Response.Redirect("zhongyi3.aspx?BookName="+name);
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
        }
        public string SubStr(string sString, int nLength)
        {

            if (sString.Length <= nLength)
            {
                return sString;
            }
            string sNewStr = sString.Substring(0, nLength);
            sNewStr = sNewStr + "...";
            return sNewStr;
        }
    }
}