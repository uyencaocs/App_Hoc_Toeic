namespace TestDauVao
{
    partial class NguoiDungchonThamGiaHoacKhongThamGiabaitestdauvao
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
            this.label1 = new System.Windows.Forms.Label();
            this.bnt_BatDauBaiKiemTra = new System.Windows.Forms.Button();
            this.bnt_KhongLambaiKiemtr = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(96, 216);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(806, 39);
            this.label1.TabIndex = 0;
            this.label1.Text = "Bạn Có Muốn Kiểm Tra Trình Độ Hiện Tại Không";
            // 
            // bnt_BatDauBaiKiemTra
            // 
            this.bnt_BatDauBaiKiemTra.Location = new System.Drawing.Point(103, 316);
            this.bnt_BatDauBaiKiemTra.Name = "bnt_BatDauBaiKiemTra";
            this.bnt_BatDauBaiKiemTra.Size = new System.Drawing.Size(131, 52);
            this.bnt_BatDauBaiKiemTra.TabIndex = 1;
            this.bnt_BatDauBaiKiemTra.Text = "Start";
            this.bnt_BatDauBaiKiemTra.UseVisualStyleBackColor = true;
            this.bnt_BatDauBaiKiemTra.Click += new System.EventHandler(this.bnt_BatDauBaiKiemTra_Click);
            // 
            // bnt_KhongLambaiKiemtr
            // 
            this.bnt_KhongLambaiKiemtr.Location = new System.Drawing.Point(734, 316);
            this.bnt_KhongLambaiKiemtr.Name = "bnt_KhongLambaiKiemtr";
            this.bnt_KhongLambaiKiemtr.Size = new System.Drawing.Size(111, 52);
            this.bnt_KhongLambaiKiemtr.TabIndex = 2;
            this.bnt_KhongLambaiKiemtr.Text = "Exit";
            this.bnt_KhongLambaiKiemtr.UseVisualStyleBackColor = true;
            this.bnt_KhongLambaiKiemtr.Click += new System.EventHandler(this.bnt_KhongLambaiKiemtr_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label2.Font = new System.Drawing.Font("Mongolian Baiti", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.label2.Location = new System.Drawing.Point(94, 38);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(493, 50);
            this.label2.TabIndex = 3;
            this.label2.Text = "Bài Kiểm Tra Trình Độ";
            // 
            // NguoiDungchonThamGiaHoacKhongThamGiabaitestdauvao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 729);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.bnt_KhongLambaiKiemtr);
            this.Controls.Add(this.bnt_BatDauBaiKiemTra);
            this.Controls.Add(this.label1);
            this.Name = "NguoiDungchonThamGiaHoacKhongThamGiabaitestdauvao";
            this.Text = "NguoiDungchonThamGiaHoacKhongThamGiabaitestdauvao";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button bnt_BatDauBaiKiemTra;
        private System.Windows.Forms.Button bnt_KhongLambaiKiemtr;
        private System.Windows.Forms.Label label2;
    }
}

