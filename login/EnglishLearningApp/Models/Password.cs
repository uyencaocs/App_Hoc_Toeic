namespace EnglishLearningApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Password")]
    public partial class Password
    {
        [Key]
        public int IDPassword { get; set; }

        public int? IDUser { get; set; }

        [Column("PassWord")]
        [Required]
        [StringLength(100)]
        public string PassWord1 { get; set; }

        public virtual User User { get; set; }
    }
}
