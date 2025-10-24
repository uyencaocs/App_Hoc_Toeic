using Main.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Main
{
    public partial class frmForgotPass : Form
    {
        public frmForgotPass()
        {
            InitializeComponent();
        }
        private void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtForgot.Text.Trim();

            if (string.IsNullOrEmpty(email))
            {
                MessageBox.Show("Vui lòng nhập email đã đăng ký!",
                    "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtForgot.Focus();
                return;
            }

            // Validate email format
            if (!IsValidEmail(email))
            {
                MessageBox.Show("Email không hợp lệ! Vui lòng nhập email đúng định dạng.",
                    "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtForgot.Focus();
                txtForgot.SelectAll();
                return;
            }

            try
            {
                bool success = ShowCurrentPassword(email);

                if (success)
                {
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Email không tồn tại trong hệ thống!\nVui lòng kiểm tra lại email đã nhập.",
                        "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtForgot.Focus();
                    txtForgot.SelectAll();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi tìm mật khẩu: {ex.Message}",
                    "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        // PHƯƠNG THỨC HIỂN THỊ MẬT KHẨU HIỆN TẠI
        private bool ShowCurrentPassword(string email)
        {
            try
            {
                using (var db = new TiengAnhDB())
                {
                    // Tìm user bằng email
                    var user = db.User.FirstOrDefault(u => u.Email == email);

                    if (user != null)
                    {
                        // Hiển thị mật khẩu hiện tại trong MessageBox
                        MessageBox.Show($"Thông tin tài khoản:\n\n" +
                                      $"Email: {user.Email}\n" +
                                      $"Tên đăng nhập: {user.UserName}\n" +
                                      $"Mật khẩu: {user.Password}\n\n" +
                                      $"Vui lòng giữ kín thông tin đăng nhập!",
                            "Thông Tin Tài Khoản",
                            MessageBoxButtons.OK,
                            MessageBoxIcon.Information);
                        return true;
                    }
                }
                return false;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi khi tìm mật khẩu: {ex.Message}",
                    "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }
        private bool IsValidEmail(string email)
        {
            try
            {
                var regex = new System.Text.RegularExpressions.Regex(@"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
                return regex.IsMatch(email);
            }
            catch
            {
                return false;
            }
        }

        private void frmForgotPass_Load(object sender, EventArgs e)
        {

        }

        private void picExit_Click(object sender, EventArgs e)
        {
            frmLogin Login = new frmLogin();
            Login.Show();
            Hide();
        }
    }
}
