using Main.Data;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using TestDauVao.Services;

namespace TestDauVao
{
    public partial class Result_Test : Form
    {
      
        public string TestTitle { get; set; }
        public int TimeTakenSeconds { get; set; }
        public int CorrectAnswers { get; set; }
        public int WrongAnswers { get; set; }
        public double FinalScore { get; set; }
        public string AssignedLevel { get; set; }
 
        public class QuestionAnswerView
        {
            public string Question { get; set; }
            public string OptionA { get; set; }
            public string OptionB { get; set; }
            public string OptionC { get; set; }
            public string OptionD { get; set; }
            public string Answer { get; set; }
        }

        private Form currentFormChild;
        private readonly int _testId;
        private readonly int _currentUserId; 
        private Test _currentTest;
        private List<Question> _allQuestions;
        private readonly TiengAnhDB _db = new TiengAnhDB();

        public Result_Test(int testid)
        {
            InitializeComponent();
            this.Load += Result_Test_Load;
            _testId = testid;

            
            _currentUserId = Main.Logic.SessionManager.LoggedInUserId;
        }

        private void Result_Test_Load(object sender, EventArgs e)
        {
            TimeSpan time = TimeSpan.FromSeconds(TimeTakenSeconds);

       
            lblsocaudung.Text = $"{FinalScore:F1} / 100"; 
            lblDochinhxac.Text = CorrectAnswers.ToString(); // Số câu đúng
            lbl_socausai.Text = WrongAnswers.ToString(); // Số câu sai
            lblthoigianlambai.Text = time.ToString(@"mm\:ss"); // Thời gian làm bài

           
            SaveTestResultToDatabase();
        }

        private void SaveTestResultToDatabase()
        {
            if (_currentUserId <= 0)
            {
            
                MessageBox.Show("Cảnh báo: ID người dùng không hợp lệ. Kết quả không được lưu vào lịch sử.", "Lỗi Lưu Trữ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            var service = new PlacementTestService();

         
            bool success = service.SaveTestResult(
                _currentUserId,
                _testId,
                FinalScore,
                TimeTakenSeconds,
                AssignedLevel
            );

            if (!success)
            {
                // Thông báo nếu việc lưu thất bại
                MessageBox.Show("Cảnh báo: Lịch sử bài làm không được lưu vào cơ sở dữ liệu.", "Lỗi CSDL", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }


        private void bnt_quaylaitrangchu_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void bnt_Hienthidapan_Click(object sender, EventArgs e)
        {
            try
            {
                var service = new PlacementTestService();
                // Giả định service.GetRandomQuestionsForTest trả về List<Question> dựa trên _testId
                var allQuestions = service.GetRandomQuestionsForTest(_testId);

                if (allQuestions == null || allQuestions.Count == 0)
                {
                    throw new Exception("Danh sách câu hỏi rỗng hoặc lỗi tải dữ liệu.");
                }

                // Chuyển đổi List<Question> sang List<QuestionAnswerView> để hiển thị
                var data = allQuestions.Select(q =>
                {
                    return new QuestionAnswerView
                    {
                        Question = q.Questiontext ?? "(Không có nội dung)",
                        OptionA = q.OptionA,
                        OptionB = q.OptionB,
                        OptionC = q.OptionC,
                        OptionD = q.OptionD,
                        Answer = q.Answer,
                    };
                }).ToList();

               
                dgvAnswers.DataSource = data;

                // Đặt tên cột
                if (dgvAnswers.Columns.Contains("Question")) dgvAnswers.Columns["Question"].HeaderText = "Nội dung Câu hỏi";
                if (dgvAnswers.Columns.Contains("Answer")) dgvAnswers.Columns["Answer"].HeaderText = "Đáp án Đúng";

                if (dgvAnswers.Columns.Contains("OptionA")) dgvAnswers.Columns["OptionA"].HeaderText = "Tùy chọn A";
                if (dgvAnswers.Columns.Contains("OptionB")) dgvAnswers.Columns["OptionB"].HeaderText = "Tùy chọn B";
                if (dgvAnswers.Columns.Contains("OptionC")) dgvAnswers.Columns["OptionC"].HeaderText = "Tùy chọn C";
                if (dgvAnswers.Columns.Contains("OptionD")) dgvAnswers.Columns["OptionD"].HeaderText = "Tùy chọn D";

                dgvAnswers.DefaultCellStyle.WrapMode = DataGridViewTriState.True;
                dgvAnswers.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
           
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi hiển thị đáp án: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        
        private string GetAnswerContent(Question q)
        {
            if (q == null || string.IsNullOrEmpty(q.Answer))
                return "";

            switch (q.Answer.Trim().ToUpper())
            {
                case "A": return q.OptionA;
                case "B": return q.OptionB;
                case "C": return q.OptionC;
                case "D": return q.OptionD;
                default: return "(Không xác định)";
            }
        }

      
    }
}