namespace TestDauVao.Databaitestdauvao
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Vocabulary")]
    public partial class Vocabulary
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Vocabulary()
        {
            PlacementTests = new HashSet<PlacementTest>();
        }

        [Key]
        public int IDWord { get; set; }

        [Required]
        [StringLength(100)]
        public string Word { get; set; }

        [StringLength(200)]
        public string Meaning { get; set; }

        public string Example { get; set; }

        public int? IDLevel { get; set; }

        public int? IDTopic { get; set; }

        public virtual Level Level { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlacementTest> PlacementTests { get; set; }

        public virtual Topic Topic { get; set; }
    }
}
