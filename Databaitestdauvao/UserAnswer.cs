namespace TestDauVao.Databaitestdauvao
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

        public int? IDResult { get; set; }

        public int? IDQuestion { get; set; }

        [StringLength(1)]
        public string UserChoice { get; set; }

        public bool? IsCorrect { get; set; }

        public virtual PlacementQuestion PlacementQuestion { get; set; }

        public virtual PlacementTestResult PlacementTestResult { get; set; }
    }
}
