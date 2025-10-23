using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using TestDauVao.Toeic_database;
using System.Data.Entity;
using System.Data.SqlClient;
using TestDauVao.TestDauVao.Services;

namespace TestDauVao.Services
{
    public class PlacementTestService
    {


        public List<Question> GetRandomQuestionsForTest(int testId)
        {
            if (testId == 0)
            {
                MessageBox.Show("Lỗi: testID không thể tải", "Lỗi từ dữ liệu tải", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
            else
            {
                if (testId == 1)
                {
                    try
                    {
                        using (var dbcontext = new Toiec_database_table())
                        {
                            var questions = dbcontext.Database.SqlQuery<Question>(
                                        "EXEC sp_GetPlacementTestQuestions"
                                                                            ).ToList();
                            return questions;
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Lỗi khi tải câu hỏi từ CSDL: " + ex.Message, "Lỗi CSDL", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                }
                else if (testId >= 2 && testId <= 38)
                {
                    try
                    {
                        using (var dbcontext = new Toiec_database_table())
                        {
                            var questions = dbcontext.Database.SqlQuery<Question>(
                                        "EXEC dbo.sp_GetStandardTestQuestions @TestID",
                                        new SqlParameter("@TestID", testId)
                                                                            ).ToList();

                            return questions;
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Lỗi khi tải câu hỏi từ CSDL: " + ex.Message, "Lỗi CSDL", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                }
                else
                {
                    
                    MessageBox.Show("Lỗi: testID không hợp lệ", "Lỗi từ dữ liệu tải", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return null;
                }
            }
        }



        public bool SaveTestResult(int userId, int testId, double finalScore, int timeSpentInSeconds, string assignedLevelName)
        {
            try
            {
                using (var dbContext = new Toiec_database_table())
                {

                    var level = dbContext.Levels.FirstOrDefault(l => l.NameLevel == assignedLevelName);

                    if (level == null)
                    {
                        level = dbContext.Levels.Find(1);
                        if (level == null)
                        {
                            throw new Exception("Lỗi: Không tìm thấy Level mặc định (ID 1).");
                        }
                    }

                    var newTestAttempt = new TestAttempt
                    {
                        IDUser = userId,
                        IDTest = testId,
                        Score = finalScore,
                        DateTaken = DateTime.Now,
                        AssignedLevelID = level.IDLevel
                    };


                    dbContext.TestAttempts.Add(newTestAttempt);
                    dbContext.SaveChanges();

                    return true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi khi lưu kết quả vào CSDL: {ex.Message}", "Lỗi CSDL", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }
        // Trong PlacementTestService.cs

        public List<TestAttemptHistory> GetUserTestHistory(int userId)
        {
            using (var dbContext = new Toiec_database_table())
            {
                var history = (from attempt in dbContext.TestAttempts
                               join test in dbContext.Tests on attempt.IDTest equals test.IDTest
                               join level in dbContext.Levels on attempt.AssignedLevelID equals level.IDLevel
                               where attempt.IDUser == userId
                               orderby attempt.DateTaken descending // Sắp xếp theo ngày làm gần nhất
                               select new TestAttemptHistory
                               {
                                   TestTitle = test.Title,
                                   ScorePercentage = (double)attempt.Score,
                                   DateCompleted = (DateTime)attempt.DateTaken,
                                   LevelAssigned = level.NameLevel
                               }).ToList();

                return history;
            }
        }

    }
}