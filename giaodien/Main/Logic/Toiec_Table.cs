using System.Collections.Generic;

namespace TestDauVao.Services
{
    internal class Toiec_Table
    {
        public IEnumerable<object> Questions { get; internal set; }
        public object TestAttempts { get; internal set; }
        public object Level { get; internal set; }
        public object Test { get; internal set; }
    }
}