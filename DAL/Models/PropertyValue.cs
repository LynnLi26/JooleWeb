//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PropertyValue
    {
        public int ProductID { get; set; }
        public int PropertyID { get; set; }
        public string PropertyValue1 { get; set; }
    
        public virtual Products Products { get; set; }
        public virtual Property Property { get; set; }
    }
}
