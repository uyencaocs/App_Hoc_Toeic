using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

<<<<<<<< HEAD:Program.cs
namespace TestDauVao
========
namespace Main
>>>>>>>> origin/trungdev:giaodien/Main/Program.cs
{
    internal static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
<<<<<<<< HEAD:Program.cs
            Application.Run(new Test_Form());
========
            Application.Run(new frmMain());
>>>>>>>> origin/trungdev:giaodien/Main/Program.cs
        }
    }
}
