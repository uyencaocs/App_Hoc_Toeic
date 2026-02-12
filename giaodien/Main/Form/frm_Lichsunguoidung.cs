using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using TestDauVao.Services;


namespace TestDauVao
{
    public partial class frm_Lichsunguoidung : Form
    {
        private readonly int _currentUserId;

      
        public frm_Lichsunguoidung(int userId)
        {
            InitializeComponent();
            _currentUserId = userId;
            this.Load += frm_Lichsunguoidung_Load;
        }


        private void frm_Lichsunguoidung_Load(object sender, EventArgs e)
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

                   
                    DrawLineChart(history);
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


        private void DrawLineChart(List<TestDauVao.Services.TestAttemptHistory> history)
        {
            
            if (this.chart_history == null) return;

            chart_history.Series.Clear();
            chart_history.Titles.Clear();
            chart_history.Titles.Add("Tiến Trình Điểm Số Qua Các Bài Kiểm Tra");

           
            Series progressSeries = new Series("Điểm số")
            {
                ChartType = SeriesChartType.Line, 
                BorderWidth = 3,
                Color = System.Drawing.Color.Blue,
                MarkerStyle = MarkerStyle.Circle,
                MarkerSize = 8
            };

            if (chart_history.ChartAreas.Any())
            {
                chart_history.ChartAreas[0].AxisX.Title = "Thứ Tự Bài Test";
                chart_history.ChartAreas[0].AxisY.Title = "Điểm số (%)";
                chart_history.ChartAreas[0].AxisY.Minimum = 0;
                chart_history.ChartAreas[0].AxisY.Maximum = 100;
                chart_history.ChartAreas[0].AxisX.Interval = 1; 
            }

      
            for (int i = 0; i < history.Count; i++)
            {
                var item = history[i];
                progressSeries.Points.AddXY(
                    i + 1,
                    item.ScorePercentage
                );

              
                progressSeries.Points[i].AxisLabel = $"#{i + 1}\n{item.TestTitle}";
            }

          
            chart_history.Series.Add(progressSeries);
        }

      
        private void bnt_quaylai_Click(object sender, EventArgs e)
        {
            this.Close();
        }

    
        private void dgvHistory_CellContentClick(object sender, DataGridViewCellEventArgs e) { }
        private void panel1_Paint(object sender, PaintEventArgs e) { } 
        private void label1_Click(object sender, EventArgs e) { }
        private void chart_history_Click(object sender, EventArgs e) { }
    }
}