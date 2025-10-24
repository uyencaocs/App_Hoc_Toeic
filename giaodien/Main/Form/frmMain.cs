using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Drawing2D;
using Vocabulary;
using TestDauVao;
using Main.Data;
using System.Configuration;

namespace Main
{
    public partial class frmMain : Form
    {
        private Form currentFormChild;
        public int IDUser;
        public frmMain()
        {
            InitializeComponent();
            IDUser = Logic.SessionManager.LoggedInUserId;
            // 📘 Icon cho từng nút (emoji)
            btnGrammar.Text = "📘  Grammar";
            btnVocabulary.Text = "📖  Vocabulary";
            btnTest.Text = "🧠  Test";
            btnLogout.Text = "⚙️ Setting";
            bnt_Lichsunguoidung.Text = "📜  User history";
            // 🌈 Panel trái: nền xanh xám hiện đại
            pnlMain.BackColor = Color.FromArgb(44, 62, 80);

            // 🌤 Vùng bên phải: nền sáng nhẹ
            this.BackColor = Color.WhiteSmoke;

            // 🎯 Label tiêu đề
            label1.Text = "Home";
            label1.Font = new Font("Segoe UI", 13, FontStyle.Bold);
            label1.ForeColor = Color.White;
            label1.TextAlign = ContentAlignment.MiddleCenter;
            label1.BackColor = Color.FromArgb(52, 73, 94);
            label1.Dock = DockStyle.Top;
            label1.Height = 70;

            // 💡 Áp style cho các nút
            ApplyButtonStyle(btnGrammar);
            ApplyButtonStyle(btnVocabulary);
            ApplyButtonStyle(btnTest);
            ApplyButtonStyle(bnt_Lichsunguoidung);

            // 🔴 Nút Log Out (màu riêng)
            btnLogout.BackColor = Color.FromArgb(192, 57, 43);
            btnLogout.ForeColor = Color.White;
            btnLogout.Font = new Font("Segoe UI", 10, FontStyle.Bold);
            btnLogout.FlatStyle = FlatStyle.Flat;
            btnLogout.FlatAppearance.BorderSize = 0;
            btnLogout.FlatAppearance.MouseOverBackColor = Color.FromArgb(231, 76, 60);
        }
            
        private Button currentButton;
        private void ActivateButton(object sender)
        {
            if (currentButton != null)
            {
                currentButton.BackColor = Color.FromArgb(52, 73, 94);
                currentButton.ForeColor = Color.White;
            }

            currentButton = (Button)sender;
            currentButton.BackColor = Color.FromArgb(255, 255, 255, 60); // trắng mờ nhẹ
            currentButton.ForeColor = Color.Black; // đổi chữ thành đen

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

        private void btnLesson_Click(object sender, EventArgs e)
        {
            ActivateButton(sender);
            OpenChildForm(new FrmGrammar());
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            ActivateButton(sender);
            OpenChildForm(new frmSetting(this));
        }
        private void ApplyButtonStyle(Button btn)
        {
            btn.BackColor = Color.FromArgb(52, 73, 94);
            btn.ForeColor = Color.White;
            btn.Font = new Font("Segoe UI", 10, FontStyle.Bold);
            btn.FlatStyle = FlatStyle.Flat;
            btn.FlatAppearance.BorderSize = 0;
            btn.FlatAppearance.MouseOverBackColor = Color.FromArgb(41, 128, 185);
            btn.FlatAppearance.MouseDownBackColor = Color.FromArgb(26, 82, 118);
            btn.Cursor = Cursors.Hand;
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }

       

        private void btnVocabulary_Click(object sender, EventArgs e)
        {
            ActivateButton(sender);
            OpenChildForm(new Frmvoca());
        }

        private void btnTest_Click(object sender, EventArgs e)
        {
            ActivateButton(sender);
            OpenChildForm(new Test_Form(this));
        }

        private void bnt_Lichsunguoidung_Click(object sender, EventArgs e)
        {
            ActivateButton(sender);

            if (IDUser > 0)
            {
                OpenChildForm(new frm_Lichsunguoidung(IDUser));
            }
            else
            {
                MessageBox.Show("Vui lòng đăng nhập để xem lịch sử.", "Lỗi Truy Cập", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void pnlHienthi_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
