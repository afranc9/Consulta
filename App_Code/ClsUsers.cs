using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.Security;
/// <summary>
/// Summary description for ClsUsers
/// </summary>
public class ClsUsers
{
    #region DECLARACIONES
    ClsData Data = new ClsData();
    string vSQL;

    //Constantes
    public const int TYPE_INSERT = 1, TYPE_UPDATE = 2, TYPE_DELETE = 3, TYPE_LOCK = 4, TYPE_UNLOCK = 5, TYPE_CHANGEPASSWORD = 6, TYPE_RESETPASSWORD = 7;

    //Datos de Usuario
    public string sUser;
    #endregion

    public string CHANGE_PASSWORD(int pType, string pUser, string pOldPassword, string pNewPassword)
    {
        string res = "OK";
        try
        {
            if (pType == TYPE_CHANGEPASSWORD)
            {
                MembershipUser user = Membership.GetUser(pUser);
                user.ChangePassword(pOldPassword, pNewPassword);
            }
            else if (pType == TYPE_RESETPASSWORD)
            {
                MembershipUser user = Membership.GetUser(pOldPassword);
                res = res + ":" + user.ResetPassword();
            }


        }
        catch (Exception ex) { res = ex.Message; }
        return res;
    }
}