using System;
using System.Collections.Generic;
using SVC.Account.Contract;
using SVC.Core.Cache;
using SVC.Core.Service;
using SVC.Cms.Contract;
using SVC.Crm.Contract;
using SVC.OA.Contract;

namespace SVC.Web
{
    public class ServiceContext
    {
        public static ServiceContext Current
        {
            get
            {
                return CacheHelper.GetItem<ServiceContext>("ServiceContext", () => new ServiceContext());
            }
        }
        
        public IAccountService AccountService
        {
            get
            {
                return ServiceHelper.CreateService<IAccountService>();
            }
        }

        public ICmsService CmsService
        {
            get
            {
                return ServiceHelper.CreateService<ICmsService>();
            }
        }

        public ICrmService CrmService
        {
            get
            {
                return ServiceHelper.CreateService<ICrmService>();
            }
        }

        public IOAService OAService
        {
            get
            {
                return ServiceHelper.CreateService<IOAService>();
            }
        }
    }
}
