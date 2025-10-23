namespace TestDauVao
{
    partial class Test_Form
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
            this.lblTest = new System.Windows.Forms.Label();
            this.flpCacLoaiDeTest = new System.Windows.Forms.FlowLayoutPanel();
            this.SuspendLayout();
            // 
            // lblTest
            // 
            this.lblTest.AutoSize = true;
            this.lblTest.Font = new System.Drawing.Font("Constantia", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTest.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lblTest.Location = new System.Drawing.Point(430, 28);
            this.lblTest.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblTest.Name = "lblTest";
            this.lblTest.Size = new System.Drawing.Size(157, 42);
            this.lblTest.TabIndex = 0;
            this.lblTest.Text = "ĐỀ TEST";
            // 
            // flpCacLoaiDeTest
            // 
            this.flpCacLoaiDeTest.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.flpCacLoaiDeTest.AutoScroll = true;
            this.flpCacLoaiDeTest.Location = new System.Drawing.Point(2, 89);
            this.flpCacLoaiDeTest.Name = "flpCacLoaiDeTest";
            this.flpCacLoaiDeTest.Size = new System.Drawing.Size(1003, 637);
            this.flpCacLoaiDeTest.TabIndex = 1;
            // 
            // Test_Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 729);
            this.Controls.Add(this.flpCacLoaiDeTest);
            this.Controls.Add(this.lblTest);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Test_Form";
            this.Text = "Placement_Test";
            this.Load += new System.EventHandler(this.Test_Form_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblTest;
        private System.Windows.Forms.FlowLayoutPanel flpCacLoaiDeTest;
    }
}