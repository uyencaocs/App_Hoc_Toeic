using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TestDauVao
{
    public partial class NguoiDungchonThamGiaHoacKhongThamGiabaitestdauvao : Form
    {
        public NguoiDungchonThamGiaHoacKhongThamGiabaitestdauvao()
        {
            InitializeComponent();
        }

        private void bnt_BatDauBaiKiemTra_Click(object sender, EventArgs e)
        {
            Bai_Kiem_Tra_Trinh_Do baiKiemTra = new Bai_Kiem_Tra_Trinh_Do();
            baiKiemTra.ShowDialog();
        }

        private void bnt_KhongLambaiKiemtr_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
