﻿
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;

    public partial class JooleDatabaseEntities : DbContext
    {
        public JooleDatabaseEntities()
            : base("name=JooleDatabaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Category> Category { get; set; }
        public DbSet<Manufacturers> Manufacturers { get; set; }
        public DbSet<Products> Products { get; set; }
        public DbSet<Property> Property { get; set; }
        public DbSet<PropertyValue> PropertyValue { get; set; }
        public DbSet<SubCategory> SubCategory { get; set; }
        public DbSet<TechSpecFilter> TechSpecFilter { get; set; }
        public DbSet<TypeFilter> TypeFilter { get; set; }
        public DbSet<Users> Users { get; set; }

        public virtual int addUser(string name, string email, string password)
        {
            var nameParameter = name != null ?
                new ObjectParameter("UserName", name) :
                new ObjectParameter("UserName", typeof(string));

            var emailParameter = email != null ?
                new ObjectParameter("UserEmail", email) :
                new ObjectParameter("UserEmail", typeof(string));

            var passwordParameter = password != null ?
                new ObjectParameter("UserPassword", password) :
                new ObjectParameter("UserPassword", typeof(string));

            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("addUser", nameParameter, emailParameter, passwordParameter);
        }
    }
   
}
