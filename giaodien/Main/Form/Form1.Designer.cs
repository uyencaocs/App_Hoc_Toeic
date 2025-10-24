namespace Main
{
    partial class frmLogin
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnLogin = new System.Windows.Forms.Button();
            this.lnkCreat = new System.Windows.Forms.LinkLabel();
            this.lnkForgot = new System.Windows.Forms.LinkLabel();
            this.chkSave = new System.Windows.Forms.CheckBox();
            this.chkShow = new System.Windows.Forms.CheckBox();
            this.txtPass = new System.Windows.Forms.TextBox();
            this.txtUsers = new System.Windows.Forms.TextBox();
            this.btnExit = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft YaHei UI", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Red;
            this.label1.Location = new System.Drawing.Point(333, 64);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(365, 37);
            this.label1.TabIndex = 0;
            this.label1.Text = "ENGLISH LEARNING APP";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.groupBox1.Controls.Add(this.pictureBox2);
            this.groupBox1.Controls.Add(this.pictureBox1);
            this.groupBox1.Controls.Add(this.btnLogin);
            this.groupBox1.Controls.Add(this.lnkCreat);
            this.groupBox1.Controls.Add(this.lnkForgot);
            this.groupBox1.Controls.Add(this.chkSave);
            this.groupBox1.Controls.Add(this.chkShow);
            this.groupBox1.Controls.Add(this.txtPass);
            this.groupBox1.Controls.Add(this.txtUsers);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(152, 135);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(690, 364);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Login";
            // 
            // pictureBox2
            // 
            this.pictureBox2.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox2.Image = global::Main.Properties.Resources.key;
            this.pictureBox2.Location = new System.Drawing.Point(139, 122);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(48, 43);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox2.TabIndex = 10;
            this.pictureBox2.TabStop = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Main.Properties.Resources.user;
            this.pictureBox1.Location = new System.Drawing.Point(139, 59);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(48, 40);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 9;
            this.pictureBox1.TabStop = false;
            // 
            // btnLogin
            // 
            this.btnLogin.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnLogin.Location = new System.Drawing.Point(266, 237);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(152, 42);
            this.btnLogin.TabIndex = 8;
            this.btnLogin.Text = "Login";
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // lnkCreat
            // 
            this.lnkCreat.AutoSize = true;
            this.lnkCreat.Location = new System.Drawing.Point(458, 312);
            this.lnkCreat.Name = "lnkCreat";
            this.lnkCreat.Size = new System.Drawing.Size(212, 29);
            this.lnkCreat.TabIndex = 7;
            this.lnkCreat.TabStop = true;
            this.lnkCreat.Text = "Create an account ";
            this.lnkCreat.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkCreat_LinkClicked);
            // 
            // lnkForgot
            // 
            this.lnkForgot.AutoSize = true;
            this.lnkForgot.Location = new System.Drawing.Point(22, 312);
            this.lnkForgot.Name = "lnkForgot";
            this.lnkForgot.Size = new System.Drawing.Size(195, 29);
            this.lnkForgot.TabIndex = 6;
            this.lnkForgot.TabStop = true;
            this.lnkForgot.Text = "Forgot password";
            this.lnkForgot.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkForgot_LinkClicked);
            // 
            // chkSave
            // 
            this.chkSave.AutoSize = true;
            this.chkSave.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.chkSave.Location = new System.Drawing.Point(257, 189);
            this.chkSave.Name = "chkSave";
            this.chkSave.Size = new System.Drawing.Size(178, 33);
            this.chkSave.TabIndex = 5;
            this.chkSave.Text = "Save account";
            this.chkSave.UseVisualStyleBackColor = true;
            this.chkSave.CheckedChanged += new System.EventHandler(this.chkSave_CheckedChanged);
            // 
            // chkShow
            // 
            this.chkShow.AutoSize = true;
            this.chkShow.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.chkShow.Location = new System.Drawing.Point(533, 132);
            this.chkShow.Name = "chkShow";
            this.chkShow.Size = new System.Drawing.Size(96, 33);
            this.chkShow.TabIndex = 4;
            this.chkShow.Text = "Show";
            this.chkShow.UseVisualStyleBackColor = true;
            this.chkShow.CheckedChanged += new System.EventHandler(this.chkShow_CheckedChanged);
            // 
            // txtPass
            // 
            this.txtPass.Location = new System.Drawing.Point(221, 131);
            this.txtPass.Name = "txtPass";
            this.txtPass.Size = new System.Drawing.Size(267, 34);
            this.txtPass.TabIndex = 3;
            this.txtPass.UseSystemPasswordChar = true;
            // 
            // txtUsers
            // 
            this.txtUsers.Location = new System.Drawing.Point(221, 65);
            this.txtUsers.Name = "txtUsers";
            this.txtUsers.Size = new System.Drawing.Size(267, 34);
            this.txtUsers.TabIndex = 2;
            // 
            // btnExit
            // 
            this.btnExit.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnExit.Location = new System.Drawing.Point(826, 616);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(139, 56);
            this.btnExit.TabIndex = 2;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // frmLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.BackgroundImage = global::Main.Properties.Resources.pngtree_simple_opening_learning_background_image_110171;
            this.ClientSize = new System.Drawing.Size(1006, 721);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.ForeColor = System.Drawing.Color.Transparent;
            this.Name = "frmLogin";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.frmLogin_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.LinkLabel lnkCreat;
        private System.Windows.Forms.LinkLabel lnkForgot;
        private System.Windows.Forms.CheckBox chkSave;
        private System.Windows.Forms.CheckBox chkShow;
        private System.Windows.Forms.TextBox txtPass;
        private System.Windows.Forms.TextBox txtUsers;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
    }
}

