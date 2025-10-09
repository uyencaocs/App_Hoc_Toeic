using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace TestDauVao.Databaitestdauvao
{
    public partial class Testdauvao : DbContext
    {
        public Testdauvao()
            : base("name=Testdauvao")
        {
        }

        public virtual DbSet<Grammar> Grammars { get; set; }
        public virtual DbSet<Level> Levels { get; set; }
        public virtual DbSet<PartToeic> PartToeics { get; set; }
        public virtual DbSet<Password> Passwords { get; set; }
        public virtual DbSet<PlacementQuestion> PlacementQuestions { get; set; }
        public virtual DbSet<PlacementTest> PlacementTests { get; set; }
        public virtual DbSet<PlacementTestResult> PlacementTestResults { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Topic> Topics { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserAnswer> UserAnswers { get; set; }
        public virtual DbSet<Vocabulary> Vocabularies { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Level>()
                .HasMany(e => e.PlacementTestResults)
                .WithOptional(e => e.Level)
                .HasForeignKey(e => e.AssignedLevel);

            modelBuilder.Entity<UserAnswer>()
                .Property(e => e.UserChoice)
                .IsFixedLength()
                .IsUnicode(false);
        }
    }
}
