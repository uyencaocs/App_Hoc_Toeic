namespace TestDauVao.Databaitestdauvao
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PlacementTestResult")]
    public partial class PlacementTestResult
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PlacementTestResult()
        {
            UserAnswers = new HashSet<UserAnswer>();
        }

        [Key]
        public int IDResult { get; set; }

        public double Score { get; set; }

        public int? AssignedLevel { get; set; }

        public DateTime? Date { get; set; }

        public int? IDPlacementTest { get; set; }

        public int? IDUser { get; set; }

        public virtual Level Level { get; set; }

        public virtual PlacementTest PlacementTest { get; set; }

        public virtual User User { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserAnswer> UserAnswers { get; set; }
    }
}
