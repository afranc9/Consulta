using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Web.Services;
using System.Web.Script.Services;

public partial class App_Profiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String GetComboProfiles()
    {
        ClsLogistic user = new ClsLogistic();
        ClsData data = new ClsData();

        return data.fGetJson(user.getComboProfile());
    }
    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String Crud_Profiles(int pType, string pProfileId, string pProfile, string xDetail)
    {
        ClsLogistic user = new ClsLogistic();
        ClsData data = new ClsData();

        return user.CRUD_PROFILE_MENU(pType, pProfileId, pProfile, xDetail);
    }
    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String LoadProfileMenu(string pProfile)
    {
        ClsLogistic user = new ClsLogistic();
        ClsData data = new ClsData();

        return data.fGetJson(user.getMenuByProfile(pProfile));
    }
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String LoadPagesMenu()
    {
        ClsLogistic cls = new ClsLogistic();
        ClsData DataJSon = new ClsData();
        return DataJSon.fGetJson(cls.getMenuPages());
    }
    //valida que no exista un perfil con esa descripcion
    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String fGetExistProfile(string pProfileId, string pProfile)
    {
        ClsLogistic cls = new ClsLogistic();
        ClsData data = new ClsData();

        return cls.fGetExistProfile(pProfileId, pProfile).ToString();
    }// fin de la funcion

    //valida que no exista un usuario con este perfil
    [WebMethod(EnableSession = true)]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static String fGetExistuserWithProfile(string pProfileId)
    {
        ClsLogistic cls = new ClsLogistic();
        ClsData data = new ClsData();

        return cls.fGetExistuserWithProfile(pProfileId).ToString();
    }// fin de la funcion


}