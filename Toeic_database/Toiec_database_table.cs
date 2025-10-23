using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace TestDauVao.Toeic_database
{
    public partial class Toiec_database_table : DbContext
    {
        public Toiec_database_table()
            : base("name=Toiec_database_table1")
        {
        }

        public virtual DbSet<Grammar> Grammars { get; set; }
        public virtual DbSet<Level> Levels { get; set; }
        public virtual DbSet<Password> Passwords { get; set; }
        public virtual DbSet<Question> Questions { get; set; }
        public virtual DbSet<Test> Tests { get; set; }
        public virtual DbSet<TestAttempt> TestAttempts { get; set; }
        public virtual DbSet<Topic> Topics { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserAnswer> UserAnswers { get; set; }
        public virtual DbSet<Vocabulary> Vocabularies { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Level>()
                .HasMany(e => e.Grammars)
                .WithRequired(e => e.Level)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Level>()
                .HasMany(e => e.Tests)
                .WithRequired(e => e.Level)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Level>()
                .HasMany(e => e.TestAttempts)
                .WithOptional(e => e.Level)
                .HasForeignKey(e => e.AssignedLevelID);

            modelBuilder.Entity<Level>()
                .HasMany(e => e.Vocabularies)
                .WithRequired(e => e.Level)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Question>()
                .Property(e => e.Answer)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Question>()
                .HasMany(e => e.UserAnswers)
                .WithRequired(e => e.Question)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Test>()
                .HasMany(e => e.Questions)
                .WithRequired(e => e.Test)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Test>()
                .HasMany(e => e.TestAttempts)
                .WithRequired(e => e.Test)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TestAttempt>()
                .HasMany(e => e.UserAnswers)
                .WithRequired(e => e.TestAttempt)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Topic>()
                .HasMany(e => e.Grammars)
                .WithRequired(e => e.Topic)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Topic>()
                .HasMany(e => e.Tests)
                .WithRequired(e => e.Topic)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Topic>()
                .HasMany(e => e.Vocabularies)
                .WithRequired(e => e.Topic)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.TestAttempts)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<UserAnswer>()
                .Property(e => e.ChosenAnswer)
                .IsFixedLength()
                .IsUnicode(false);
        }
    }
}
