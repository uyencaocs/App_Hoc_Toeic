using Main;
using Main.Data;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using TestDauVao.Services;


namespace TestDauVao
{

    public partial class Bai_Kiem_Tra_Trinh_Do : Form
    {
        private int _testId;
        private Test _currentTest;
        private List<Question> _allQuestions;
        private const int QuestionPanelHeight = 220; // Tăng chiều cao để chứa câu hỏi và 4 đáp án
        private int _totalSeconds;
        private bool _isTestFinished = false;
        private readonly TiengAnhDB _db = new TiengAnhDB();
       private frmMain mainForm;


        private Dictionary<int, char> _userAnswersMap = new Dictionary<int, char>();

        public Bai_Kiem_Tra_Trinh_Do(int testId, frmMain main)
        {
            InitializeComponent();
       
            _testId = testId;
            this.Load += Bai_Kiem_Tra_Trinh_Do_Load;
            mainForm = main;


        }


        private void Bai_Kiem_Tra_Trinh_Do_Load(object sender, EventArgs e)
        {
            if (LoadTestData())
            {
                lbl_Tieu_de_bai_test.Text = _currentTest.Title;
                lbl_Tieu_de_bai_test.Font = new Font(lbl_Tieu_de_bai_test.Font.FontFamily, 14, FontStyle.Bold);

                lbl_Tieu_de_bai_test.AutoSize = true;

                // Tính toán vị trí X để căn giữa
                int formWidth = this.ClientSize.Width;
                int newX = (formWidth - lbl_Tieu_de_bai_test.Width) / 2;

                // ĐIỀU CHỈNH ĐỂ NHÍCH XUỐNG (ví dụ: 20)
                int newY = 20;

                lbl_Tieu_de_bai_test.Location = new Point(newX, newY);

                if (_currentTest.DurationInMinutes.HasValue)
                {
                    _totalSeconds = _currentTest.DurationInMinutes.Value * 60;
                  
                    timer2.Start();
                }
                else
                {
                    _totalSeconds = 0;
                }

                // Khởi tạo bản đồ câu trả lời
                foreach (var q in _allQuestions)
                {
                    _userAnswersMap.Add(q.IDQuestion, ' ');
                }

                LoadQuestionControls(_allQuestions);
                CreateNavigationButtons(_allQuestions.Count);

                
                lbl_time.Text = TimeSpan.FromSeconds(_totalSeconds).ToString(@"mm\:ss");

            }
            else
            {
                MessageBox.Show("Bài kiểm tra không có câu hỏi hoặc lỗi tải dữ liệu.", "Lỗi Dữ Liệu", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.Close();
            }
        }
        public class UserQuestionAnswer
        {
            public int IDQuestion { get; set; }
            public char ChosenAnswer { get; set; }
        }
        private bool LoadTestData()
        {
            try
            {
                var testService = new PlacementTestService();
                _currentTest = _db.Test.FirstOrDefault(t => t.IDTest == _testId);
                if (_currentTest == null)
                {
                    MessageBox.Show("Không tìm thấy thông tin bài kiểm tra.", "Lỗi Dữ Liệu", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                _allQuestions = testService.GetRandomQuestionsForTest(_testId);

                if (_allQuestions == null || _allQuestions.Count == 0)
                {
                    return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi kết nối hoặc truy vấn cơ sở dữ liệu: " + ex.Message);
                return false;
            }
        }

        // Phương thức mới để xử lý việc chọn đáp án
        private void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            var rb = sender as RadioButton;
            if (rb != null && rb.Checked)
            {
                if (rb.Parent is Panel questionPanel && questionPanel.Tag is int questionId)
                {
                    char chosenOption = (char)rb.Tag;
                    _userAnswersMap[questionId] = chosenOption;
                    UpdateNavigationButtonColor(questionId, true); // Đã trả lời
                }
            }
        }

        // Cập nhật màu nút điều hướng
        private void UpdateNavigationButtonColor(int questionId, bool answered)
        {
            // IDQuestion là unique, nhưng chúng ta cần tìm nút theo Question Number (index + 1)
            int questionNumber = _allQuestions.FindIndex(q => q.IDQuestion == questionId) + 1;

            if (questionNumber > 0)
            {
                var button = flpQuestionNavigation.Controls.OfType<Button>()
                             .FirstOrDefault(b => (int)b.Tag == questionNumber);

                if (button != null)
                {
                    button.BackColor = answered ? Color.LightGreen : Color.LightGray;
                }
            }
        }

        private void LoadQuestionControls(List<Question> questions)
        {
            flpAllQuestions.Controls.Clear();

            for (int i = 0; i < questions.Count; i++)
            {
                var questionData = questions[i];
                int questionNumber = i + 1;

                // Tạo một Panel để nhóm câu hỏi và các RadioButton
                Panel questionPanel = new Panel
                {
                    Width = flpAllQuestions.ClientSize.Width - 10,
                    Height = QuestionPanelHeight,
                    Margin = new Padding(5, 5, 5, 15),
                    BorderStyle = BorderStyle.FixedSingle,
                    Tag = questionData.IDQuestion // Lưu IDQuestion vào Tag của Panel
                };

                // 1. Label cho Câu hỏi
                Label lblQuestionText = new Label
                {
                    Text = $"Câu {questionNumber}: {questionData.questiontext}",
                    AutoSize = false,
                    Location = new Point(10, 5),
                    Width = questionPanel.Width - 20,
                    Height = 40,
                    Font = new Font(this.Font.FontFamily, 10, FontStyle.Bold)
                };
                questionPanel.Controls.Add(lblQuestionText);

                int yPos = 50;
                int spacing = 35;

                // 2. Tạo RadioButtons cho các tùy chọn
                RadioButton[] radioButtons = new RadioButton[4];
                string[] options = { questionData.OptionA, questionData.OptionB, questionData.OptionC, questionData.OptionD };
                char[] tags = { 'A', 'B', 'C', 'D' };

                for (int j = 0; j < 4; j++)
                {
                    RadioButton rb = new RadioButton
                    {
                        Text = options[j],
                        Tag = tags[j],
                        AutoSize = true,
                        Location = new Point(20, yPos + j * spacing),
                        Width = questionPanel.Width - 30
                    };
                    rb.CheckedChanged += RadioButton_CheckedChanged;
                    questionPanel.Controls.Add(rb);
                    radioButtons[j] = rb;
                }

                // Khôi phục đáp án đã chọn (nếu có)
                if (_userAnswersMap.ContainsKey(questionData.IDQuestion) && _userAnswersMap[questionData.IDQuestion] != ' ')
                {
                    char selectedAnswer = _userAnswersMap[questionData.IDQuestion];
                    var selectedRb = radioButtons.FirstOrDefault(r => (char)r.Tag == selectedAnswer);
                    if (selectedRb != null)
                    {
                        selectedRb.Checked = true;
                    }
                }

                flpAllQuestions.Controls.Add(questionPanel);
            }

            // Điều chỉnh chiều cao của flpAllQuestions
            int requiredHeight = (questions.Count * QuestionPanelHeight) + (questions.Count * 15) + 50;
            flpAllQuestions.Height = requiredHeight;
        }

        private void CreateNavigationButtons(int totalQuestions)
        {
            flpQuestionNavigation.Controls.Clear();
            for (int i = 1; i <= totalQuestions; i++)
            {
                Button btn = new Button
                {
                    Text = i.ToString(),
                    Tag = i,
                    Size = new Size(30, 30),
                    Margin = new Padding(3),
                    // Kiểm tra trạng thái đã trả lời để đặt màu ban đầu
                    BackColor = Color.LightGray
                };
                btn.Click += BtnQuestion_Click;
                flpQuestionNavigation.Controls.Add(btn);
            }
        }

        private void BtnQuestion_Click(object sender, EventArgs e)
        {
            if (sender is Button clickedButton)
            {
                ScrollToQuestion((int)clickedButton.Tag);
            }
        }

        private void ScrollToQuestion(int questionNumber)
        {
            // questionNumber là số thứ tự (từ 1), cần nhân với kích thước panel câu hỏi và lề dưới
            int targetY = (questionNumber - 1) * (QuestionPanelHeight + 15);
            pnlScrollContainer.AutoScrollPosition = new Point(0, targetY);
        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            if (_totalSeconds > 0)
            {
                _totalSeconds--;
                lbl_time.Text = TimeSpan.FromSeconds(_totalSeconds).ToString(@"mm\:ss");
            }
            else
            {
                timer1.Stop();
                if (!_isTestFinished)
                {
                    MessageBox.Show("Hết giờ! Bài làm sẽ được tự động nộp.", "Thông báo");
                    SubmitTest();
                }
            }
        }

        private void SubmitTest()
        {
            if (_isTestFinished) return;
            _isTestFinished = true;
            timer2.Stop();

            // Lấy danh sách câu trả lời từ Dictionary đã lưu
            var userAnswers = _userAnswersMap.Select(kvp => new UserQuestionAnswer
            {
                IDQuestion = kvp.Key,
                ChosenAnswer = kvp.Value
            }).ToList();

            // 2. Chấm điểm
            int correctCount = 0;

            foreach (var userAnswer in userAnswers)
            {
                var correctQuestion = _allQuestions.FirstOrDefault(q => q.IDQuestion == userAnswer.IDQuestion);

                if (correctQuestion != null &&
                    userAnswer.ChosenAnswer != ' ' && // Đảm bảo người dùng có chọn đáp án
                    userAnswer.ChosenAnswer.ToString().Equals(correctQuestion.Answer, StringComparison.OrdinalIgnoreCase))
                {
                    correctCount++;
                }
            }

            int totalQuestions = _allQuestions.Count;
            int wrongCount = totalQuestions - correctCount;
            double score = (totalQuestions > 0) ? ((double)correctCount / totalQuestions) * 100 : 0;

            // Tính thời gian làm bài
            int testDuration = _currentTest.DurationInMinutes.HasValue ? _currentTest.DurationInMinutes.Value * 60 : 0;
            int timeSpent = testDuration - _totalSeconds;
            if (timeSpent < 0) timeSpent = 0;

            // Phân cấp trình độ
            string assignedLevel = (score >= 70) ? "B2" : "A2";

            var service = new PlacementTestService();
          

            Result_Test resultForm = new Result_Test
            {
                TestTitle = _currentTest.Title,
                CorrectAnswers = correctCount,
                WrongAnswers = wrongCount,
                FinalScore = score,
                AssignedLevel = assignedLevel,
                TimeTakenSeconds = timeSpent
            };

            mainForm.OpenChildForm(resultForm);
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn chắc chắn muốn nộp bài?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                SubmitTest();
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn muốn thoát? Bài làm sẽ không được lưu.", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                this.Close();
            }
        }

        // Giữ lại các methods rỗng nếu chúng được sử dụng trong designer hoặc bạn cần
     
        private void flpQuestionNavigation_Paint(object sender, PaintEventArgs e) { }
        private void bnt_exit_Click(object sender, EventArgs e) {
            timer2.Stop();
            DialogResult resutl = MessageBox.Show("Bạn muốn thoát? Bài làm sẽ không được lưu.", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if(resutl == DialogResult.Yes)
            {
                mainForm.OpenChildForm(new Test_Form(mainForm));

            }
            else
            {
                if (!_isTestFinished)
                {
                    timer2.Start();
                }
            }
        }
        private void bnt_Submit_Click(object sender, EventArgs e) {
            DialogResult resutl = MessageBox.Show("Bạn chắc chắn muốn nộp bài?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(resutl == DialogResult.Yes)
            {
                SubmitTest();
            }
        }
        private void pnlScrollContainer_Paint(object sender, PaintEventArgs e) { }
        private void flpAllQuestions_Paint(object sender, PaintEventArgs e) { }

        private void Bai_Kiem_Tra_Trinh_Do_Load_1(object sender, EventArgs e)
        {

        }
    }
}