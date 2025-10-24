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
        private int _testId;
        private Test _currentTest;
        private List<Question> _allQuestions;
        private readonly TiengAnhDB _db = new TiengAnhDB();

        public Result_Test(int testid)
        {
            InitializeComponent();
            this.Load += Result_Test_Load;
            _testId = testid;
        }

        private void Result_Test_Load(object sender, EventArgs e)
        {

            TimeSpan time = TimeSpan.FromSeconds(TimeTakenSeconds);


            //lblTenDeThi.Text = TestTitle;

            lblsocaudung.Text = $"{FinalScore:F1} / 100";
            lblDochinhxac.Text = CorrectAnswers.ToString();
            lbl_socausai.Text = WrongAnswers.ToString();
            //lblKetLuan.Text = AssignedLevel;
            lblthoigianlambai.Text = time.ToString(@"mm\:ss");


            /*switch (AssignedLevel)
            {
                case "C1":
                case "B2":
                    lblKetLuan.Text = $"Xuất sắc! Bạn đã đạt trình độ {AssignedLevel}.";
                    lblKetLuan.ForeColor = Color.ForestGreen;
                    break;
                case "B1":
                    lblKetLuan.Text = $"Rất tốt! Bạn đã đạt trình độ {AssignedLevel}. Hãy tiếp tục phát huy!";
                    lblKetLuan.ForeColor = Color.DodgerBlue;
                    break;
                case "A2":
                    lblKetLuan.Text = $"Bạn đã đạt trình độ {AssignedLevel}. Hãy cố gắng hơn nữa nhé!";
                    lblKetLuan.ForeColor = Color.Orange;
                    break;
                default:
                    lblKetLuan.Text = "Cần cố gắng nhiều hơn! Hãy bắt đầu với lộ trình A1.";
                    lblKetLuan.ForeColor = Color.Red;
                    break;
            }*/
        }

        private void btnQuayLaiTrangChu_Click(object sender, EventArgs e)
        {

            this.Close();
        }

        private void btnXemChiTiet_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Chức năng xem đáp án chi tiết sẽ được phát triển trong tương lai.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

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

                var data = allQuestions.Select(q =>
                {
                    // Loại bỏ các kiểm tra null quá chi tiết nếu bạn tin tưởng vào dữ liệu đầu vào.

                    return new QuestionAnswerView
                    {
                        Question = q.Questiontext ?? "(Không có nội dung)",

                        // THÊM CÁC CỘT OPTION VÀO ĐÂY
                        OptionA = q.OptionA,
                        OptionB = q.OptionB,
                        OptionC = q.OptionC,
                        OptionD = q.OptionD,

                        // Cột đáp án chi tiết (dùng phương thức GetAnswerContent đã định nghĩa)
                        Answer = q.Answer,
                    };
                }).ToList();

                dgvAnswers.AutoGenerateColumns = true;
                dgvAnswers.DataSource = data;

                // (Tùy chọn) Đặt lại tiêu đề cột cho rõ ràng hơn
                if (dgvAnswers.Columns.Contains("Question")) dgvAnswers.Columns["Question"].HeaderText = "Nội dung Câu hỏi";
                if (dgvAnswers.Columns.Contains("Answer")) dgvAnswers.Columns["Answer"].HeaderText = "Đáp án Đúng";

                // Đặt tên cột Options
                if (dgvAnswers.Columns.Contains("OptionA")) dgvAnswers.Columns["OptionA"].HeaderText = "Tùy chọn A";
                if (dgvAnswers.Columns.Contains("OptionB")) dgvAnswers.Columns["OptionB"].HeaderText = "Tùy chọn B";
                if (dgvAnswers.Columns.Contains("OptionC")) dgvAnswers.Columns["OptionC"].HeaderText = "Tùy chọn C";
                if (dgvAnswers.Columns.Contains("OptionD")) dgvAnswers.Columns["OptionD"].HeaderText = "Tùy chọn D";

                /*if (dgvAnswers.Columns.Contains("Question"))
                {
                    DataGridViewColumn questionCol = dgvAnswers.Columns["Question"];

                    // Tạo style mới hoặc sử dụng style hiện có
                    DataGridViewCellStyle style = questionCol.DefaultCellStyle;

                    // Bật xuống dòng
                    style.WrapMode = DataGridViewTriState.True;

                    // Rất quan trọng: Phải bật AutoSizeRowsMode để hàng tự điều chỉnh chiều cao
                    dgvAnswers.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;

                }*/
                dgvAnswers.DefaultCellStyle.WrapMode = DataGridViewTriState.True;
                dgvAnswers.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
                dgvAnswers.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi hiển thị đáp án: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            /*try
            {
                var service = new PlacementTestService();
                var allQuestions = service.GetRandomQuestionsForTest(_testId);

                if (allQuestions == null)
                    throw new Exception("allQuestions == null");

                if (allQuestions.Count == 0)
                    throw new Exception("Danh sách câu hỏi rỗng.");

                var data = allQuestions.Select(q =>
                {
                    if (q == null) throw new Exception("Một phần tử q trong allQuestions bị null");
                    if (q.Answer == null) throw new Exception("Thuộc tính Answer bị null");
                    if (q.OptionA == null && q.OptionB == null && q.OptionC == null && q.OptionD == null)
                        throw new Exception("Các tùy chọn OptionA-D bị null");

                    return new QuestionAnswerView
                    {
                        Question = q.questiontext ?? "(Không có nội dung)",
                        Answer = GetAnswerContent(q)
                    };
                }).ToList();

                dgvAnswers.AutoGenerateColumns = true;
                dgvAnswers.DataSource = data;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi hiển thị đáp án: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }*/

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
        public void OpenChildForm(Form childForm)
        {
            // Đóng form con cũ nếu có
            if (currentFormChild != null)
                currentFormChild.Close();

            currentFormChild = childForm;

            // Cấu hình form con nằm gọn trong panelMain
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill; // ✅ Thay cho WindowState

            // 🔹 chiếm toàn bộ panel

            // Xóa nội dung cũ trong panelMain
            pnlHienthi.Controls.Clear();
            pnlHienthi.Controls.Add(childForm);
            pnlHienthi.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }
        private void pnlHienthi_Paint(object sender, PaintEventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Result_Test_Load_1(object sender, EventArgs e)
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
            }
        }
        private bool LoadTestData()
        {
            try
            {
                var testService = new PlacementTestService();
                _currentTest = _db.Tests.FirstOrDefault(t => t.IDTest == _testId);
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
    }
}