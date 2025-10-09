namespace TestDauVao.Databaitestdauvao
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PlacementTest")]
    public partial class PlacementTest
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PlacementTest()
        {
            PlacementQuestions = new HashSet<PlacementQuestion>();
            PlacementTestResults = new HashSet<PlacementTestResult>();
        }

        [Key]
        public int IDPlacementTest { get; set; }

        [StringLength(200)]
        public string Title { get; set; }

        public string Description { get; set; }

        public int? TotalQuestion { get; set; }

        public int? IDUser { get; set; }

        public int? IDGrammar { get; set; }

        public int? IDWord { get; set; }

        public int? IDPart { get; set; }

        public virtual Grammar Grammar { get; set; }

        public virtual PartToeic PartToeic { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlacementQuestion> PlacementQuestions { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlacementTestResult> PlacementTestResults { get; set; }

        public virtual User User { get; set; }

        public virtual Vocabulary Vocabulary { get; set; }
    }
}
