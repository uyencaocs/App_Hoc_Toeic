namespace Main.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Grammar")]
    public partial class Grammar
    {
        [Key]
        public int IDGrammar { get; set; }

        [Required]
        [StringLength(200)]
        public string Title { get; set; }

        public string Lesson { get; set; }

        public string Example { get; set; }

        public int? IDLevel { get; set; }

        public int? IDTopic { get; set; }

        public virtual Level Level { get; set; }

        public virtual Topic Topic { get; set; }
    }
}
