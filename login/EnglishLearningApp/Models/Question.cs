namespace EnglishLearningApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Question")]
    public partial class Question
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Question()
        {
            UserAnswer = new HashSet<UserAnswer>();
        }

        [Key]
        public int IDQuestion { get; set; }

        [Column("Question")]
        [Required]
        public string Question1 { get; set; }

        [StringLength(200)]
        public string OptionA { get; set; }

        [StringLength(200)]
        public string OptionB { get; set; }

        [StringLength(200)]
        public string OptionC { get; set; }

        [StringLength(200)]
        public string OptionD { get; set; }

        [Required]
        [StringLength(200)]
        public string Answer { get; set; }

        public int IDTest { get; set; }

        public virtual Test Test { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserAnswer> UserAnswer { get; set; }
    }
}
