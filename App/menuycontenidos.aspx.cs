using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Web.Services;
using System.Web.Script.Services;

public partial class App_menuycontenidos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String GetThemeById(string pIdTheme)
    {
        ClsLogistic log = new ClsLogistic();
        ClsData DataJSon = new ClsData();
        return DataJSon.fGetJson(log.getThemeById(pIdTheme));
    }

}