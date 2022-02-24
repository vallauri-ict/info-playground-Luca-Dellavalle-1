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

namespace Ese11StoredProcedureStudenti
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        static readonly string CONNECTION_STRING = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\'C:\\Users\\Luca Dellavalle\\Documents\\GitHub\\info-playground-Luca-Dellavalle-1\\Ese11StoredProcedureStudenti\\Scuola.mdf\';Integrated Security = True; Connect Timeout = 30"; 

        private void btnElencoStudenti_Click(object sender, EventArgs e)
        {
            string sql = "ElencoStudenti";

            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlParameter InputClasse = new SqlParameter();
                    InputClasse.Value = txtClasse.Text;
                    InputClasse.ParameterName = "InputClasse";
                    InputClasse.Direction = ParameterDirection.Input;
                    InputClasse.DbType = DbType.String;
                    InputClasse.Size = 50;
                    cmd.Parameters.Add(InputClasse);

                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataReader ris = cmd.ExecuteReader();
                    string s = "";
                    while (ris.Read())
                    {
                        for (int i = 0; i < ris.FieldCount; i++)
                        {
                            s += ris.GetValue(i) + " - ";
                        }
                        s += "\n";
                        
                    }

                    MessageBox.Show(s, "Risultato stored");
                    ris.Close();

                }
            }
        }
    }
}
