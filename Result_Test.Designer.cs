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
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lblKetLuan = new System.Windows.Forms.Label();
            this.bnt_Hienthidapan = new System.Windows.Forms.Button();
            this.bnt_quaylaitrangchu = new System.Windows.Forms.Button();
            this.lblsocaudung = new System.Windows.Forms.Label();
            this.lblDochinhxac = new System.Windows.Forms.Label();
            this.lblthoigianlambai = new System.Windows.Forms.Label();
            this.lbl_socausai = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblTenDeThi
            // 
            this.lblTenDeThi.AutoSize = true;
            this.lblTenDeThi.Location = new System.Drawing.Point(441, 9);
            this.lblTenDeThi.Name = "lblTenDeThi";
            this.lblTenDeThi.Size = new System.Drawing.Size(0, 20);
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
            this.panel1.Location = new System.Drawing.Point(15, 163);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(254, 551);
            this.panel1.TabIndex = 1;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(14, 216);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(133, 20);
            this.label5.TabIndex = 10;
            this.label5.Text = "Thời Gian làm Bài";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(14, 89);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 20);
            this.label3.TabIndex = 6;
            this.label3.Text = "Độ Chính Xác";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 15);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(99, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "Số câu đúng";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.lblKetLuan);
            this.panel2.Location = new System.Drawing.Point(290, 1);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(712, 713);
            this.panel2.TabIndex = 2;
            // 
            // lblKetLuan
            // 
            this.lblKetLuan.AutoSize = true;
            this.lblKetLuan.Location = new System.Drawing.Point(24, 23);
            this.lblKetLuan.Name = "lblKetLuan";
            this.lblKetLuan.Size = new System.Drawing.Size(0, 20);
            this.lblKetLuan.TabIndex = 0;
            // 
            // bnt_Hienthidapan
            // 
            this.bnt_Hienthidapan.Location = new System.Drawing.Point(27, 38);
            this.bnt_Hienthidapan.Name = "bnt_Hienthidapan";
            this.bnt_Hienthidapan.Size = new System.Drawing.Size(158, 32);
            this.bnt_Hienthidapan.TabIndex = 4;
            this.bnt_Hienthidapan.Text = "Hiện thị đáp án";
            this.bnt_Hienthidapan.UseVisualStyleBackColor = true;
            // 
            // bnt_quaylaitrangchu
            // 
            this.bnt_quaylaitrangchu.Location = new System.Drawing.Point(27, 98);
            this.bnt_quaylaitrangchu.Name = "bnt_quaylaitrangchu";
            this.bnt_quaylaitrangchu.Size = new System.Drawing.Size(158, 32);
            this.bnt_quaylaitrangchu.TabIndex = 5;
            this.bnt_quaylaitrangchu.Text = "Quay lại trang chủ ";
            this.bnt_quaylaitrangchu.UseVisualStyleBackColor = true;
            this.bnt_quaylaitrangchu.Click += new System.EventHandler(this.bnt_quaylaitrangchu_Click);
            // 
            // lblsocaudung
            // 
            this.lblsocaudung.AutoSize = true;
            this.lblsocaudung.Location = new System.Drawing.Point(158, 15);
            this.lblsocaudung.Name = "lblsocaudung";
            this.lblsocaudung.Size = new System.Drawing.Size(51, 20);
            this.lblsocaudung.TabIndex = 13;
            this.lblsocaudung.Text = "label1";
            // 
            // lblDochinhxac
            // 
            this.lblDochinhxac.AutoSize = true;
            this.lblDochinhxac.Location = new System.Drawing.Point(158, 89);
            this.lblDochinhxac.Name = "lblDochinhxac";
            this.lblDochinhxac.Size = new System.Drawing.Size(51, 20);
            this.lblDochinhxac.TabIndex = 14;
            this.lblDochinhxac.Text = "label7";
            // 
            // lblthoigianlambai
            // 
            this.lblthoigianlambai.AutoSize = true;
            this.lblthoigianlambai.Location = new System.Drawing.Point(175, 216);
            this.lblthoigianlambai.Name = "lblthoigianlambai";
            this.lblthoigianlambai.Size = new System.Drawing.Size(51, 20);
            this.lblthoigianlambai.TabIndex = 15;
            this.lblthoigianlambai.Text = "label8";
            // 
            // lbl_socausai
            // 
            this.lbl_socausai.AutoSize = true;
            this.lbl_socausai.Location = new System.Drawing.Point(158, 154);
            this.lbl_socausai.Name = "lbl_socausai";
            this.lbl_socausai.Size = new System.Drawing.Size(51, 20);
            this.lbl_socausai.TabIndex = 18;
            this.lbl_socausai.Text = "label7";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(14, 154);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(83, 20);
            this.label7.TabIndex = 17;
            this.label7.Text = "Số câu sai";
            // 
            // Result_Test
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1002, 712);
            this.Controls.Add(this.bnt_quaylaitrangchu);
            this.Controls.Add(this.bnt_Hienthidapan);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.lblTenDeThi);
            this.Name = "Result_Test";
            this.Text = "Result_Test";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblTenDeThi;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel2;
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

        public EventHandler txt_ThoiGianLamBai_TextChanged { get; private set; }
    }
}