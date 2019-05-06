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
	public partial class loginForm : Form
	{
		public loginForm()
		{
			InitializeComponent();
		
		}

		private void BtnRegistar_Click(object sender, EventArgs e)
		{
			registarForm registarForm = new registarForm();
			registarForm.ShowDialog();
		}


		private void BtnEntrar_Click(object sender, EventArgs e)
		{

			

			this.Hide();
			Bookids bookids = new Bookids();
			bookids.ShowDialog();
			this.Close();


		}

		private void LoginForm_Load(object sender, EventArgs e)
		{
			txtPassword.PasswordChar = '*';
		}
	}
}
