namespace TestDauVao
{
    partial class Lichsunguoidung
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
           
            this.panel1 = new System.Windows.Forms.Panel();
           
            this.dgvHistory = new System.Windows.Forms.DataGridView();
            this.bnt_quaylai = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
           
            ((System.ComponentModel.ISupportInitialize)(this.dgvHistory)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.bnt_quaylai);
            this.panel1.Controls.Add(this.dgvHistory);
          
            this.panel1.Location = new System.Drawing.Point(1, 8);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(791, 440);
            this.panel1.TabIndex = 0;
            // 
            // chartProgress
            // 
           
            
            // 
            // dgvHistory
            // 
            this.dgvHistory.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvHistory.Location = new System.Drawing.Point(417, 137);
            this.dgvHistory.Name = "dgvHistory";
            this.dgvHistory.RowTemplate.Height = 28;
            this.dgvHistory.Size = new System.Drawing.Size(360, 293);
            this.dgvHistory.TabIndex = 1;
            this.dgvHistory.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvHistory_CellContentClick);
            // 
            // bnt_quaylai
            // 
            this.bnt_quaylai.Location = new System.Drawing.Point(696, 29);
            this.bnt_quaylai.Name = "bnt_quaylai";
            this.bnt_quaylai.Size = new System.Drawing.Size(81, 29);
            this.bnt_quaylai.TabIndex = 2;
            this.bnt_quaylai.Text = "Quay lại";
            this.bnt_quaylai.UseVisualStyleBackColor = true;
            this.bnt_quaylai.Click += new System.EventHandler(this.bnt_quaylai_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(33, 97);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(146, 20);
            this.label1.TabIndex = 3;
            this.label1.Text = "Biểu đồ người dùng";
            // 
            // Lichsunguoidung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.panel1);
            this.Name = "Lichsunguoidung";
            this.Text = "Lichsunguoidung";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
           
            ((System.ComponentModel.ISupportInitialize)(this.dgvHistory)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dgvHistory;
      
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button bnt_quaylai;
    }
}