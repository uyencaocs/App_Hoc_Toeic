using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

using TestDauVao.Services;
using TestDauVao.TestDauVao.Services;

namespace TestDauVao
{
    public partial class Lichsunguoidung : Form
    {
      
        private readonly int _currentUserId;

      
        public Lichsunguoidung(int userId)
        {
            InitializeComponent();
            _currentUserId = userId;
            this.Load += Lichsunguoidung_Load;
        }

        public Lichsunguoidung()
        {
        }

        private void Lichsunguoidung_Load(object sender, EventArgs e)
        {
            LoadHistoryData();
        }

        private void LoadHistoryData()
        {
            try
            {
                var service = new PlacementTestService();

             
                List<TestDauVao.Services.TestAttemptHistory> history = service.GetUserTestHistory(_currentUserId)
                                                         .OrderBy(h => h.DateCompleted)
                                                         .ToList();

                if (history != null && history.Count > 0)
                {
                    
                    dgvHistory.DataSource = history.OrderByDescending(h => h.DateCompleted).ToList();
                    ConfigureDataGridView();

                   
                   
                }
                else
                {
                    MessageBox.Show("Người dùng chưa có lịch sử làm bài nào.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                  
                    dgvHistory.Visible = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi khi tải lịch sử người dùng: {ex.Message}", "Lỗi Tải Dữ Liệu", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ConfigureDataGridView()
        {
            
            dgvHistory.AutoGenerateColumns = true;
            dgvHistory.ReadOnly = true; 

            if (dgvHistory.Columns.Contains("TestTitle"))
                dgvHistory.Columns["TestTitle"].HeaderText = "Bài Test";

            if (dgvHistory.Columns.Contains("ScorePercentage"))
                dgvHistory.Columns["ScorePercentage"].HeaderText = "Điểm Đạt (%)";

            if (dgvHistory.Columns.Contains("DateCompleted"))
            {
                dgvHistory.Columns["DateCompleted"].HeaderText = "Ngày Hoàn Thành";
                dgvHistory.Columns["DateCompleted"].DefaultCellStyle.Format = "dd/MM/yyyy HH:mm";
            }

            if (dgvHistory.Columns.Contains("LevelAssigned"))
                dgvHistory.Columns["LevelAssigned"].HeaderText = "Trình Độ";
        }


        //private void DrawLineChart(List<TestAttemptHistory> history)
        //{
        //    chartProgress.Series.Clear();
        //    chartProgress.Titles.Clear();
        //    chartProgress.Titles.Add("Tiến Trình Điểm Số Qua Các Bài Kiểm Tra");

           
        //    Series progressSeries = new Series("Điểm số")
        //    {
        //        ChartType = SeriesChartType.Line,
        //        BorderWidth = 3,
        //        Color = System.Drawing.Color.Blue,
        //        MarkerStyle = MarkerStyle.Circle,
        //        MarkerSize = 8
        //    };

        //    chartProgress.ChartAreas[0].AxisX.Title = "Thứ Tự Bài Test";
        //    chartProgress.ChartAreas[0].AxisY.Title = "Điểm số (%)";
        //    chartProgress.ChartAreas[0].AxisY.Minimum = 0;
        //    chartProgress.ChartAreas[0].AxisY.Maximum = 100;
        //    chartProgress.ChartAreas[0].AxisX.Interval = 1;

       
        //    for (int i = 0; i < history.Count; i++)
        //    {
        //        var item = history[i];
        //            progressSeries.Points.AddXY(
        //            i + 1, 
        //            item.ScorePercentage
        //        );

               
        //        progressSeries.Points[i].AxisLabel = $"#{i + 1}\n{item.TestTitle}";
        //    }

       
        //    chartProgress.Series.Add(progressSeries);
        //}


        private void bnt_quaylai_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void charchartProgress_Click(object sender, EventArgs e) { }
        private void dgvHistory_CellContentClick(object sender, DataGridViewCellEventArgs e) { }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}