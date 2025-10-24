namespace Main.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UserAnswer")]
    public partial class UserAnswer
    {
        [Key]
        public int IDUserAnswer { get; set; }

        [StringLength(200)]
        public string ChosenAnswer { get; set; }

        public bool? IsCorrect { get; set; }

        public int IDTestAttempt { get; set; }

        public int IDQuestion { get; set; }

        public virtual Question Question { get; set; }

        public virtual TestAttempt TestAttempt { get; set; }
    }
}
