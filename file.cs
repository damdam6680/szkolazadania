public partial class Form2 : Form
    {
        int x = 0;
        int z = 0;
        private int _ticks;
        public Form2()
        {
            InitializeComponent();
            
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            this.TopMost = true;

        }

        private void Form2_KeyDown(object sender, KeyEventArgs e)
        {
            
        }

        private void Form2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(e.KeyChar == 88)
            {      
                x++;
            }
            if(e.KeyChar == 90)
            {
                z++;
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            _ticks++;
           
            if(_ticks == 100)
            {
                
                string a = x.ToString();
                string b = z.ToString();
                MessageBox.Show(this, a +" "+ b);
                this.Close();
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
