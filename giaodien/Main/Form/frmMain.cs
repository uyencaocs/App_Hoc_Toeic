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

namespace Main
{
    public partial class frmMain : Form
    {
        private Form currentFormChild;
        public frmMain()
        {
            InitializeComponent();
            // 🌈 Toàn form
            this.BackColor = Color.FromArgb(245, 247, 250);
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;

            // 🎨 Sidebar gradient
            pnlchucnang.Paint += (s, e2) =>
            {
                using (LinearGradientBrush brush = new LinearGradientBrush(pnlchucnang.ClientRectangle,
                    Color.FromArgb(90, 150, 230), // xanh dương nhạt
                    Color.FromArgb(130, 100, 250), // tím nhẹ
                    90f))
                {
                    e2.Graphics.FillRectangle(brush, pnlchucnang.ClientRectangle);
                }
            };

            // 🧠 Label tiêu đề
            label1.Text = "English Learning";
            label1.Font = new Font("Segoe UI Semibold", 14, FontStyle.Bold);
            label1.ForeColor = Color.White;
            label1.TextAlign = ContentAlignment.MiddleCenter;
            label1.Dock = DockStyle.Top;
            label1.Height = 60;
            label1.BackColor = Color.Transparent;

            // ⚙️ Style chung cho button
            foreach (Control c in pnlchucnang.Controls)
            {
                if (c is Button btn)
                {
                    btn.FlatStyle = FlatStyle.Flat;
                    btn.FlatAppearance.BorderSize = 0;
                    btn.BackColor = Color.FromArgb(255, 255, 255, 40); // trong suốt nhẹ
                    btn.ForeColor = Color.White;
                    btn.Font = new Font("Segoe UI", 11, FontStyle.Bold);
                    btn.Height = 45;
                    btn.Width = 150;
                    btn.Cursor = Cursors.Hand;
                    btn.Region = new Region(new Rectangle(0, 0, btn.Width, btn.Height));
                    btn.FlatAppearance.MouseOverBackColor = Color.FromArgb(255, 255, 255, 80);

                    // Bóng nhẹ
                    btn.FlatAppearance.MouseDownBackColor = Color.FromArgb(255, 255, 255, 120);
                }
            }

            // 📘 Icon cho từng nút (emoji)
            btnGrammar.Text = "📘  Grammar";
            btnVocabulary.Text = "📖  Vocabulary";
            btnTest.Text = "🧠  Test";
            btnLogout.Text = "🚪  Log Out";

            // 🪶 Căn chỉnh lại vị trí
            btnGrammar.Top = 100;
            btnVocabulary.Top = btnGrammar.Bottom + 15;
            btnTest.Top = btnVocabulary.Bottom + 15;
            btnLogout.Dock = DockStyle.Bottom;

            // 🧩 Khu vực phải (main content)
            pnlHienthi.BackColor = Color.WhiteSmoke;
            pnlHienthi.BorderStyle = BorderStyle.None;
        }
        private Button currentButton;

        private void ActivateButton(object sender)
        {
            if (currentButton != null)
                currentButton.BackColor = Color.FromArgb(255, 255, 255, 40); // màu cũ

            currentButton = (Button)sender;
            currentButton.BackColor = Color.FromArgb(255, 255, 255, 100); // sáng hơn
        }
        private void OpenChildForm(Form childForm)
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
            /*DialogResult rs = MessageBox.Show("Bạn có chắc muốn đăng xuất không?", "Đăng xuất",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (rs == DialogResult.Yes)
            {
                this.Hide();
                LoginForm login = new LoginForm();
                login.Show();
            }*/
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }
    }
}
