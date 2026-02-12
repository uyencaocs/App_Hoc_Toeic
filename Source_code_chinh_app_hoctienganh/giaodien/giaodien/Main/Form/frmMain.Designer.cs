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
            this.btnLogout.Location = new System.Drawing.Point(12, 676);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(172, 41);
            this.btnLogout.TabIndex = 3;
            this.btnLogout.Text = "Log Out";
            this.btnLogout.UseVisualStyleBackColor = true;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(71, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "label1";
            // 
            // pnlMain
            // 
            this.pnlMain.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.pnlMain.Controls.Add(this.btnVocabulary);
            this.pnlMain.Controls.Add(this.pnlchucnang);
            this.pnlMain.Controls.Add(this.label1);
            this.pnlMain.Controls.Add(this.btnLogout);
            this.pnlMain.Controls.Add(this.btnTest);
            this.pnlMain.Controls.Add(this.btnGrammar);
            this.pnlMain.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlMain.Location = new System.Drawing.Point(0, 0);
            this.pnlMain.Name = "pnlMain";
            this.pnlMain.Size = new System.Drawing.Size(211, 729);
            this.pnlMain.TabIndex = 0;
            this.pnlMain.Paint += new System.Windows.Forms.PaintEventHandler(this.pnlMain_Paint);
            // 
            // btnVocabulary
            // 
            this.btnVocabulary.Location = new System.Drawing.Point(12, 226);
            this.btnVocabulary.Name = "btnVocabulary";
            this.btnVocabulary.Size = new System.Drawing.Size(172, 61);
            this.btnVocabulary.TabIndex = 5;
            this.btnVocabulary.Text = "Vocabulary";
            this.btnVocabulary.UseVisualStyleBackColor = true;
            // 
            // pnlchucnang
            // 
            this.pnlchucnang.Location = new System.Drawing.Point(206, 0);
            this.pnlchucnang.Name = "pnlchucnang";
            this.pnlchucnang.Size = new System.Drawing.Size(801, 729);
            this.pnlchucnang.TabIndex = 1;
            // 
            // btnTest
            // 
            this.btnTest.Location = new System.Drawing.Point(12, 313);
            this.btnTest.Name = "btnTest";
            this.btnTest.Size = new System.Drawing.Size(172, 61);
            this.btnTest.TabIndex = 1;
            this.btnTest.Text = "Test";
            this.btnTest.UseVisualStyleBackColor = true;
            // 
            // btnGrammar
            // 
            this.btnGrammar.Location = new System.Drawing.Point(12, 145);
            this.btnGrammar.Name = "btnGrammar";
            this.btnGrammar.Size = new System.Drawing.Size(172, 61);
            this.btnGrammar.TabIndex = 0;
            this.btnGrammar.Text = "Grammar";
            this.btnGrammar.UseVisualStyleBackColor = true;
            this.btnGrammar.Click += new System.EventHandler(this.btnLesson_Click);
            // 
            // pnlHienthi
            // 
            this.pnlHienthi.Dock = System.Windows.Forms.DockStyle.Right;
            this.pnlHienthi.Location = new System.Drawing.Point(209, 0);
            this.pnlHienthi.Name = "pnlHienthi";
            this.pnlHienthi.Size = new System.Drawing.Size(799, 729);
            this.pnlHienthi.TabIndex = 1;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 729);
            this.Controls.Add(this.pnlHienthi);
            this.Controls.Add(this.pnlMain);
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
    }
}

