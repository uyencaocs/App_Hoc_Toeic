namespace EnglishLearningApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TestAttempt")]
    public partial class TestAttempt
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TestAttempt()
        {
            UserAnswer = new HashSet<UserAnswer>();
        }

        [Key]
        public int IDTestAttempt { get; set; }

        public double? Score { get; set; }

        public DateTime? DateTaken { get; set; }

        public int IDUser { get; set; }

        public int IDTest { get; set; }

        public int? AssignedLevelID { get; set; }

        public virtual Level Level { get; set; }

        public virtual Test Test { get; set; }

        public virtual User User { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserAnswer> UserAnswer { get; set; }
    }
}
