using System;
using System.Collections.Generic;
using SVC.Framework.Contract;

namespace SVC.Cms.Contract
{
    public class ArticleRequest : Request
    {

        public string Title { get; set; }
        public int ChannelId { get; set; }
        public bool? IsActive { get; set; }
    }

    public class ChannelRequest : Request
    {
        public string Name { get; set; }
        public bool? IsActive { get; set; }
    }

    public class TagRequest : Request
    {
        public Orderby Orderby { get; set; }
    }

    public enum Orderby
    {
        ID = 0,
        Hits = 1
    }
}
