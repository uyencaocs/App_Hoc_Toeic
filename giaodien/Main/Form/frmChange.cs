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
    
    public partial class frmChange : Form
    {
        private frmMain main;
        public frmChange(frmMain mainform)
        {
            InitializeComponent();
            main = mainform;
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            main.OpenChildForm(new frmSetting(main));
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            string oldPass = txtOld.Text.Trim();
            string newPass = txtNewPass.Text.Trim();
            string newPassConfirm = txtConfirm.Text.Trim();

            // GIẢ ĐỊNH: Biến này chứa IDUser của người dùng đang đăng nhập
            // Ví dụ: Lấy từ một biến tĩnh hoặc sau khi đăng nhập thành công
            // Vui lòng thay thế 1 bằng giá trị IDUser thực tế của người dùng hiện tại.
            int _currentUserId = 1;

            // 2. Kiểm tra dữ liệu đầu vào
            if (string.IsNullOrEmpty(oldPass))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu cũ.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtOld.Focus();
                return;
            }

            if (string.IsNullOrEmpty(newPass) || newPass.Length < 6)
            {
                MessageBox.Show("Mật khẩu mới phải có ít nhất 6 ký tự.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtNewPass.Focus();
                return;
            }

            if (!string.Equals(newPass, newPassConfirm, StringComparison.Ordinal))
            {
                MessageBox.Show("Mật khẩu mới và xác nhận mật khẩu không khớp.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtNewPass.Focus();
                return;
            }

            // 3. Xử lý đổi mật khẩu
            try
            {
                // Sử dụng TiengAnhDB làm DbContext
                using (var db = new TiengAnhDB())
                {
                    // Tìm người dùng hiện tại dựa trên IDUser
                    // db.Users là DbSet<User> trong TiengAnhDB.cs
                    var user = db.Users.Find(_currentUserId);

                    if (user == null)
                    {
                        MessageBox.Show("Không tìm thấy thông tin người dùng.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                    // Kiểm tra MẬT KHẨU CŨ (So sánh Plaintext như trong DB của bạn)
                    if (!string.Equals(user.Password, oldPass, StringComparison.Ordinal))
                    {
                        MessageBox.Show("Mật khẩu cũ không đúng.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtOld.Focus();
                        return;
                    }

                    // Cập nhật MẬT KHẨU MỚI vào trường Password
                    user.Password = newPass; // <--- VÌ BẠN ĐANG LƯU PLAINTEXT, LÀM NHƯ THẾ NÀY

                    db.SaveChanges();

                    // Thông báo thành công và xóa nội dung TextBox
                    MessageBox.Show("Cập nhật mật khẩu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    txtOld.Clear();
                    txtNewPass.Clear();
                    txtConfirm.Clear();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi cập nhật mật khẩu: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void chkShow_CheckedChanged(object sender, EventArgs e)
        {
            txtOld.UseSystemPasswordChar = !chkShow.Checked;
            txtNewPass.UseSystemPasswordChar = !chkShow.Checked;
            txtConfirm.UseSystemPasswordChar = !chkShow.Checked;
        }
    }
}
