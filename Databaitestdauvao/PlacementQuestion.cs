namespace TestDauVao.Databaitestdauvao
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PlacementQuestion")]
    public partial class PlacementQuestion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PlacementQuestion()
        {
            UserAnswers = new HashSet<UserAnswer>();
        }

        [Key]
        public int IDQuestion { get; set; }

        public string Question { get; set; }

        [StringLength(200)]
        public string OptionA { get; set; }

        [StringLength(200)]
        public string OptionB { get; set; }

        [StringLength(200)]
        public string OptionC { get; set; }

        [StringLength(200)]
        public string OptionD { get; set; }

        [StringLength(200)]
        public string Answer { get; set; }

        public int? IDPlacementTest { get; set; }

        public virtual PlacementTest PlacementTest { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserAnswer> UserAnswers { get; set; }
    }
}
