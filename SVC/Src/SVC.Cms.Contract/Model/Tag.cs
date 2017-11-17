using System;
using System.Linq;
using SVC.Framework.Contract;
using System.Collections.Generic;
using SVC.Framework.Utility;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace SVC.Cms.Contract
{
    [Serializable]
    [Table("Tag")]
    public class Tag : ModelBase
    {
        public Tag()
        {
 
        }

        [StringLength(100)]
        [Required]
        public string Name { get; set; }
        public int Hits { get; set; }

        public virtual List<Article> Articles { get; set; }

    }
}
