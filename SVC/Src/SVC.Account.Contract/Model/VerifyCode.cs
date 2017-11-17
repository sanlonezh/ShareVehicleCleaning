using System;
using System.Linq;
using SVC.Framework.Contract;
using System.Collections.Generic;
using SVC.Framework.Utility;
using System.ComponentModel.DataAnnotations.Schema;

namespace SVC.Account.Contract
{
    [Serializable]
    [Table("VerifyCode")]
    public class VerifyCode : ModelBase
    {
        public Guid Guid { get; set; }
        public string VerifyText { get; set; }
    }

}



