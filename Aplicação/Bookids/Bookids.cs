using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bookids
{
	public partial class Bookids : Form
	{
		public Bookids()
		{
			InitializeComponent();
		}

		private void Bookids_Load(object sender, EventArgs e)
		{

		}

        private void BtnClientes_Click(object sender, EventArgs e)
        {
            Clientes_Filhos clientes_filhos = new Clientes_Filhos();
            clientes_filhos.ShowDialog();
        }
    }
}
