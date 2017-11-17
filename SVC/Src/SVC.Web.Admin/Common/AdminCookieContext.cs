using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SVC.Core.Cache;
using SVC.Framework.Utility;

namespace SVC.Web.Admin.Common
{
    public class AdminCookieContext : CookieContext
    {
        public static AdminCookieContext Current
        {
            get
            {
                return CacheHelper.GetItem<AdminCookieContext>();
            }
        }

        public override string KeyPrefix
        {
            get
            {
                return Fetch.ServerDomain + "_AdminContext_";
            }
        }
    }
}
