namespace EnglishLearningApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PartToeic")]
    public partial class PartToeic
    {
        [Key]
        public int IDPart { get; set; }

        [StringLength(100)]
        public string Title { get; set; }

        public string Description { get; set; }
    }
}
