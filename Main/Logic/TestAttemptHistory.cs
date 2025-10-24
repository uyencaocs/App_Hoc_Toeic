using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestDauVao
{
    namespace TestDauVao.Services
    {
        public class TestAttemptHistory
        {
            public string TestTitle { get; set; }
            public double ScorePercentage { get; set; } 
            public DateTime DateCompleted { get; set; }
            public string LevelAssigned { get; set; } 
        }
    }
}
