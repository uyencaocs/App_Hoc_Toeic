using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace EnglishLearningApp.Models
{
    public partial class TiengAnhDB : DbContext
    {
        public TiengAnhDB()
            : base("name=TiengAnhDB")
        {
        }

        public virtual DbSet<Grammar> Grammar { get; set; }
        public virtual DbSet<Level> Level { get; set; }
        public virtual DbSet<PartToeic> PartToeic { get; set; }
        public virtual DbSet<Password> Password { get; set; }
        public virtual DbSet<Question> Question { get; set; }
        public virtual DbSet<Test> Test { get; set; }
        public virtual DbSet<TestAttempt> TestAttempt { get; set; }
        public virtual DbSet<Topic> Topic { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<UserAnswer> UserAnswer { get; set; }
        public virtual DbSet<Vocabulary> Vocabulary { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Level>()
                .HasMany(e => e.Test)
                .WithRequired(e => e.Level)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Level>()
                .HasMany(e => e.TestAttempt)
                .WithOptional(e => e.Level)
                .HasForeignKey(e => e.AssignedLevelID);

            modelBuilder.Entity<Question>()
                .HasMany(e => e.UserAnswer)
                .WithRequired(e => e.Question)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Test>()
                .HasMany(e => e.Question)
                .WithRequired(e => e.Test)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Test>()
                .HasMany(e => e.TestAttempt)
                .WithRequired(e => e.Test)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TestAttempt>()
                .HasMany(e => e.UserAnswer)
                .WithRequired(e => e.TestAttempt)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Topic>()
                .HasMany(e => e.Test)
                .WithRequired(e => e.Topic)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.TestAttempt)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);
        }
    }
}
