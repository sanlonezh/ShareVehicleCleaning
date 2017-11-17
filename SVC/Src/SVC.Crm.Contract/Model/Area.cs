using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using SVC.Framework.Contract;

namespace SVC.Crm.Contract
{
     [Table("Area")]
    public class Area : ModelBase
    {
        [Required(ErrorMessage = "名称不能为空")]
        [StringLength(50)]
        public string Name { get; set; }

        public int CityId { get; set; }
    }
   
}
