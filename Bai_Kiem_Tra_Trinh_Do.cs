using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using TestDauVao.Databaitestdauvao;
// Thêm using nếu UC_SingleQuestion nằm trong thư mục khác
// using TestDauVao.UserControls; 

namespace TestDauVao
{
    public partial class Bai_Kiem_Tra_Trinh_Do : Form
    {
        public Bai_Kiem_Tra_Trinh_Do()
        {
            InitializeComponent();
            this.Load += Bai_Kiem_Tra_Trinh_Do_Load;
        }

        private void Bai_Kiem_Tra_Trinh_Do_Load(object sender, EventArgs e)
        {
            var questions = CreateMockQuestions(30); // Tải 30 câu hỏi Mẫu

            if (questions.Count > 0)
            {
                LoadQuestionContent(questions);
                CreateNavigationButtons(questions.Count);
            }
        }

        // ***************************************************************
        // I. LOGIC TẢI NỘI DUNG CÂU HỎI (Panel Bên Phải - Kích hoạt cuộn)
        // ***************************************************************

        private void LoadQuestionContent(List<PlacementQuestion> questions)
        {
            const int questionHeight = 160;
            int totalQuestions = questions.Count;

            flpAllQuestions.Controls.Clear();

            for (int i = 0; i < totalQuestions; i++)
            {
                UC_SingleQuestion questionControl = new UC_SingleQuestion();

                // Dùng QuestionNumber để gán số thứ tự hiển thị
                questionControl.IDQuestion = i + 1;

                // Truyền dữ liệu chi tiết câu hỏi (Question, OptionA,...)
                questionControl.LoadData(questions[i]);

                // Đặt kích thước
                questionControl.Width = flpAllQuestions.ClientSize.Width - 10;
                questionControl.Height = questionHeight;

                flpAllQuestions.Controls.Add(questionControl);
            }

            // Kích hoạt thanh cuộn bằng cách tăng chiều cao container nội dung
            int requiredHeight = (totalQuestions * questionHeight) + 50;
            flpAllQuestions.Height = requiredHeight;
        }

        // ***************************************************************
        // II. LOGIC TẠO NÚT ĐIỀU HƯỚNG & CUỘN (Giữ nguyên vì đã đúng)
        // ***************************************************************
        private void CreateNavigationButtons(int totalQuestions)
        {
            flpQuestionNavigation.Controls.Clear();
            for (int i = 1; i <= totalQuestions; i++)
            {
                Button btn = new Button();
                btn.Text = i.ToString();
                btn.Tag = i;
                btn.Size = new Size(30, 30);
                btn.Margin = new Padding(3);
                btn.BackColor = Color.LightGray;
                btn.Click += BtnQuestion_Click;
                flpQuestionNavigation.Controls.Add(btn);
            }
        }

        private void BtnQuestion_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            if (clickedButton != null)
            {
                int questionIndex = (int)clickedButton.Tag;
                ScrollToQuestion(questionIndex);
            }
        }

        private void ScrollToQuestion(int questionNumber)
        {
            const int QuestionHeight = 160;
            int targetY = (questionNumber - 1) * QuestionHeight;
            pnlScrollContainer.AutoScrollPosition = new Point(0, targetY);
        }

        // ***************************************************************
        // III. HÀM MOCK DỮ LIỆU ĐỂ KIỂM TRA (Sử dụng IDQuestion là INT để tránh lỗi ép kiểu)
        // ***************************************************************

        // Cần đảm bảo PlacementQuestion.IDQuestion là kiểu int
        private List<PlacementQuestion> CreateMockQuestions(int count)
        {
            List<PlacementQuestion> list = new List<PlacementQuestion>();
            for (int i = 1; i <= count; i++)
            {
                list.Add(new PlacementQuestion
                {
                    IDQuestion = i, // Gán INT
                    Question = $"Đây là nội dung câu hỏi số {i} cho bài test đầu vào. Vui lòng chọn đáp án đúng.",
                    OptionA = $"A. Đáp án {i} A",
                    OptionB = $"B. Đáp án {i} B",
                    OptionC = $"C. Đáp án {i} C",
                    OptionD = $"D. Đáp án {i} D"
                });
            }
            return list;
        }

        // Xóa hàm bị lỗi và các hàm sự kiện rỗng không cần thiết
        private void button2_Click(object sender, EventArgs e) { }
    }
}