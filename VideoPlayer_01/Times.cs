using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VideoPlayer_01
{
    public class Times // times for Filtering
    {
        public TimeSpan Start { get; set; }
        public TimeSpan End { get; set; }
        public String Reason { get; set; }
    }

    public class TimeStrings // Times Class as strings for displaying in listView
    {
        public String Start { get; set; }
        public String End { get; set; }
        public String Reason { get; set; }
    }
}
