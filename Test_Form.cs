using System;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using TestDauVao.Toeic_database;


namespace TestDauVao
{
    public partial class Test_Form : Form
    {
        public Test_Form()
        {
            InitializeComponent();
        }

        private void Test_Form_Load(object sender, EventArgs e)
        {
            LoadAllTests();
        }

        private void LoadAllTests()
        {
           
            try
            {
                using (var db = new Toiec_database_table())
                {
                    var allTests = db.Tests.ToList();
                    foreach (var test in allTests)
                    {
                        Button btnTest = new Button();
                        btnTest.Text = test.Title;
                        btnTest.Font = new Font("Segoe UI", 11F, FontStyle.Bold);
                        btnTest.Size = new Size(350, 65);
                        btnTest.Margin = new Padding(15);
                        btnTest.Cursor = Cursors.Hand;

                        btnTest.Tag = test.IDTest;
                        btnTest.Click += BtnTest_Click;

                        flpCacLoaiDeTest.Controls.Add(btnTest);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi tải danh sách đề thi: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


       
        private void BtnTest_Click(object sender, EventArgs e)
        {
            if (sender is Button clickedButton)
            {
                if (clickedButton.Tag is int testId)
                {
                 
                    Bai_Kiem_Tra_Trinh_Do testForm = new Bai_Kiem_Tra_Trinh_Do(testId);

                    this.Hide();

                    testForm.ShowDialog();
                    this.Show();
                }
                else
                {
                    MessageBox.Show("ID bài test không hợp lệ.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
    }
}