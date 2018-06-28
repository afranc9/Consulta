using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Security;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class App_App : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser currentUser = Membership.GetUser();
        if (currentUser == null)
            Response.Redirect("../Default.aspx");

        if (!IsPostBack)
            initSessionVariables(currentUser);
        
    }   

    private void initSessionVariables(MembershipUser user)
    {       
        ClsLogistic cls = new ClsLogistic();
        System.Data.DataTable dt = cls.getUserInfo(user.UserName);
        Session["User"] = dt.Rows[0]["UserName"].ToString();
        Session["Profile"] = dt.Rows[0]["PROFILE_ID"].ToString();
        Session["LegalName"] = dt.Rows[0]["NAME"].ToString() + " " + dt.Rows[0]["LAST_NAME"].ToString();

        lblUser01.InnerHtml = user.UserName;
        lblUser02.InnerHtml = user.UserName + "<small>" + dt.Rows[0]["PROFILE"].ToString() + "</small>";
        lblUser03.InnerHtml = user.UserName;
        hdUserName.Value = user.UserName;
    }
}
