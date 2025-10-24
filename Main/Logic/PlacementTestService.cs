using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

using System.Data.Entity;
using System.Data.SqlClient;
using TestDauVao.TestDauVao.Services;
using Main.Data;

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
                        using (var dbcontext = new TiengAnhDB())
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
                        using (var dbcontext = new TiengAnhDB())
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
                using (var dbContext = new TiengAnhDB())
                {

                    var level = dbContext.Level.FirstOrDefault(l => l.NameLevel == assignedLevelName);

                    if (level == null)
                    {
                        level = dbContext.Level.Find(1);
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


                    dbContext.TestAttempt.Add(newTestAttempt);
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
            using (var dbContext = new TiengAnhDB())
            {
                var history = (from attempt in dbContext.TestAttempt
                               join test in dbContext.Test on attempt.IDTest equals test.IDTest
                               join level in dbContext.Level on attempt.AssignedLevelID equals level.IDLevel
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