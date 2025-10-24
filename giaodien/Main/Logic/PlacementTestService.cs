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
        public class QuestionAnswerView
        {
            public string Question { get; set; }
            public string Answer { get; set; }
        }
        /*public List<Question> GetQuestionAnswersByTestId(int testId)
        {
            var answers = new List<Question>();
            string connectionString = @"Data Source=NGUYENCUTEE\SQLEXPRESS01;Initial Catalog=TiengAnhDB;Integrated Security=True;";

            // Câu truy vấn SQL sử dụng CASE để ánh xạ đáp án
            string sql = @"
        SELECT
            Q.IDQuestion,
            Q.questiontext AS QuestionText,
            Q.OptionA,
            Q.OptionB,
            Q.OptionC,
            Q.OptionD,
            Q.Answer AS OriginalAnswer,
            CASE Q.Answer
                WHEN 'A' THEN Q.OptionA
                WHEN 'B' THEN Q.OptionB
                WHEN 'C' THEN Q.OptionC
                WHEN 'D' THEN Q.OptionD
                ELSE 'N/A'
            END AS DetailedAnswer
        FROM
            dbo.Question Q
        WHERE
            Q.IDTest = @TestId";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@TestId", testId);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            answers.Add(new Question
                            {
                                IDQuestion = reader.GetInt32(0),
                                questiontext = reader.GetString(1),
                                OptionA = reader.GetString(2),
                                OptionB = reader.GetString(3),
                                OptionC = reader.GetString(4),
                                OptionD = reader.GetString(5),
                                Answer = reader.GetString(6),
                               
                                //DetailedAnswer = reader.GetString(7)
                            });
                        }
                    }
                }
            }
            return answers;
        }*/
        // --- Bên trong lớp PlacementTestService.cs ---

        public List<Question> GetQuestionsForTestId(int testId)
        {
            var questions = new List<Question>();
            // Thay thế bằng chuỗi kết nối thực tế của bạn
            string connectionString = "Your_Connection_String_Here";

            // 1. Ghi truy vấn SQL vào một biến chuỗi
            string sqlQuery = @"
        SELECT 
            IDQuestion, questiontext, OptionA, OptionB, OptionC, OptionD, Answer, IDTest 
        FROM 
            dbo.Question 
        WHERE 
            IDTest = @TestId"; // Lọc theo IDTest

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sqlQuery, conn))
                {
                    // 2. Thêm tham số IDTest
                    cmd.Parameters.AddWithValue("@TestId", testId);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // 3. Ánh xạ kết quả đọc được vào danh sách (List<Question>)
                            questions.Add(new Question
                            {
                                IDQuestion = reader.GetInt32(0),
                                questiontext = reader.GetString(1),
                                // ... ánh xạ các cột còn lại
                                Answer = reader.GetString(6),
                                IDTest = reader.GetInt32(7)
                            });
                        }
                    }
                }
            }
            return questions;
        }
    }
}