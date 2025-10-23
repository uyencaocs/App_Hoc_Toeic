using EnglishLearningApp.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EnglishLearningApp
{
    public partial class frmRegister : Form
    {
        public frmRegister()
        {
            InitializeComponent();
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsers.Text.Trim();
            string password = txtPass.Text;
            string confirmPassword = txtConfirmPass.Text;
            string email = txtEmail.Text.Trim();
            string phone = txtNumber.Text.Trim();

            // Validate input trước khi đăng ký
            if (!ValidateInput(username, password, confirmPassword, email, phone))
                return;

            try
            {
                using (var db = new TiengAnhDB())
                {
                    // Kiểm tra username đã tồn tại chưa
                    if (db.User.Any(u => u.UserName == username))
                    {
                        MessageBox.Show("Tên đăng nhập đã tồn tại! Vui lòng chọn tên khác.", "Lỗi",
                                      MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtUsers.Focus();
                        txtUsers.SelectAll();
                        return;
                    }

                    // Kiểm tra email đã tồn tại chưa
                    if (db.User.Any(u => u.Email == email))
                    {
                        MessageBox.Show("Email đã được sử dụng! Vui lòng sử dụng email khác.", "Lỗi",
                                      MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtEmail.Focus();
                        txtEmail.SelectAll();
                        return;
                    }
                    var newUser = new User  
                    {
                        UserName = username,
                        PassWord = password,
                        Email = email,
                        NumPhone = string.IsNullOrEmpty(phone) ? null : phone,
                        IDLevel = 1,
                    };

                    db.User.Add(newUser);
                    int result = db.SaveChanges();

                    if (result > 0)
                    {
                        MessageBox.Show("Đăng ký tài khoản thành công!\nBạn có thể đăng nhập ngay bây giờ.",
                                      "Thành công", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        frmLogin loginForm = new frmLogin();
                        loginForm.Show();
                        this.Close();
                    }
                    else
                    {
                        MessageBox.Show("Đăng ký thất bại! Vui lòng thử lại.", "Lỗi",
                                      MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                // Hiển thị lỗi validation chi tiết
                var errorMessages = ex.EntityValidationErrors
                    .SelectMany(x => x.ValidationErrors)
                    .Select(x => x.ErrorMessage);
                var fullErrorMessage = string.Join("\n", errorMessages);
                MessageBox.Show($"Lỗi nhập liệu:\n{fullErrorMessage}", "Lỗi đăng ký",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (System.Data.Entity.Infrastructure.DbUpdateException ex)
            {
                // Hiển thị lỗi database chi tiết
                var innerException = ex.InnerException?.InnerException ?? ex.InnerException ?? ex;
                MessageBox.Show($"Lỗi cập nhật database:\n{innerException.Message}", "Lỗi đăng ký",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi đăng ký: {ex.Message}", "Lỗi",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private bool ValidateInput(string username, string password, string confirmPassword, string email, string phone)
        {
            // 1. Kiểm tra thông tin bắt buộc
            if (string.IsNullOrEmpty(username))
            {
                MessageBox.Show("Vui lòng nhập tên đăng nhập!", "Cảnh báo",
                              MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtUsers.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu!", "Cảnh báo",
                              MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtPass.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(confirmPassword))
            {
                MessageBox.Show("Vui lòng xác nhận mật khẩu!", "Cảnh báo",
                              MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtConfirmPass.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(email))
            {
                MessageBox.Show("Vui lòng nhập email!", "Cảnh báo",
                              MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtEmail.Focus();
                return false;
            }

            // 2. Kiểm tra độ dài username
            if (username.Length < 3)
            {
                MessageBox.Show("Tên đăng nhập phải có ít nhất 3 ký tự!", "Lỗi",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtUsers.Focus();
                txtUsers.SelectAll();
                return false;
            }

            // 3. Kiểm tra tên chỉ chứa ký tự chữ và số
            if (!IsValidUsername(username))
            {
                MessageBox.Show("Tên tài khoản chỉ được chứa chữ cái và số, không có ký tự đặc biệt!", "Lỗi",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtUsers.Focus();
                txtUsers.SelectAll();
                return false;
            }

            // 4. Kiểm tra độ dài mật khẩu
            if (password.Length < 6)
            {
                MessageBox.Show("Mật khẩu phải có ít nhất 6 ký tự!", "Lỗi",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtPass.Focus();
                txtPass.SelectAll();
                return false;
            }

            // 5. Kiểm tra mật khẩu trùng khớp
            if (password != confirmPassword)
            {
                MessageBox.Show("Mật khẩu xác nhận không khớp!", "Lỗi",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtConfirmPass.Focus();
                txtConfirmPass.SelectAll();
                return false;
            }

            // 6. Kiểm tra email hợp lệ
            if (!IsValidEmail(email))
            {
                MessageBox.Show("Email không hợp lệ! Ví dụ: example@gmail.com", "Lỗi",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtEmail.Focus();
                txtEmail.SelectAll();
                return false;
            }

            // 7. Kiểm tra số điện thoại (nếu có nhập)
            if (!string.IsNullOrEmpty(phone) && !IsValidPhone(phone))
            {
                MessageBox.Show("Số điện thoại không hợp lệ! Phải có 10-11 chữ số.", "Lỗi",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtNumber.Focus();
                txtNumber.SelectAll();
                return false;
            }

            return true;
        }

        private bool IsValidUsername(string username)
        {
            return Regex.IsMatch(username, @"^[a-zA-Z0-9]+$");
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var regex = new Regex(@"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"); // SỬA LỖI: Thêm \ trước .
                return regex.IsMatch(email);
            }
            catch
            {
                return false;
            }
        }

        private bool IsValidPhone(string phone)
        {
            try
            {
                var regex = new Regex(@"^[0-9]{10,11}$");
                return regex.IsMatch(phone);
            }
            catch
            {
                return false;
            }
        }

       

      

        private void frmRegister_Load(object sender, EventArgs e)
        {
            txtUsers.Focus();
        }

        // THÊM CÁC PHƯƠNG THỨC XỬ LÝ KEYPRESS ĐỂ DỄ DÀNG NAVIGATE
        private void txtUsers_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                txtPass.Focus();
                e.Handled = true;
            }
        }

        private void txtPass_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                txtConfirmPass.Focus();
                e.Handled = true;
            }
        }

        private void txtConfirmPass_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                txtEmail.Focus();
                e.Handled = true;
            }
        }

        private void txtEmail_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                if (string.IsNullOrEmpty(txtNumber.Text))
                    btnRegister.PerformClick();
                else
                    txtNumber.Focus();
                e.Handled = true;
            }
        }

        private void txtNumber_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                btnRegister.PerformClick();
                e.Handled = true;
            }
        }

        private void chkShow_CheckedChanged(object sender, EventArgs e)
        {
            txtPass.UseSystemPasswordChar = !chkShow.Checked;
            txtConfirmPass.UseSystemPasswordChar = !chkShow.Checked;
        }

        private void picExit_Click(object sender, EventArgs e)
        {
            frmLogin Login = new frmLogin();
            Login.Show();
            Hide();
        }
    }
}