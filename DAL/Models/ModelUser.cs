﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Models
{
    public class ModelUser
    {
        public int UserID { get; set; }
        [Required]
        [DisplayName("User Name")]
        public string UserName { get; set; }
        [Required]
        [DisplayName("Email Address")]
        public string UserEmail { get; set; }
        [Required]
        [DisplayName("Passwordq")]
        public string UserPassword { get; set; }
        [DisplayName("Confirm Password")]
        [Compare("UserPassword", ErrorMessage = "Confirm password doesn't match")]
        public string UserConPassword { get; set; }

    }
}
