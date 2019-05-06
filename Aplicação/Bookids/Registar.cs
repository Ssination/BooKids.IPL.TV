using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bookids
{
	public partial class registarForm : Form
	{
		
		public registarForm()
		{
			InitializeComponent();
		}

		private void BtnRegistar_Click(object sender, EventArgs e)
		{

            

		}

		private void RegistarForm_Load(object sender, EventArgs e)
		{
			txtPassword.PasswordChar = '*';
			txtConfirmPass.PasswordChar = '*';
		}
	}
}
