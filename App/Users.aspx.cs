using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Web.Services;
using System.Web.Script.Services;

public partial class App_Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String GetGridData()
    {
        ClsLogistic log = new ClsLogistic();
        ClsData DataJSon = new ClsData();

        MembershipUser currentUser = Membership.GetUser();
        string user = currentUser.UserName.ToString();
        bool isAdmin = HttpContext.Current.Session["Profile"].ToString() == "1" ? false : true;

        return DataJSon.fGetJson(log.getUsers(isAdmin, user));
    }
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String GetProfiles()
    {
        ClsLogistic user = new ClsLogistic(); 
        ClsData DataJSon = new ClsData();

        return DataJSon.fGetJson(user.getComboProfileActive());
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String CRUD_USERS(String xType, String xUser, String xPassword, String xEmail, String xProfile, String xCellPhone,
                                    String xName, String xLastName, String xDocumentType, String xDni)
    {
        ClsLogistic log = new ClsLogistic();
        MembershipUser currentUser = Membership.GetUser();
        string user = currentUser.UserName.ToString();

        if ((int.Parse(xType) == 3) && (xUser == user))
            return "No se puede eliminar el mismo usuario";


        return log.CRUD_USER(int.Parse(xType), xUser, xPassword, xEmail, xProfile, xCellPhone, xName, xLastName, int.Parse(xDocumentType), xDni);
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String CHANGE_PASSWORD(int xType, String xOldPassword, String xPassword, String xUser)
    {
        //MembershipUser currentUser = Membership.GetUser();
        //string user = currentUser.UserName.ToString();
        ClsUsers log = new ClsUsers();

        return log.CHANGE_PASSWORD(xType, xUser, xOldPassword, xPassword);
    }
    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String GetUser(String userName)
    {
        ClsLogistic log = new ClsLogistic();
        ClsData DataJSon = new ClsData();
                
        bool isAdmin = true;

        return DataJSon.fGetJson(log.getUsers(isAdmin, userName));
    }

    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String fGetExistUserName(String oldUserName, String newUserName)
    {
        ClsLogistic log = new ClsLogistic();

        return log.fGetExistUserName(oldUserName, newUserName).ToString();
    }
    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String fGetExistUserNameDocument(string pDocumentTypeId, string pDni, string pUserName)
    {
        ClsLogistic cls = new ClsLogistic();
        ClsData data = new ClsData();

        return cls.fGetExistUserNameDocument(pDocumentTypeId, pDni, pUserName).ToString();
    }
}