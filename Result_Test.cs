using System;
using System.Drawing;
using System.Windows.Forms;

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

        public Result_Test()
        {
            InitializeComponent();
            this.Load += Result_Test_Load;
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

        }
    }
}