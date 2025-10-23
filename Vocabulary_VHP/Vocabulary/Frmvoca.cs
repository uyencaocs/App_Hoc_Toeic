using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

namespace Vocabulary
{
    public partial class Frmvoca : Form
    {
        // --- CHỈNH ở đây: connection string đến SQL Server của bạn ---
        private string connectionString = @"Data Source=DESKTOP-GUATJSF\SQLEXPRESS;Initial Catalog=TiengAnhDB;Integrated Security=True;";

        private List<VocabItem> currentList = new List<VocabItem>();
        private int currentIndex = -1;

        public Frmvoca()
        {
            InitializeComponent();
            this.Load += Frmvoca_Load;
            
            btnLoad.Click += BtnLoad_Click;
            btnNext.Click += BtnNext_Click;
            btnPrev.Click += BtnPrev_Click;
            
        }

        private void CenterLabel()
        {
            lblWord.AutoSize = false;
            lblWord.TextAlign = ContentAlignment.MiddleCenter;
            lblWord.Top = 200; 
            lblWord.Left = 20;
            lblWord.Width = this.ClientSize.Width - 40;
            lblMeaning.AutoSize = false;
            lblMeaning.TextAlign = ContentAlignment.MiddleCenter;
            lblMeaning.Top = 350;
            lblMeaning.Left = 20;
            lblMeaning.Width = this.ClientSize.Width - 40;
        }
        private void Frmvoca_Load(object sender, EventArgs e)
        {
            LoadLevels();
            LoadTopics();
            CenterLabel();
        }

        #region Load reference data

        private void LoadLevels()
        {
            cmbLevel.Items.Clear();
            cmbLevel.Items.Add(new ComboboxItem("All", null));
            cmbLevel.Items.Add(new ComboboxItem("A1", 1));
            cmbLevel.Items.Add(new ComboboxItem("A2", 2));
            cmbLevel.Items.Add(new ComboboxItem("B1", 3));
            cmbLevel.Items.Add(new ComboboxItem("B2", 4));
            cmbLevel.Items.Add(new ComboboxItem("C1", 5));
            cmbLevel.Items.Add(new ComboboxItem("C2", 6));
            cmbLevel.SelectedIndex = 0;
        }

        private void LoadTopics()
        {
            cmbTopic.Items.Clear();
            cmbTopic.Items.Add(new ComboboxItem("All", null));

            string sql = "SELECT IDTopic, Name FROM Topic ORDER BY IDTopic;";
            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand(sql, cn))
                {
                    cn.Open();
                    using (SqlDataReader r = cmd.ExecuteReader())
                    {
                        while (r.Read())
                        {
                            int id = r.GetInt32(0);
                            string name = r.IsDBNull(1) ? "" : r.GetString(1);
                            cmbTopic.Items.Add(new ComboboxItem(name, id));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi load topics: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            cmbTopic.SelectedIndex = 0;
        }

        #endregion

        #region Load Vocabulary & navigation

        private void BtnLoad_Click(object sender, EventArgs e)
        {
            LoadVocabularyAndShowFirst();
        }


        private void LoadVocabularyAndShowFirst()
        {
            int? topicId = (cmbTopic.SelectedItem as ComboboxItem)?.Value as int?;
            int? levelId = (cmbLevel.SelectedItem as ComboboxItem)?.Value as int?;

            currentList = LoadVocabulary(topicId, levelId);
            if (currentList == null || currentList.Count == 0)
            {
                currentIndex = -1;
                ShowEmpty();
                MessageBox.Show("Không tìm thấy từ vựng phù hợp.", "Info", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            currentIndex = 0;
            ShowCurrent();
        }

        private List<VocabItem> LoadVocabulary(int? topicId, int? levelId)
        {
            var list = new List<VocabItem>();

            string sql = @"
                        SELECT v.IDWord, v.Word, v.Meaning, v.Example
                        FROM Vocabulary v
                        WHERE 1=1
                        ";
            if (topicId.HasValue) sql += " AND v.IDTopic = @topicId";
            if (levelId.HasValue) sql += " AND v.IDLevel = @levelId";

            sql += " ORDER BY v.IDWord;"; // order by ID (or Word) for stable sequence

            using (SqlConnection cn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(sql, cn))
            {
                if (topicId.HasValue) cmd.Parameters.AddWithValue("@topicId", topicId.Value);
                if (levelId.HasValue) cmd.Parameters.AddWithValue("@levelId", levelId.Value);

                try
                {
                    cn.Open();
                    using (SqlDataReader r = cmd.ExecuteReader())
                    {
                        while (r.Read())
                        {
                            var item = new VocabItem
                            {
                                IDWord = r.GetInt32(0),
                                Word = r.IsDBNull(1) ? "" : r.GetString(1),
                                Meaning = r.IsDBNull(2) ? "" : r.GetString(2),
                                Example = r.IsDBNull(3) ? "" : r.GetString(3)
                            };
                            list.Add(item);
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi khi load vocabulary: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return null;
                }
            }

            return list;
        }

        private void ShowCurrent()
        {
            if (currentList == null || currentList.Count == 0 || currentIndex < 0 || currentIndex >= currentList.Count)
            {
                ShowEmpty();
                return;
            }

            var v = currentList[currentIndex];
            lblWord.Text = v.Word;
            lblMeaning.Text = v.Meaning;
            txtExample.Text = v.Example;

            if (lblPosition != null)
                lblPosition.Text = $"{currentIndex + 1} / {currentList.Count}";

            btnPrev.Enabled = currentIndex > 0;
            btnNext.Enabled = currentIndex < currentList.Count - 1;
        }

        private void ShowEmpty()
        {
            lblWord.Text = "(No word)";
            lblMeaning.Text = "";
            txtExample.Text = "";
            if (lblPosition != null) lblPosition.Text = "0 / 0";
            btnPrev.Enabled = false;
            btnNext.Enabled = false;
        }

        private void BtnNext_Click(object sender, EventArgs e)
        {
            if (currentList == null || currentList.Count == 0) return;
            if (currentIndex < currentList.Count - 1)
            {
                currentIndex++;
                ShowCurrent();
            }
        }

        private void BtnPrev_Click(object sender, EventArgs e)
        {
            if (currentList == null || currentList.Count == 0) return;
            if (currentIndex > 0)
            {
                currentIndex--;
                ShowCurrent();
            }
        }

        #endregion

        #region Test connection helper


        #endregion
    }

    public class VocabItem
    {
        public int IDWord { get; set; }
        public string Word { get; set; }
        public string Meaning { get; set; }
        public string Example { get; set; }
    }

    public class ComboboxItem
    {
        public string Text { get; set; }
        public object Value { get; set; }
        public ComboboxItem(string text, object value) { Text = text; Value = value; }
        public override string ToString() => Text;
    }
}
