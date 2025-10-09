using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TestDauVao.Databaitestdauvao;
using static TestDauVao.Bai_Kiem_Tra_Trinh_Do;

namespace TestDauVao
{
    public partial class UC_SingleQuestion : UserControl
    {
        public UC_SingleQuestion()
        {
            InitializeComponent();
        }

        public int IDQuestion { get; set; }

        public void LoadData(PlacementQuestion questionData)
        {
            // Hiển thị số câu và nội dung câu hỏi
            lblQuestionText.Text = $"Câu {IDQuestion}: {questionData.Question}";

            // Hiển thị các đáp án
            rbOptionA.Text = questionData.OptionA;
            rbOptionB.Text = questionData.OptionB;
            rbOptionC.Text = questionData.OptionC;
            rbOptionD.Text = questionData.OptionD;

            // Đặt tên cho RadioButton để dễ dàng lấy đáp án người dùng sau này
            rbOptionA.Tag = 'A';
            rbOptionB.Tag = 'B';
            rbOptionC.Tag = 'C';
            rbOptionD.Tag = 'D';
        
        }
    }
}
