namespace TestDauVao.Toeic_database
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            Passwords = new HashSet<Password>();
            TestAttempts = new HashSet<TestAttempt>();
        }

        [Key]
        public int IDUser { get; set; }

        [Required]
        [StringLength(50)]
        public string UserName { get; set; }

        [StringLength(100)]
        public string FullName { get; set; }

        public int? Age { get; set; }

        [Required]
        [StringLength(100)]
        public string Password { get; set; }

        [StringLength(100)]
        public string Email { get; set; }

        [StringLength(15)]
        public string NumPhone { get; set; }

        public int? IDLevel { get; set; }

        public virtual Level Level { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Password> Passwords { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TestAttempt> TestAttempts { get; set; }
    }
}
