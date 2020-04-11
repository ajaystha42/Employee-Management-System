using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Alert
/// </summary>

namespace Employee_Management_System
{

    public class Alert
    {
        public Alert()
        {
            //
            // TODO: Add constructor logic here
            //
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Alert('success','title','msg')", true);

            //----- One Way----If you are not using ScriptManager on page-------------

        }
        public void callAlert(string success, string title, string msg)
        {

            System.Web.UI.Page mypage = (System.Web.UI.Page)HttpContext.Current.Handler;
            mypage.RegisterStartupScript("alert", "<script language=javascript>Alert('" + success + "','" + title + "','" + msg + "');</script>");
            //mypage.RegisterStartupScript("alert", "<script language=javascript>Alert(" + success + "," + title + "," + msg + ");</script>");

        }
    }
}
