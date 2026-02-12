namespace Main
{
    partial class frmMain
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
            this.btnLogout = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.pnlMain = new System.Windows.Forms.Panel();
            this.bnt_Lichsunguoidung = new System.Windows.Forms.Button();
            this.btnVocabulary = new System.Windows.Forms.Button();
            this.pnlchucnang = new System.Windows.Forms.Panel();
            this.btnTest = new System.Windows.Forms.Button();
            this.btnGrammar = new System.Windows.Forms.Button();
            this.pnlHienthi = new System.Windows.Forms.Panel();
            this.pnlMain.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnLogout
            // 
            this.btnLogout.Location = new System.Drawing.Point(16, 550);
            this.btnLogout.Margin = new System.Windows.Forms.Padding(4);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(229, 50);
            this.btnLogout.TabIndex = 3;
            this.btnLogout.Text = "Setting";
            this.btnLogout.UseVisualStyleBackColor = true;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(101, 37);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 16);
            this.label1.TabIndex = 4;
            this.label1.Text = "label1";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // pnlMain
            // 
            this.pnlMain.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.pnlMain.Controls.Add(this.bnt_Lichsunguoidung);
            this.pnlMain.Controls.Add(this.btnVocabulary);
            this.pnlMain.Controls.Add(this.pnlchucnang);
            this.pnlMain.Controls.Add(this.label1);
            this.pnlMain.Controls.Add(this.btnLogout);
            this.pnlMain.Controls.Add(this.btnTest);
            this.pnlMain.Controls.Add(this.btnGrammar);
            this.pnlMain.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlMain.Location = new System.Drawing.Point(0, 0);
            this.pnlMain.Margin = new System.Windows.Forms.Padding(4);
            this.pnlMain.Name = "pnlMain";
            this.pnlMain.Size = new System.Drawing.Size(281, 897);
            this.pnlMain.TabIndex = 0;
            // 
            // bnt_Lichsunguoidung
            // 
            this.bnt_Lichsunguoidung.Location = new System.Drawing.Point(16, 425);
            this.bnt_Lichsunguoidung.Margin = new System.Windows.Forms.Padding(4);
            this.bnt_Lichsunguoidung.Name = "bnt_Lichsunguoidung";
            this.bnt_Lichsunguoidung.Size = new System.Drawing.Size(229, 75);
            this.bnt_Lichsunguoidung.TabIndex = 6;
            this.bnt_Lichsunguoidung.Text = "User history";
            this.bnt_Lichsunguoidung.UseVisualStyleBackColor = true;
            this.bnt_Lichsunguoidung.Click += new System.EventHandler(this.bnt_Lichsunguoidung_Click);
            // 
            // btnVocabulary
            // 
            this.btnVocabulary.Location = new System.Drawing.Point(16, 221);
            this.btnVocabulary.Margin = new System.Windows.Forms.Padding(4);
            this.btnVocabulary.Name = "btnVocabulary";
            this.btnVocabulary.Size = new System.Drawing.Size(229, 75);
            this.btnVocabulary.TabIndex = 5;
            this.btnVocabulary.Text = "Vocabulary";
            this.btnVocabulary.UseVisualStyleBackColor = true;
            this.btnVocabulary.Click += new System.EventHandler(this.btnVocabulary_Click);
            // 
            // pnlchucnang
            // 
            this.pnlchucnang.Location = new System.Drawing.Point(275, 0);
            this.pnlchucnang.Margin = new System.Windows.Forms.Padding(4);
            this.pnlchucnang.Name = "pnlchucnang";
            this.pnlchucnang.Size = new System.Drawing.Size(1068, 897);
            this.pnlchucnang.TabIndex = 1;
            // 
            // btnTest
            // 
            this.btnTest.Location = new System.Drawing.Point(16, 323);
            this.btnTest.Margin = new System.Windows.Forms.Padding(4);
            this.btnTest.Name = "btnTest";
            this.btnTest.Size = new System.Drawing.Size(229, 75);
            this.btnTest.TabIndex = 1;
            this.btnTest.Text = "Test";
            this.btnTest.UseVisualStyleBackColor = true;
            this.btnTest.Click += new System.EventHandler(this.btnTest_Click);
            // 
            // btnGrammar
            // 
            this.btnGrammar.Location = new System.Drawing.Point(16, 119);
            this.btnGrammar.Margin = new System.Windows.Forms.Padding(4);
            this.btnGrammar.Name = "btnGrammar";
            this.btnGrammar.Size = new System.Drawing.Size(229, 75);
            this.btnGrammar.TabIndex = 0;
            this.btnGrammar.Text = "Grammar";
            this.btnGrammar.UseVisualStyleBackColor = true;
            this.btnGrammar.Click += new System.EventHandler(this.btnLesson_Click);
            // 
            // pnlHienthi
            // 
            this.pnlHienthi.BackgroundImage = global::Main.Properties.Resources.pngtree_simple_opening_learning_background_image_110171;
            this.pnlHienthi.Dock = System.Windows.Forms.DockStyle.Right;
            this.pnlHienthi.Location = new System.Drawing.Point(279, 0);
            this.pnlHienthi.Margin = new System.Windows.Forms.Padding(4);
            this.pnlHienthi.Name = "pnlHienthi";
            this.pnlHienthi.Size = new System.Drawing.Size(1065, 897);
            this.pnlHienthi.TabIndex = 1;
            this.pnlHienthi.Paint += new System.Windows.Forms.PaintEventHandler(this.pnlHienthi_Paint);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1344, 897);
            this.Controls.Add(this.pnlHienthi);
            this.Controls.Add(this.pnlMain);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmMain";
            this.Text = "Trang chính";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.pnlMain.ResumeLayout(false);
            this.pnlMain.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel pnlMain;
        private System.Windows.Forms.Button btnTest;
        private System.Windows.Forms.Button btnGrammar;
        private System.Windows.Forms.Panel pnlchucnang;
        private System.Windows.Forms.Panel pnlHienthi;
        private System.Windows.Forms.Button btnVocabulary;
        private System.Windows.Forms.Button bnt_Lichsunguoidung;
    }
}

