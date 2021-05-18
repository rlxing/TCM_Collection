using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 中医古籍
{
    public partial class zhongyi3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["BookName"] != null)
            {
                Message.InnerHtml = "《" + Request["BookName"] +"》章节列表";//把值给前端的id为Message的标签
            }
            else
            {
                Response.Redirect("古籍1.aspx");
            }
        }
    }
}