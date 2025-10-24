using System;

namespace TestDauVao
{
    partial class Result_Test
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
            this.lblTenDeThi = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.lbl_socausai = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.lblthoigianlambai = new System.Windows.Forms.Label();
            this.lblDochinhxac = new System.Windows.Forms.Label();
            this.lblsocaudung = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.pnlHienthi = new System.Windows.Forms.Panel();
            this.dgvAnswers = new System.Windows.Forms.DataGridView();
            this.lblKetLuan = new System.Windows.Forms.Label();
            this.bnt_Hienthidapan = new System.Windows.Forms.Button();
            this.bnt_quaylaitrangchu = new System.Windows.Forms.Button();
            this.lbl_Tieu_de_bai_test = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.pnlHienthi.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAnswers)).BeginInit();
            this.SuspendLayout();
            // 
            // lblTenDeThi
            // 
            this.lblTenDeThi.AutoSize = true;
            this.lblTenDeThi.Location = new System.Drawing.Point(392, 7);
            this.lblTenDeThi.Name = "lblTenDeThi";
            this.lblTenDeThi.Size = new System.Drawing.Size(0, 16);
            this.lblTenDeThi.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.lbl_socausai);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Controls.Add(this.lblthoigianlambai);
            this.panel1.Controls.Add(this.lblDochinhxac);
            this.panel1.Controls.Add(this.lblsocaudung);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(21, 239);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(246, 441);
            this.panel1.TabIndex = 1;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // lbl_socausai
            // 
            this.lbl_socausai.AutoSize = true;
            this.lbl_socausai.Location = new System.Drawing.Point(178, 113);
            this.lbl_socausai.Name = "lbl_socausai";
            this.lbl_socausai.Size = new System.Drawing.Size(44, 16);
            this.lbl_socausai.TabIndex = 18;
            this.lbl_socausai.Text = "label7";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(12, 113);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(111, 16);
            this.label7.TabIndex = 17;
            this.label7.Text = "Incorrect answers";
            // 
            // lblthoigianlambai
            // 
            this.lblthoigianlambai.AutoSize = true;
            this.lblthoigianlambai.Location = new System.Drawing.Point(178, 173);
            this.lblthoigianlambai.Name = "lblthoigianlambai";
            this.lblthoigianlambai.Size = new System.Drawing.Size(44, 16);
            this.lblthoigianlambai.TabIndex = 15;
            this.lblthoigianlambai.Text = "label8";
            // 
            // lblDochinhxac
            // 
            this.lblDochinhxac.AutoSize = true;
            this.lblDochinhxac.Location = new System.Drawing.Point(178, 57);
            this.lblDochinhxac.Name = "lblDochinhxac";
            this.lblDochinhxac.Size = new System.Drawing.Size(44, 16);
            this.lblDochinhxac.TabIndex = 14;
            this.lblDochinhxac.Text = "label7";
            // 
            // lblsocaudung
            // 
            this.lblsocaudung.AutoSize = true;
            this.lblsocaudung.Location = new System.Drawing.Point(178, 12);
            this.lblsocaudung.Name = "lblsocaudung";
            this.lblsocaudung.Size = new System.Drawing.Size(44, 16);
            this.lblsocaudung.TabIndex = 13;
            this.lblsocaudung.Text = "label1";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(8, 173);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(164, 16);
            this.label5.TabIndex = 10;
            this.label5.Text = "Time to Complete the Test";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 57);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(63, 16);
            this.label3.TabIndex = 6;
            this.label3.Text = "Accuracy";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 12);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(103, 16);
            this.label2.TabIndex = 4;
            this.label2.Text = "Correct answers";
            // 
            // pnlHienthi
            // 
            this.pnlHienthi.Controls.Add(this.dgvAnswers);
            this.pnlHienthi.Controls.Add(this.lblKetLuan);
            this.pnlHienthi.Location = new System.Drawing.Point(289, 68);
            this.pnlHienthi.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pnlHienthi.Name = "pnlHienthi";
            this.pnlHienthi.Size = new System.Drawing.Size(721, 708);
            this.pnlHienthi.TabIndex = 2;
            this.pnlHienthi.Paint += new System.Windows.Forms.PaintEventHandler(this.pnlHienthi_Paint);
            // 
            // dgvAnswers
            // 
            this.dgvAnswers.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvAnswers.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAnswers.Location = new System.Drawing.Point(12, 37);
            this.dgvAnswers.Name = "dgvAnswers";
            this.dgvAnswers.RowHeadersWidth = 51;
            this.dgvAnswers.RowTemplate.Height = 24;
            this.dgvAnswers.Size = new System.Drawing.Size(706, 649);
            this.dgvAnswers.TabIndex = 1;
            this.dgvAnswers.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // lblKetLuan
            // 
            this.lblKetLuan.Location = new System.Drawing.Point(0, 0);
            this.lblKetLuan.Name = "lblKetLuan";
            this.lblKetLuan.Size = new System.Drawing.Size(100, 23);
            this.lblKetLuan.TabIndex = 2;
            // 
            // bnt_Hienthidapan
            // 
            this.bnt_Hienthidapan.Location = new System.Drawing.Point(56, 105);
            this.bnt_Hienthidapan.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.bnt_Hienthidapan.Name = "bnt_Hienthidapan";
            this.bnt_Hienthidapan.Size = new System.Drawing.Size(140, 33);
            this.bnt_Hienthidapan.TabIndex = 4;
            this.bnt_Hienthidapan.Text = "Show answer";
            this.bnt_Hienthidapan.UseVisualStyleBackColor = true;
            this.bnt_Hienthidapan.Click += new System.EventHandler(this.bnt_Hienthidapan_Click);
            // 
            // bnt_quaylaitrangchu
            // 
            this.bnt_quaylaitrangchu.Location = new System.Drawing.Point(56, 165);
            this.bnt_quaylaitrangchu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.bnt_quaylaitrangchu.Name = "bnt_quaylaitrangchu";
            this.bnt_quaylaitrangchu.Size = new System.Drawing.Size(140, 33);
            this.bnt_quaylaitrangchu.TabIndex = 5;
            this.bnt_quaylaitrangchu.Text = "Back to homepage";
            this.bnt_quaylaitrangchu.UseVisualStyleBackColor = true;
            this.bnt_quaylaitrangchu.Click += new System.EventHandler(this.bnt_quaylaitrangchu_Click);
            // 
            // lbl_Tieu_de_bai_test
            // 
            this.lbl_Tieu_de_bai_test.AutoSize = true;
            this.lbl_Tieu_de_bai_test.Font = new System.Drawing.Font("Microsoft YaHei", 26F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Tieu_de_bai_test.ForeColor = System.Drawing.Color.Blue;
            this.lbl_Tieu_de_bai_test.Location = new System.Drawing.Point(229, -4);
            this.lbl_Tieu_de_bai_test.Name = "lbl_Tieu_de_bai_test";
            this.lbl_Tieu_de_bai_test.Size = new System.Drawing.Size(0, 57);
            this.lbl_Tieu_de_bai_test.TabIndex = 0;
            // 
            // Result_Test
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1047, 850);
            this.Controls.Add(this.lbl_Tieu_de_bai_test);
            this.Controls.Add(this.bnt_quaylaitrangchu);
            this.Controls.Add(this.bnt_Hienthidapan);
            this.Controls.Add(this.pnlHienthi);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.lblTenDeThi);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "Result_Test";
            this.Text = "Result_Test";
            this.Load += new System.EventHandler(this.Result_Test_Load_1);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.pnlHienthi.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvAnswers)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        
        private System.Windows.Forms.Label lblTenDeThi;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel pnlHienthi;
        private System.Windows.Forms.TextBox txt_SoCauSai;
        private System.Windows.Forms.Button bnt_Hienthidapan;
        private System.Windows.Forms.Button bnt_quaylaitrangchu;
        private System.Windows.Forms.Label lblKetLuan;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lblthoigianlambai;
        private System.Windows.Forms.Label lblDochinhxac;
        private System.Windows.Forms.Label lblsocaudung;
        private System.Windows.Forms.Label lbl_socausai;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DataGridView dgvAnswers;
        private System.Windows.Forms.Label lbl_Tieu_de_bai_test;

        public EventHandler txt_ThoiGianLamBai_TextChanged { get; private set; }
    }
}