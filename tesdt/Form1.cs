using Microsoft.DirectX.AudioVideoPlayback;
using System;
using System.Windows.Forms;

namespace tesdt
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            WindowState = FormWindowState.Maximized;
            // your vid path here
            Video v = new Video(@"C:\Users\...\video.mp4")
            {
                Owner = this,
                Size = Screen.PrimaryScreen.Bounds.Size
            };
            v.Ending += (s, ev) => { Close(); };
            v.Play();
        }
    }
}
