using System;
using System.Collections.Generic;
using SVC.Framework.Contract;

namespace SVC.OA.Contract
{
    public class StaffRequest : Request
    {
        public string Name { get; set; }
        public int BranchId { get; set; }
    }

    public class BranchRequest : Request
    {
        public string Name { get; set; }
    }
}
