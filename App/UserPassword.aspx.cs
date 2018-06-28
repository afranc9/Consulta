using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Web.Services;
using System.Web.Script.Services;
public partial class App_UserPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String CHANGE_PASSWORD(int xType, String xOldPassword, String xPassword)
    {
        MembershipUser currentUser = Membership.GetUser();
        string user = currentUser.UserName.ToString();
        ClsUsers log = new ClsUsers();

        return log.CHANGE_PASSWORD(xType, user, xOldPassword, xPassword);
    }
}