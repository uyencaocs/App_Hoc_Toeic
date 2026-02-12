namespace Main
{
    partial class FrmGrammar
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
            this.cmblevel = new System.Windows.Forms.ComboBox();
            this.cmbTopic = new System.Windows.Forms.ComboBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rtbLesson = new System.Windows.Forms.RichTextBox();
            this.btnXemvidu = new System.Windows.Forms.Button();
            this.rtbExample = new System.Windows.Forms.RichTextBox();
            this.flpLessons = new System.Windows.Forms.FlowLayoutPanel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // cmblevel
            // 
            this.cmblevel.FormattingEnabled = true;
            this.cmblevel.Location = new System.Drawing.Point(165, 52);
            this.cmblevel.Margin = new System.Windows.Forms.Padding(4);
            this.cmblevel.Name = "cmblevel";
            this.cmblevel.Size = new System.Drawing.Size(160, 24);
            this.cmblevel.TabIndex = 0;
            // 
            // cmbTopic
            // 
            this.cmbTopic.FormattingEnabled = true;
            this.cmbTopic.Location = new System.Drawing.Point(435, 52);
            this.cmbTopic.Margin = new System.Windows.Forms.Padding(4);
            this.cmbTopic.Name = "cmbTopic";
            this.cmbTopic.Size = new System.Drawing.Size(365, 24);
            this.cmbTopic.TabIndex = 1;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rtbLesson);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.groupBox1.Location = new System.Drawing.Point(427, 146);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(601, 266);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Lesson";
            // 
            // rtbLesson
            // 
            this.rtbLesson.Enabled = false;
            this.rtbLesson.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.rtbLesson.ForeColor = System.Drawing.Color.Black;
            this.rtbLesson.Location = new System.Drawing.Point(8, 60);
            this.rtbLesson.Margin = new System.Windows.Forms.Padding(4);
            this.rtbLesson.Name = "rtbLesson";
            this.rtbLesson.Size = new System.Drawing.Size(584, 197);
            this.rtbLesson.TabIndex = 0;
            this.rtbLesson.Text = "";
            this.rtbLesson.TextChanged += new System.EventHandler(this.rtbLesson_TextChanged);
            // 
            // btnXemvidu
            // 
            this.btnXemvidu.Location = new System.Drawing.Point(902, 444);
            this.btnXemvidu.Margin = new System.Windows.Forms.Padding(4);
            this.btnXemvidu.Name = "btnXemvidu";
            this.btnXemvidu.Size = new System.Drawing.Size(100, 40);
            this.btnXemvidu.TabIndex = 4;
            this.btnXemvidu.Text = "Show";
            this.btnXemvidu.UseVisualStyleBackColor = true;
            this.btnXemvidu.Click += new System.EventHandler(this.btnXemvidu_Click);
            // 
            // rtbExample
            // 
            this.rtbExample.Enabled = false;
            this.rtbExample.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.rtbExample.Location = new System.Drawing.Point(8, 60);
            this.rtbExample.Margin = new System.Windows.Forms.Padding(4);
            this.rtbExample.Name = "rtbExample";
            this.rtbExample.Size = new System.Drawing.Size(584, 197);
            this.rtbExample.TabIndex = 0;
            this.rtbExample.Text = "";
            this.rtbExample.TextChanged += new System.EventHandler(this.rtbExample_TextChanged);
            // 
            // flpLessons
            // 
            this.flpLessons.BackColor = System.Drawing.Color.White;
            this.flpLessons.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.flpLessons.Location = new System.Drawing.Point(8, 39);
            this.flpLessons.Margin = new System.Windows.Forms.Padding(4);
            this.flpLessons.Name = "flpLessons";
            this.flpLessons.Size = new System.Drawing.Size(336, 624);
            this.flpLessons.TabIndex = 8;
            this.flpLessons.Paint += new System.Windows.Forms.PaintEventHandler(this.flpLessons_Paint);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rtbExample);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.groupBox2.Location = new System.Drawing.Point(427, 492);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox2.Size = new System.Drawing.Size(601, 266);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Example";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(97, 53);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 20);
            this.label1.TabIndex = 9;
            this.label1.Text = "Level";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(367, 53);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 20);
            this.label2.TabIndex = 10;
            this.label2.Text = "Topic";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.flpLessons);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(16, 146);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox3.Size = new System.Drawing.Size(359, 672);
            this.groupBox3.TabIndex = 11;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "List of grammar";
            // 
            // FrmGrammar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.ClientSize = new System.Drawing.Size(1044, 849);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.btnXemvidu);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.cmbTopic);
            this.Controls.Add(this.cmblevel);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "FrmGrammar";
            this.Text = "FrmGrammar";
            this.Load += new System.EventHandler(this.FrmGrammar_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cmblevel;
        private System.Windows.Forms.ComboBox cmbTopic;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RichTextBox rtbLesson;
        private System.Windows.Forms.Button btnXemvidu;
        private System.Windows.Forms.RichTextBox rtbExample;
        private System.Windows.Forms.FlowLayoutPanel flpLessons;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox3;
    }
}