using System;
using System.Collections.Generic;
using System.Drawing;
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
        private Form currentFormChild;
        private int _testId;
        public Result_Test(int testid)
        {
            InitializeComponent();
            this.Load += Result_Test_Load;
            _testId = testid;
        }

        private void Result_Test_Load(object sender, EventArgs e)
        {
           
            TimeSpan time = TimeSpan.FromSeconds(TimeTakenSeconds);

            
            lblTenDeThi.Text = TestTitle;
           
            lblsocaudung.Text = $"{FinalScore:F1} / 10";
            lblDochinhxac.Text = CorrectAnswers.ToString(); 
            lbl_socausai.Text = WrongAnswers.ToString();  
            lblKetLuan.Text = AssignedLevel;                 
            lblthoigianlambai.Text = time.ToString(@"mm\:ss");

           
            switch (AssignedLevel)
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
            }
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
            /*if (_testId <= 0)
            {
                MessageBox.Show("ID Bài kiểm tra không hợp lệ.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            try
            {
                // 1. Dừng bộ đếm thời gian
                timer2.Stop();

                var service = new PlacementTestService();
                // Giả sử bạn dùng phương thức GetQuestionAnswersByTestId vừa định nghĩa
                List<QuestionAnswerDetail> answerDetails = service.GetQuestionAnswersByTestId(_testId);

                // 2. Gán dữ liệu vào DataGridView
                dgvAnswers.DataSource = answerDetails;

                // 3. (Tùy chọn) Ẩn các cột không cần thiết và định dạng lại
                dgvAnswers.Columns["OriginalAnswer"].HeaderText = "Đáp án (A/B/C/D)";
                dgvAnswers.Columns["DetailedAnswer"].HeaderText = "Nội dung Đáp án Đúng";

                // Ẩn các cột đáp án A, B, C, D nếu bạn chỉ muốn hiển thị câu hỏi và đáp án đúng
                dgvAnswers.Columns["OptionA"].Visible = false;
                dgvAnswers.Columns["OptionB"].Visible = false;
                dgvAnswers.Columns["OptionC"].Visible = false;
                dgvAnswers.Columns["OptionD"].Visible = false;

                MessageBox.Show("Đã hiển thị đáp án chi tiết vào DataGridView.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi tải đáp án: " + ex.Message, "Lỗi Dữ Liệu", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }*/
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
    }
}