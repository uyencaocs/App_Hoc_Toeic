namespace TestDauVao.Databaitestdauvao
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Grammar")]
    public partial class Grammar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Grammar()
        {
            PlacementTests = new HashSet<PlacementTest>();
        }

        [Key]
        public int IDGrammar { get; set; }

        [Required]
        [StringLength(200)]
        public string Title { get; set; }

        public string Lesson { get; set; }

        public string Exercise { get; set; }

        public int? IDLevel { get; set; }

        public int? IDTopic { get; set; }

        public virtual Level Level { get; set; }

        public virtual Topic Topic { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlacementTest> PlacementTests { get; set; }
    }
}
