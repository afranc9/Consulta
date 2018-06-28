using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;

using Newtonsoft.Json;
using System.Web.Security;
/// <summary>
/// Clase que manejara toda la obtencion y manejo de los datos de los productos
/// </summary>
public class ClsLogistic
{

    #region DECLARACIONES
    ClsData Data = new ClsData();
    string vSQL;

    //Constantes
    public const int TYPE_INSERT = 1, TYPE_UPDATE = 2, TYPE_DELETE = 3, TYPE_APPROVE = 4, TYPE_LOCK = 4, TYPE_UNLOCK = 5, TYPE_CHANGEPASSWORD = 6, TYPE_RESETPASSWORD = 7, TYPE_CHANGE_GENERALDATA = 8;
    private const int STATUS_INACTIVE = 0, STATUS_ACTIVE = 1;

    //Datos de Usuario
    public string sUser;
    #endregion
    #region MENUYOTROS
    public DataTable getThemeById(string IdTheme)
    {
        vSQL = @" SELECT IdTema, titulo, contenido, imagen, fecharegistro, activo
                    FROM TBTEMAS
                WHERE ACTIVO = 1 AND idTema =" + IdTheme;
        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    #endregion


    #region USUARIOS
    public DataTable getUserInfo(string pUser)
    {
        vSQL = @"SELECT C.UserName, c.PROFILE_ID, ISNULL(c.NAME,'') AS NAME , ISNULL(c.LAST_NAME,'') AS LAST_NAME ,
                 P.NAME AS PROFILE
                 FROM CONFIG_USER C
                 INNER JOIN dbo.CONFIG_USER_PROFILE P ON P.PROFILE_ID = C.PROFILE_ID WHERE C.UserName = '" + pUser + "'";
        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public DataTable getUsers(bool pFilter, string pUser)
    {
        string filter = pFilter ? " WHERE U.UserName = '" + pUser + "' " : "";
        vSQL = @"SELECT U.ApplicationId, U.UserId, U.UserName, U.LastActivityDate, M.Email, CAST(M.IsLockedOut AS BIT) [IsLockedOut],
                M.CreateDate,P.NAME [PROFILE], P.PROFILE_ID,
                CU.NAME, LAST_NAME, CELL_PHONE, D.DESCRIPCION AS DOCUMENT_TYPE, DNI, CU.DOCUMENT_TYPE_ID
                FROM aspnet_Users [U]
                INNER JOIN aspnet_Membership [M] ON U.UserId = M.UserId
                INNER JOIN CONFIG_USER [CU] ON U.UserName = CU.UserName
                INNER JOIN CONFIG_USER_PROFILE [P] ON CU.PROFILE_ID = P.PROFILE_ID  
                LEFT JOIN DOCUMENT_TYPE D ON D.DOCUMENT_TYPE_ID = CU.DOCUMENT_TYPE_ID " + filter + @"                
                ORDER BY UserName";

        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public DataTable getUsersClient()
    {
        vSQL = @"SELECT UserName, NAME , LAST_NAME 
                    FROM CONFIG_USER WHERE PROFILE_ID = 2 ";

        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public int fGetExistUserName(string oldUserName, string newUserName)
    {
        int exist = 0;

        Data.OPEN_CONNECTION(Data.CONECTION);
        Data.CMD = new System.Data.SqlClient.SqlCommand("DECLARE @exist INT " +
                                                        "if exists (select top 1 * from dbo.[CONFIG_USER] c where c.[UserName]= '" + newUserName + "' and c.[UserName] <> '" + oldUserName + "' )" +
                                                        "SET @exist = 1 " +
                                                        "ELSE " +
                                                        "SET @exist = 0 " +

                                                        "SELECT @exist AS EXIST", Data.CNN);
        Data.SQLDR = Data.CMD.ExecuteReader();

        while (Data.SQLDR.Read())
        {
            exist = int.Parse(Data.SQLDR[0].ToString());
        }

        return exist;
    }//fin de la funcion
    public DataTable fGetRolePermissionByMenu(int pProfileId, string pMenu)
    {
        vSQL = @"select p.permission_id from dbo.app_rol_permissions_menu p
                 where p.profile_id = " + pProfileId + " and menu_name = '" + pMenu + "'";

        return Data.GET_DT(vSQL, Data.CONECTION);
    }

    public DataTable getComboProfile()
    {
        vSQL = @"SELECT PROFILE_ID [ID], NAME , CAST(ISNULL(STATUS,0) AS BIT) AS STATUS
                    FROM CONFIG_USER_PROFILE
                    ORDER BY NAME";
        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public DataTable getComboProfileActive()
    {
        vSQL = @"SELECT PROFILE_ID [ID], NAME , CAST(ISNULL(STATUS,0) AS BIT) AS STATUS
                    FROM CONFIG_USER_PROFILE
                    WHERE STATUS = 1
                    ORDER BY NAME";
        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public string CRUD_USER(int pType, string pUser, string pPassword, string pEmail, string pProfile, string pCellPhone,
                            string pName, string pLastName, int pDocumentType, string pDni)
    {
        string res = "OK";
        try
        {

            if (pType == TYPE_INSERT)
            {
                //Asociar usuario a tabla de config 
                vSQL = @"INSERT INTO CONFIG_USER(UserName,PROFILE_ID,NAME, LAST_NAME, CELL_PHONE,
                                                 DOCUMENT_TYPE_ID,DNI) VALUES('" + pUser + "'," + pProfile + ",'" + pName +
                                                                                "','" + pLastName + "','" + pCellPhone +
                                                                                "'," + pDocumentType + ",'" + pDni + "')";
                Data.OPERATIONS(vSQL);

                Membership.CreateUser(pUser, pPassword, pEmail);
            }
            else if (pType == TYPE_UPDATE)
            {
                MembershipUser user = Membership.GetUser(pUser);
                res = user.ResetPassword();
            }
            else if (pType == TYPE_DELETE)
            {
                vSQL = "DELETE FROM CONFIG_USER WHERE UserName = '" + pUser + "'";
                Data.OPERATIONS(vSQL);

                Membership.DeleteUser(pUser);
            }
            else if (pType == TYPE_LOCK)
            {
                vSQL = @"UPDATE aspnet_Membership SET IsLockedOut = 1 WHERE UserId = '" + pUser + "'";
                Data.OPERATIONS(vSQL);
            }
            else if (pType == TYPE_UNLOCK)
            {
                vSQL = @"UPDATE aspnet_Membership SET IsLockedOut = 0 WHERE UserId = '" + pUser + "'";
                Data.OPERATIONS(vSQL);
            }
            else if (pType == TYPE_CHANGE_GENERALDATA)
            {
                vSQL = @"DECLARE @_userId NVARCHAR(250) 

                        SELECT @_userId = u.UserId
                        FROM dbo.aspnet_Users u
                        WHERE u.UserName = '" + pUser + @"'

                        UPDATE  dbo.aspnet_Membership 
                        SET Email = '" + pEmail + @"'
                        WHERE UserId = @_userId

                        UPDATE dbo.CONFIG_USER 
                        SET PROFILE_ID = " + pProfile + @",
                        [NAME] = '" + pName + @"',
                        [LAST_NAME] = '" + pLastName + @"',
                        [CELL_PHONE] = '" + pCellPhone + @"',
                        [DOCUMENT_TYPE_ID] = " + pDocumentType + @",
                        [DNI] = '" + pDni + @"'
                        WHERE UserName = '" + pUser + "'";
                Data.OPERATIONS(vSQL);
            }
        }
        catch (Exception ex)
        {
            if (pType == TYPE_INSERT)
            {
                vSQL = "DELETE FROM CONFIG_USER WHERE UserName = '" + pUser + "'";
                Data.OPERATIONS(vSQL);
            }

            res = ex.Message;
        }

        return res;
    }
    public string CRUD_PROFILE_MENU(int pType, string pProfileId, string pProfile, string xDetail)
    {
        string res = "OK";


        string InsertDetail = "";

        InsertDetail += @"
                           INSERT INTO [dbo].[APP_MENU_PROFILE] ([PROFILE_ID] ,[MENU_ID],[ACTIVE]) VALUES";

        if (xDetail != "")
        {
            List<ClsObjects.DataFile> detail = JsonConvert.DeserializeObject<List<ClsObjects.DataFile>>(xDetail);

            if (pProfileId == "0")
            {
                for (int i = 0; i < detail.Count; i++)
                {
                    if (i == detail.Count - 1)
                        InsertDetail += string.Format(" (@_ID,{0},{1});", detail[i].id, detail[i].value);
                    else
                        InsertDetail += string.Format(" (@_ID,{0},{1}),", detail[i].id, detail[i].value);
                }

            }
            else
            {
                for (int i = 0; i < detail.Count; i++)
                {
                    if (i == detail.Count - 1)
                        InsertDetail += string.Format(" ({0},{1},{2});", pProfileId, detail[i].id, detail[i].value);
                    else
                        InsertDetail += string.Format(" ({0},{1},{2}),", pProfileId, detail[i].id, detail[i].value);
                }
            }

        }
        try
        {
            if (pType == TYPE_INSERT)
            {
                vSQL = @"DECLARE @_ID INT = 0

                        SELECT @_ID =  MAX(C.PROFILE_ID) + 1
		                         FROM dbo.CONFIG_USER_PROFILE C
                        
                        INSERT INTO [dbo].[CONFIG_USER_PROFILE]([PROFILE_ID],[NAME])
                         VALUES(@_ID,'" + pProfile + @"')   "

                         + InsertDetail;
            }
            else if (pType == TYPE_UPDATE)
            {
                vSQL = @"UPDATE [dbo].[CONFIG_USER_PROFILE]
                           SET [NAME] = '" + pProfile + @"'
                         WHERE [PROFILE_ID] = " + pProfileId + @"
                            
                            DELETE FROM [dbo].[APP_MENU_PROFILE] WHERE PROFILE_ID = " + pProfileId +
                             " " + InsertDetail;
            }
            else if (pType == TYPE_DELETE)
            {
                vSQL = @"UPDATE [dbo].[CONFIG_USER_PROFILE]
                           SET [STATUS] = 0
                         WHERE [PROFILE_ID] = " + pProfileId;
            }
            else if (pType == TYPE_APPROVE)
            {
                vSQL = @"UPDATE [dbo].[CONFIG_USER_PROFILE]
                           SET [STATUS] = 1
                         WHERE [PROFILE_ID] = " + pProfileId;
            }

            Data.OPERATIONS(vSQL);
        }
        catch (Exception)
        {
            res = "error";
        }
        return res;
    }
    public DataTable getMenuByProfile(string pProfileId)
    {
        vSQL = @"

                DECLARE @_PROFILE VARCHAR(150) = ''

                SET @_PROFILE = (SELECT C.NAME FROM dbo.CONFIG_USER_PROFILE C WHERE C.PROFILE_ID = " + pProfileId + @")                   

                SELECT C.[PROFILE_ID]
	              ,C.NAME AS PROFILE
                  ,M.[MENU_ID]
	              ,AM.NAME
                  ,M.[ACTIVE]
                  ,AM.HAVE_LEVEL
              FROM [dbo].[APP_MENU_PROFILE] M
              INNER JOIN dbo.CONFIG_USER_PROFILE C ON C.PROFILE_ID = M.PROFILE_ID
              INNER JOIN dbo.APP_MENU AM ON AM.MENU_ID = M.MENU_ID
              WHERE M.PROFILE_ID = " + pProfileId + @"
                
              UNION

              SELECT " + pProfileId + @" AS PROFILE_ID, @_PROFILE AS PROFILE, MENU_ID, NAME, CAST(0 AS BIT) AS ACTIVE, HAVE_LEVEL
              FROM dbo.APP_MENU 
              WHERE MENU_ID NOT IN (SELECT MENU_ID
                                    FROM dbo.APP_MENU_PROFILE
                                    WHERE PROFILE_ID = " + pProfileId + @")";

        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public DataTable getMenuPages()
    {
        vSQL = @"
                SELECT M.*, ISNULL(C.MENU_ID,0) [FATHER_ID], ISNULL(C.CHILD_ID,0) [CHILD_ID]
                FROM APP_MENU [M]
	                LEFT JOIN APP_MENU_CHILD [C] ON M.MENU_ID = C.CHILD_ID
                 AND M.STATUS_ID = 1
                ORDER BY M.POSITION";

        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public DataTable getMenu(string pUser)
    {
        vSQL = @"DECLARE @PROFILE INT
                SET @PROFILE = (
	                SELECT PROFILE_ID
	                FROM CONFIG_USER 
	                WHERE UserName = '" + pUser + @"'
                )

                SELECT M.*,ISNULL(CD.MENU_ID,0) [FATHER_ID], ISNULL(CD.CHILD_ID,0) [CHILD_ID] FROM dbo.APP_MENU_PROFILE C
                INNER JOIN dbo.APP_MENU M ON M.MENU_ID = C.MENU_ID
                LEFT JOIN APP_MENU_CHILD [CD] ON M.MENU_ID = CD.CHILD_ID
                LEFT JOIN dbo.APP_MENU MF ON MF.MENU_ID = CD.MENU_ID
                WHERE C.PROFILE_ID  = @PROFILE AND C.ACTIVE = 1 AND M.STATUS_ID = 1
                OR (M.MENU_ID IN (
				                SELECT DISTINCT MC.MENU_ID FROM dbo.APP_MENU_PROFILE MI
				                INNER JOIN dbo.APP_MENU_CHILD MC ON MC.CHILD_ID = MI.MENU_ID
				                WHERE MI.PROFILE_ID = @PROFILE AND MI.ACTIVE = 1
				                ) AND  C.PROFILE_ID = @PROFILE)
                ORDER BY M.POSITION

                ";
        return Data.GET_DT(vSQL, Data.CONECTION);
    }
    public int fGetExistProfile(string ProfileId, string Profile)
    {
        int exist = 0;

        Data.OPEN_CONNECTION(Data.CONECTION);
        Data.CMD = new System.Data.SqlClient.SqlCommand(" DECLARE @exist INT " +
                                                        " if exists (select top 1 * from dbo.CONFIG_USER_PROFILE c where c.name= '" + Profile + "' and C.PROFILE_ID <> " + ProfileId + " )" +
                                                        " SET @exist = 1 " +
                                                        " ELSE " +
                                                        " SET @exist = 0 " +

                                                        " SELECT @exist AS EXIST", Data.CNN);
        Data.SQLDR = Data.CMD.ExecuteReader();

        while (Data.SQLDR.Read())
        {
            exist = int.Parse(Data.SQLDR[0].ToString());
        }

        return exist;
    }//fin de la funcion
    public int fGetExistuserWithProfile(string ProfileId)
    {
        int exist = 0;

        Data.OPEN_CONNECTION(Data.CONECTION);
        Data.CMD = new System.Data.SqlClient.SqlCommand("DECLARE @exist INT = 0 " +

                                                        " IF EXISTS (SELECT * FROM dbo.CONFIG_USER C WHERE C.PROFILE_ID = " + ProfileId + ")" +
                                                        " SET @exist = 1" +
                                                        " ELSE" +
                                                        " SET @exist = 0" +

                                                        " SELECT @exist AS EXIST", Data.CNN);
        Data.SQLDR = Data.CMD.ExecuteReader();

        while (Data.SQLDR.Read())
        {
            exist = int.Parse(Data.SQLDR[0].ToString());
        }

        return exist;
    }//fin de la funcion
    public int fGetExistUserNameDocument(string pDocumentTypeId, string pDni, string pUserName)
    {
        int exist = 0;
        //Data.CNN
        //Data.CNN(Data.CONECTION);
        Data.OPEN_CONNECTION(Data.CONECTION);
        Data.CMD = new System.Data.SqlClient.SqlCommand("DECLARE @exist INT " +
                                                        " IF EXISTS (SELECT *  FROM CONFIG_USER C " +
                                                         " WHERE C.DOCUMENT_TYPE_ID = " + pDocumentTypeId + " AND C.DNI = '" + pDni + "' AND C.UserName <> '" + pUserName + "')	" +
                                                        " SET @exist = 1 " +
                                                        " ELSE " +
                                                        " SET @exist = 0 " +

                                                        "SELECT @exist AS EXIST", Data.CNN);
        Data.SQLDR = Data.CMD.ExecuteReader();

        while (Data.SQLDR.Read())
        {
            exist = int.Parse(Data.SQLDR[0].ToString());
        }

        return exist;
    }
    #endregion
}