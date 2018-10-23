using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace VideoPlayer_01
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Window1 : Window 
    {
        List<TimeStrings> filterTimes1 = new List<TimeStrings>();

        public Window1(List<Times> filters)
        {
            
            InitializeComponent();
            for(int i = 0; i < filters.Count; i++)
            {
                string str1 = TimeSpan.FromSeconds(filters[i].Start.TotalSeconds).ToString(@"hh\:mm\:ss");
                string str2 = TimeSpan.FromSeconds(filters[i].End.TotalSeconds).ToString(@"hh\:mm\:ss");
                TimeStrings ts = new TimeStrings();
                ts.Start = str1;
                ts.End = str2;
                ts.Reason = filters[i].Reason;
                filterTimes1.Add(ts);
            }

            fTimes.ItemsSource = filterTimes1;
        }

        private void btnAddNewTime_Click(object sender, RoutedEventArgs e)
        {
            InputBox.Visibility = System.Windows.Visibility.Visible;
        }

        private void btnEditItems_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Do you want to delete all filter times?", "Confirm", MessageBoxButton.YesNo);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    this.Close();
                    for (int i = filterTimes1.Count -1; i >= 0 ; i--)
                    {
                        // fTimes.Items.Remove(fTimes.Items[i]);
                        filterTimes1.Remove(filterTimes1[i]);
                    }
                    ((MainWindow)Application.Current.MainWindow).deleteFilters();
                    break;
                case MessageBoxResult.No:
                    break;
            }
            
        }

        private void btnAddTime_Click(object sender, RoutedEventArgs e)
        {
            

            // Do something with the Input
            String start = InputTextBox.Text;
            String end = InputTextBox2.Text;
            String reason = "";
            if (start != "" && end != "")
            {
                MessageBoxResult result = MessageBox.Show("Would you like to Mute or Skip? \n Yes to Mute, No to Skip", "Confirm", MessageBoxButton.YesNoCancel);
                switch (result)
                {
                    case MessageBoxResult.Yes:
                        reason = "Mute";
                        ((MainWindow)Application.Current.MainWindow).mediaStatus.Content = "Mute Filter Added";
                        break;
                    case MessageBoxResult.No:
                        reason = "Skip";
                        ((MainWindow)Application.Current.MainWindow).mediaStatus.Content = "Skip Filter Added";
                        break;
                    case MessageBoxResult.Cancel:
                        return;
                }
                ((MainWindow)Application.Current.MainWindow).inputNewTimes(start, end, reason);
                this.Close();
            }
            else
            {
                MessageBox.Show("Please input valid times");
            }
            // Clear InputBox.
            InputTextBox.Text = String.Empty;
            InputTextBox2.Text = String.Empty;

            InputBox.Visibility = System.Windows.Visibility.Collapsed;
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            InputBox.Visibility = System.Windows.Visibility.Collapsed;
            
            InputTextBox.Text = String.Empty;
            InputTextBox2.Text = String.Empty;
        }
        
    }
}
