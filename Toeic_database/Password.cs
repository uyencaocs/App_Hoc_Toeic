namespace TestDauVao.Toeic_database
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

        [Column("Password")]
        [Required]
        [StringLength(100)]
        public string Password1 { get; set; }

        public virtual User User { get; set; }
    }
}
