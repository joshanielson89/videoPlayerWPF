using System;
using System.IO;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Threading;
using System.Collections.Generic;
using Microsoft.Win32;


namespace VideoPlayer_01
{
    public partial class MainWindow : Window
    {
        private bool userIsDraggingSlider = false;
        private bool userIsEditing = false;
        private bool userIsFastForwarding = false;
        private bool userIsRewinding = false;
        private bool mediaIsPlaying = false;
        private int forwardSpeed = 1;
        private int rewindSpeed = 1;
        public List<Times> filterTimes = new List<Times>();
        // private Times time = new Times();
        private TimeSpan temp;
        private int lineContents = 2;
        private string filterPath;
        private double currentVolume;


        // TODO:: Open video player at proper size for current video
        // TODO:: Make a way to edit filter times

        public MainWindow()
        {
            InitializeComponent();
            btnSkipBack.Content = "<< Back"; // xaml will not all the "<" character in control content. do it here.

        }

        private void btnOpenAudioFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Media files (*.mp3;*.mpg;*.mpeg;*m4a;*mp4;*MP4)|*.mp3;*.mpg;*.mpeg;*m4a;*mp4;*MP4|All files (*.*)|*.*";
            if (openFileDialog.ShowDialog() == true)
            {
                mePlayer.Source = new Uri(openFileDialog.FileName);
                lblStatus.Content = ParsePathName(mePlayer.Source.ToString());
                mePlayer.Play();
                mePlayer.Pause();
                currentVolume = mePlayer.Volume;
                filterPath = Directory.GetCurrentDirectory() + @"../../../ \Filters\" + ParsePathName(mePlayer.Source.ToString()) + ".txt";
                loadFilter();
            }
            //lblStatus.Content = mePlayer.Source;
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += timer_Tick;
            timer.Start();

        }

        private void loadFilter()
        {
            if (!File.Exists(filterPath))
            {
                lblStatus.Content += " - No Filter Loaded";
                using (System.IO.StreamWriter filter = new System.IO.StreamWriter(filterPath))
                {
                    // this will create the file but not write anything
                }
                return;
            } 
            else
            {
                string line;
                string[] lines = new string[lineContents];
                System.IO.StreamReader filter = new System.IO.StreamReader(filterPath);
                while((line = filter.ReadLine()) != null)
                {
                    lines = line.Split(' ');
                    TimeSpan start = new TimeSpan(Convert.ToInt64(lines[0]));
                    TimeSpan end = new TimeSpan(Convert.ToInt64(lines[1]));
                    // if there were a reason, read it in here
                    Times time = new Times();
                    time.Start = start;
                    time.End = end;
                    time.Reason = lines[2];
                    filterTimes.Add(time);
                }
                filter.Close();
                lblStatus.Content += " - Filter Loaded";
            }
        }
        
        private string ParsePathName(String Path) // Take path and return only the name of the file (with no extention)
        {
            string[] pathParts = Path.Split('/');
            pathParts = pathParts[pathParts.Length-1].Split('.');
            return pathParts[0];
        }

        private string ParsePath(String Path) // Take path and return only the name of the file (This will give you the name and extention)
        {
            string[] pathParts = Path.Split('/');
            return pathParts[pathParts.Length - 1];
        }

        void timer_Tick(object sender, EventArgs e)
        {
            if ((mePlayer.Source != null) && (mePlayer.NaturalDuration.HasTimeSpan) && (!userIsDraggingSlider))
            {
                lblProgressStatusEnd.Text = TimeSpan.FromSeconds(mePlayer.NaturalDuration.TimeSpan.TotalSeconds).ToString(@"hh\:mm\:ss");
                sliProgress.Minimum = 0;
                sliProgress.Maximum = mePlayer.NaturalDuration.TimeSpan.TotalSeconds;
                sliProgress.Value = mePlayer.Position.TotalSeconds;
            }
            if (userIsFastForwarding)
                mePlayer.Position = mePlayer.Position + TimeSpan.FromSeconds(forwardSpeed);
            if (userIsRewinding)
                mePlayer.Position = mePlayer.Position - TimeSpan.FromSeconds(rewindSpeed);
            inRestrictedTimeZone();
            if (!inRestrictedTimeZoneBool())
                mePlayer.Volume = currentVolume;

        }

        private void clearAllToggles() // resets all toggles when you push play or stop
        {
            userIsFastForwarding = false;
            userIsRewinding = false;
            forwardSpeed = 1;
            rewindSpeed = 1;
        }

        private void btnPlay_Click(object sender, RoutedEventArgs e)
        {
            clearAllToggles();
            if (mediaIsPlaying)
            {
                mediaIsPlaying = false;
                btnPlay.Content = "Play";
                mePlayer.Pause();
                mediaStatus.Content = "Paused";
            }
            else
            {
                mediaIsPlaying = true;
                btnPlay.Content = "Pause";
                mePlayer.Play();
                mediaStatus.Content = "";
            }
        }
        
        private void btnStop_Click(object sender, RoutedEventArgs e)
        {
            clearAllToggles();
            mePlayer.Stop();
            mediaIsPlaying = false;
            btnPlay.Content = "Play";
            mediaStatus.Content = "Stopped";
        }

        private void btnSkipBack_Click(object sender, RoutedEventArgs e) // skip back 1/20 of the video
        {
            clearAllToggles();
            mePlayer.Position = mePlayer.Position - TimeSpan.FromSeconds(mePlayer.NaturalDuration.TimeSpan.TotalSeconds / 20 );
        }

        private void btnSkipForward_Click(object sender, RoutedEventArgs e) // skip forward 1/20 of the video
        {
            clearAllToggles();
            mePlayer.Position = mePlayer.Position + TimeSpan.FromSeconds(mePlayer.NaturalDuration.TimeSpan.TotalSeconds / 20);
        }

        private void btnFastForward_Click(object sender, RoutedEventArgs e) // fast forward at factors of 2
        {
            forwardSpeed *= 2;
            rewindSpeed = 1;
            userIsFastForwarding = true;
            mediaIsPlaying = false;
            btnPlay.Content = "Play";
            mediaStatus.Content = forwardSpeed.ToString() + "X >>";
            
        }

        private void btnRewind_Click(object sender, RoutedEventArgs e) // rewind at factors of 2
        {
            rewindSpeed *= 2;
            forwardSpeed = 1;
            userIsRewinding = true;
            mediaIsPlaying = false;
            btnPlay.Content = "Play";
            mediaStatus.Content = "<< "+ rewindSpeed.ToString() + "X";
        } 

        private void btnAddFilter_Click(object sender, RoutedEventArgs e) 
        {
            if(!userIsEditing)
            {
                userIsEditing = true;
                btnAddFilterStart.Content = "End";
                temp = mePlayer.Position;
                mediaStatus.Content = "";
            }
            else
            {
                userIsEditing = false;
                btnAddFilterStart.Content = "Start";
                Times time = new Times();
                time.Start = temp;
                time.End = mePlayer.Position;
                // add a reason attribute here
                MessageBoxResult result = MessageBox.Show("Would you like to Mute or Skip? \n Yes to Mute, No to Skip", "Confirm", MessageBoxButton.YesNoCancel);
                switch (result)
                {
                    case MessageBoxResult.Yes:
                        time.Reason = "Mute";
                        mediaStatus.Content = "Mute Filter Added";
                        break;
                    case MessageBoxResult.No:
                        time.Reason = "Skip";
                        mediaStatus.Content = "Skip Filter Added";
                        break;
                    case MessageBoxResult.Cancel:
                        return;
                }
                filterTimes.Add(time);
                // write filter times to file
                writeFilterToFile();
                
            }
        }

        private void writeFilterToFile() // writes filter times to file in the filters folder
        {
            string contents = "";
            for (int i = 0; i < filterTimes.Count; i++)
            {
                contents += filterTimes[i].Start.Ticks.ToString() + " " + filterTimes[i].End.Ticks.ToString() + " " + filterTimes[i].Reason + Environment.NewLine;
            }
            File.WriteAllText(filterPath, contents);
        }

        private void btnViewFilter_Click(object sender, RoutedEventArgs e)// opens second window to view all current filters
        {
            // this will open a window for editing purposes
            Window1 win2 = new Window1(filterTimes);
            win2.Show();
            
        }

        // Next four functions deal with the position scrubber
        private void sliProgress_DragStarted(object sender, DragStartedEventArgs e)
        {
           userIsDraggingSlider = true;
           mePlayer.Pause();
        }

        private void sliProgress_DragDelta(object sender, DragDeltaEventArgs e)
        {
            if (!inRestrictedTimeZoneBool())
            {
                mePlayer.Position = TimeSpan.FromSeconds(sliProgress.Value);
            }
            else
            {
                // don't update screen
            }
        }

        private void sliProgress_DragCompleted(object sender, DragCompletedEventArgs e)
        {
            userIsDraggingSlider = false;
            mePlayer.Position = TimeSpan.FromSeconds(sliProgress.Value);
            if (mediaIsPlaying)
                mePlayer.Play();
        }

        private void sliProgress_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            lblProgressStatus.Text = TimeSpan.FromSeconds(sliProgress.Value).ToString(@"hh\:mm\:ss");
        }

        private void inRestrictedTimeZone() // skip over restricted time, mute on muted times
        {
            for (int i = 0; i < filterTimes.Count; i++)
            {
                if (mePlayer.Position > filterTimes[i].Start && mePlayer.Position < filterTimes[i].End) // if it's inside a foridden time, skip to end
                {
                    if (filterTimes[i].Reason == "Skip")
                        mePlayer.Position = filterTimes[i].End;
                    else
                        mePlayer.Volume = 0;
                }
            }
        }

        private bool inRestrictedTimeZoneBool() // will return true if in restricted time, false otherwise
        {
            for (int i = 0; i < filterTimes.Count; i++)
            {
                if (mePlayer.Position > filterTimes[i].Start && mePlayer.Position < filterTimes[i].End) // if it's inside a foridden time, skip to end
                    return true;
            }
            return false;
        }

        public void inputNewTimes(String start, String end, String reason) // this function works with the second window screen to input a new filter
        {
            // convert string to TimeSpan and make new Times object, then add to filterTimes list
            double startTime = TimeSpan.Parse(start).TotalSeconds;
            double endTime = TimeSpan.Parse(end).TotalSeconds;
            TimeSpan newStart = TimeSpan.FromSeconds(startTime);
            TimeSpan newEnd = TimeSpan.FromSeconds(endTime);
            Times time = new Times();
            time.Start = newStart;
            time.End = newEnd;
            time.Reason = reason;
            filterTimes.Add(time);

            writeFilterToFile();
        }

        public void deleteFilters()
        {
            // delete everything from filterTimes and overwrite output file
            for (int i = filterTimes.Count -1; i >= 0 ; i--)
            {
                filterTimes.Remove(filterTimes[i]);
            }
            File.WriteAllText(filterPath, "");

        }

        private void Grid_MouseWheel(object sender, MouseWheelEventArgs e) // use mouse wheel to change volume
        {
            mePlayer.Volume += (e.Delta > 0) ? 0.1 : -0.1;
            currentVolume = mePlayer.Volume;
        }

    }
}




        