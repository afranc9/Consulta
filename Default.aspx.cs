﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //MembershipUser currentUser = Membership.GetUser();
            //string user = currentUser.UserName.ToString();

            //if (user != "")
            //{
            //    Response.Redirect("App/Dashboard.aspx");
            //}

        }
    }
}