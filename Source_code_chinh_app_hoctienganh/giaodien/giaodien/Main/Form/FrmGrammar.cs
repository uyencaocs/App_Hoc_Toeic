using Main.Data;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

namespace Main
{
    public partial class FrmGrammar : Form
    {
        public FrmGrammar()
        {
            InitializeComponent();
            this.Load += FrmGrammar_Load;
            cmblevel.SelectedIndexChanged += FilterGrammar;
            cmbTopic.SelectedIndexChanged += FilterGrammar;
            this.BackColor = Color.WhiteSmoke;
            groupBox1.BackColor = Color.White;
            groupBox2.BackColor = Color.White;
            rtbLesson.Font = new Font("Segoe UI", 12);
            rtbExample.Font = new Font("Segoe UI", 12);
            cmblevel.Font = new Font("Segoe UI", 11);
            cmbTopic.Font = new Font("Segoe UI", 11);
        }

        private void FrmGrammar_Load(object sender, EventArgs e)
        {
            HienthiLevel();
            HienthiTopic();
           
        }

        private void HienthiLevel()
        {
            TiengAnhDB db = new TiengAnhDB();
            var levels = db.Levels.ToList();
            cmblevel.DataSource = levels;
            cmblevel.DisplayMember = "NameLevel";
            cmblevel.ValueMember = "IDLevel";
        }

        private void HienthiTopic()
        {
            TiengAnhDB db = new TiengAnhDB();
            var topics = db.Topics.ToList();
            cmbTopic.DataSource = topics;
            cmbTopic.DisplayMember = "Name";
            cmbTopic.ValueMember = "IDTopic";
        }

        private void FilterGrammar(object sender, EventArgs e)
        {
            rtbLesson.Clear();
            rtbExample.Clear();
            selectedGrammar = null;

            flpLessons.Controls.Clear();

            TiengAnhDB db = new TiengAnhDB();
            int? levelId = cmblevel.SelectedValue as int?;
            int? topicId = cmbTopic.SelectedValue as int?;

            var grammars = db.Grammars.AsQueryable();

            if (levelId.HasValue)
                grammars = grammars.Where(g => g.IDLevel == levelId.Value);
            if (topicId.HasValue)
                grammars = grammars.Where(g => g.IDTopic == topicId.Value);

            foreach (var grammar in grammars.ToList())
            {
                Button btn = new Button();
                btn.Text = grammar.Title;
                btn.Tag = grammar;
                btn.Width = 230;
                btn.Height = 100;
                btn.Margin = new Padding(10);
                btn.BackColor = Color.LightSkyBlue;
                btn.Font = new Font("Segoe UI", 11, FontStyle.Bold);
                btn.FlatStyle = FlatStyle.Flat;
                btn.FlatAppearance.BorderSize = 0;
                btn.ForeColor = Color.DarkBlue;
                btn.Click += Btn_Click;
                flpLessons.Controls.Add(btn);
            }
        }

        private Grammar selectedGrammar;

        private void Btn_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            var grammar = btn.Tag as Grammar;
            if (grammar != null)
            {
                selectedGrammar = grammar; // Lưu lại grammar đang chọn
                rtbLesson.Text = grammar.Lesson;
                rtbExample.Clear(); // Xóa ví dụ cũ
            }
        }

        private void rtbExample_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnXemvidu_Click(object sender, EventArgs e)
        {
            if (selectedGrammar != null)
            {
                rtbExample.Text = selectedGrammar.Example;
            }
            else
            {
                MessageBox.Show("Vui lòng chọn một bài học trước!");
            }
        }

        private void flpLessons_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
