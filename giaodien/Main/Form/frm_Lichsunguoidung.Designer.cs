namespace TestDauVao
{
    partial class frm_Lichsunguoidung
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.pn_Lichsunguoidung = new System.Windows.Forms.Panel();
            this.chart_history = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.bnt_quaylai = new System.Windows.Forms.Button();
            this.dgvHistory = new System.Windows.Forms.DataGridView();
            this.pn_Lichsunguoidung.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart_history)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHistory)).BeginInit();
            this.SuspendLayout();
            // 
            // pn_Lichsunguoidung
            // 
            this.pn_Lichsunguoidung.AutoScroll = true;
            this.pn_Lichsunguoidung.Controls.Add(this.chart_history);
            this.pn_Lichsunguoidung.Controls.Add(this.label2);
            this.pn_Lichsunguoidung.Controls.Add(this.label1);
            this.pn_Lichsunguoidung.Controls.Add(this.bnt_quaylai);
            this.pn_Lichsunguoidung.Controls.Add(this.dgvHistory);
            this.pn_Lichsunguoidung.Location = new System.Drawing.Point(1, 5);
            this.pn_Lichsunguoidung.Margin = new System.Windows.Forms.Padding(2);
            this.pn_Lichsunguoidung.Name = "pn_Lichsunguoidung";
            this.pn_Lichsunguoidung.Size = new System.Drawing.Size(672, 677);
            this.pn_Lichsunguoidung.TabIndex = 0;
            this.pn_Lichsunguoidung.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // chart_history
            // 
            chartArea1.Name = "ChartArea1";
            this.chart_history.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chart_history.Legends.Add(legend1);
            this.chart_history.Location = new System.Drawing.Point(24, 53);
            this.chart_history.Name = "chart_history";
            series1.ChartArea = "ChartArea1";
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            this.chart_history.Series.Add(series1);
            this.chart_history.Size = new System.Drawing.Size(630, 225);
            this.chart_history.TabIndex = 5;
            this.chart_history.Text = "chart1";
            this.chart_history.Click += new System.EventHandler(this.chart_history_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(10, 373);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(108, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "User History";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(11, 16);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 24);
            this.label1.TabIndex = 3;
            this.label1.Text = "User chart";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // bnt_quaylai
            // 
            this.bnt_quaylai.Location = new System.Drawing.Point(528, 636);
            this.bnt_quaylai.Margin = new System.Windows.Forms.Padding(2);
            this.bnt_quaylai.Name = "bnt_quaylai";
            this.bnt_quaylai.Size = new System.Drawing.Size(107, 30);
            this.bnt_quaylai.TabIndex = 2;
            this.bnt_quaylai.Text = "Exit";
            this.bnt_quaylai.UseVisualStyleBackColor = true;
            this.bnt_quaylai.Click += new System.EventHandler(this.bnt_quaylai_Click);
            // 
            // dgvHistory
            // 
            this.dgvHistory.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvHistory.Location = new System.Drawing.Point(2, 407);
            this.dgvHistory.Margin = new System.Windows.Forms.Padding(2);
            this.dgvHistory.Name = "dgvHistory";
            this.dgvHistory.RowHeadersWidth = 51;
            this.dgvHistory.RowTemplate.Height = 28;
            this.dgvHistory.Size = new System.Drawing.Size(668, 207);
            this.dgvHistory.TabIndex = 1;
            this.dgvHistory.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvHistory_CellContentClick);
            // 
            // frm_Lichsunguoidung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(684, 693);
            this.Controls.Add(this.pn_Lichsunguoidung);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "frm_Lichsunguoidung";
            this.Text = "frm_Lichsunguoidung";
            this.Load += new System.EventHandler(this.frm_Lichsunguoidung_Load);
            this.pn_Lichsunguoidung.ResumeLayout(false);
            this.pn_Lichsunguoidung.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart_history)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHistory)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pn_Lichsunguoidung;
        private System.Windows.Forms.DataGridView dgvHistory;
      
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button bnt_quaylai;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart_history;
    }
}