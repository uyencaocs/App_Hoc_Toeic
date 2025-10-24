using EnglishLearningApp;
using Main;
using Main.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace Main
{
    public partial class frmLogin : Form
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsers.Text.Trim();
            string password = txtPass.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Vui lòng nhập tên đăng nhập và mật khẩu!", "Cảnh báo",
                                MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtUsers.Focus();
                return;
            }

            try
            {
                using (var db = new TiengAnhDB())
                {
                    var user = db.Users
                                .Where(u => u.UserName == username && u.Password == password)
                                .FirstOrDefault();

                    if (user != null)
                    {
                        // Xử lý ghi nhớ đăng nhập
                        HandleRememberLogin(username, password);

                        MessageBox.Show($"Đăng nhập thành công! Chào mừng {username}.",
                                        "Thành công", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        frmMain main = new frmMain();
                        main.Show();
                        Hide();
                    }
                    else
                    {
                        MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng!", "Lỗi",
                                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtPass.Text = "";
                        txtPass.Focus();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi kết nối database: {ex.Message}", "Lỗi",
                                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void HandleRememberLogin(string username, string password)
        {
            if (chkSave.Checked)
            {
                Properties.Settings.Default.Username = username;
                Properties.Settings.Default.Password = password;
                Properties.Settings.Default.Save();
            }
            else
            {
                // Xóa thông tin đã lưu nếu không tick
                Properties.Settings.Default.Username = "";
                Properties.Settings.Default.Password = "";
                Properties.Settings.Default.Save();
            }
        }

        private void chkShow_CheckedChanged(object sender, EventArgs e)
        {
            txtPass.UseSystemPasswordChar = !chkShow.Checked;
        }

        private void lnkForgot_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmForgotPass forgotForm = new frmForgotPass();
            forgotForm.Show();
            this.Hide();
        }

        private void lnkCreat_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmRegister registerForm = new frmRegister();
            registerForm.Show();
            this.Hide();
        }

        private void chkSave_CheckedChanged(object sender, EventArgs e)
        {
            if (!chkSave.Checked)
            {
                // Xóa thông tin đã lưu khi bỏ tick
                Properties.Settings.Default.Username = "";
                Properties.Settings.Default.Password = "";
                Properties.Settings.Default.Save();
            }
        }

        private void frmLogin_Load(object sender, EventArgs e)
        {
            // Load thông tin đăng nhập đã lưu
            if (!string.IsNullOrEmpty(Properties.Settings.Default.Username))
            {
                txtUsers.Text = Properties.Settings.Default.Username;
                txtPass.Text = Properties.Settings.Default.Password;
                chkSave.Checked = true;
            }

            // Focus vào ô nhập liệu
            if (string.IsNullOrEmpty(txtUsers.Text))
                txtUsers.Focus();
            else
                txtPass.Focus();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}