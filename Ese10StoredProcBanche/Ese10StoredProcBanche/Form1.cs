﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ese10StoredProcBanche
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        static readonly string CONNECTION_STRING = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\'C:\\Users\\Luca Dellavalle\\Documents\\GitHub\\info-playground-Luca-Dellavalle-1\\Ese10StoredProcBanche\\Banche.mdf\\';Integrated Security=True;Connect Timeout=30";

        private void button1_Click(object sender, EventArgs e)
        {
            string sql = "cercaFiliali";

            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql,con)) {
                    SqlParameter nomeBanca = new SqlParameter();
                    nomeBanca.Value = txtNomeBanca.Text;
                    nomeBanca.ParameterName = "nomeBanca";
                    nomeBanca.Direction = ParameterDirection.Input;
                    nomeBanca.DbType = DbType.String;
                    nomeBanca.Size = 50;
                    cmd.Parameters.Add(nomeBanca);

                    SqlParameter comune = new SqlParameter();
                    comune.Value = txtComune.Text;
                    comune.ParameterName = "nomeBanca";
                    comune.Direction = ParameterDirection.Input;
                    comune.DbType = DbType.String;
                    comune.Size = 50;
                    cmd.Parameters.Add(comune);

                    cmd.CommandType = CommandType.StoredProcedure;

                }
            }
        }

        private void btnElencoFiliali_Click(object sender, EventArgs e)
        {
            string sql = "comuneFiliali";

            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlParameter nomeBanca = new SqlParameter();
                    nomeBanca.Value = txtNomeBanca.Text;
                    nomeBanca.ParameterName = "nomeBanca";
                    nomeBanca.Direction = ParameterDirection.Input;
                    nomeBanca.DbType = DbType.String;
                    nomeBanca.Size = 50;
                    cmd.Parameters.Add(nomeBanca);

                    SqlParameter comune = new SqlParameter();
                    comune.Value = txtComune.Text;
                    comune.ParameterName = "comune";
                    comune.Direction = ParameterDirection.Input;
                    comune.DbType = DbType.String;
                    comune.Size = 50;
                    cmd.Parameters.Add(comune);

                    SqlParameter totale = new SqlParameter();
                    totale.ParameterName = "totale";
                    totale.Direction = ParameterDirection.Output;
                    totale.DbType = DbType.Int32;
                    cmd.Parameters.Add(totale);

                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataReader ris = cmd.ExecuteReader();

                    while (ris.Read()) {
                        string s = "";
                        for (int i = 0; i < ris.FieldCount; i++)
                        {
                            s += ris.GetValue(i) + " - ";
                        }
                        MessageBox.Show(s, "Risultato stored");
                    }

                    ris.Close();

                    MessageBox.Show("totale filiali: "+ cmd.Parameters["totale"].Value);
                }
            }
        }
    }
}
