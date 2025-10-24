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
    public partial class frmSetting : Form
    {
        private frmMain main;
        public frmSetting(frmMain mainform)
        {
            InitializeComponent();
            main = mainform;
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            DialogResult rs = MessageBox.Show("Bạn có chắc muốn đăng xuất không?", "Đăng xuất",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (rs == DialogResult.Yes)
            {
                frmMain frmMain = new frmMain();
                frmMain.Hide();
                
                frmLogin login = new frmLogin();
                login.Show();
            }
        }

        private void btnChange_Click(object sender, EventArgs e)
        {
            main.OpenChildForm(new frmChange(main));
        }
        
    }
}
