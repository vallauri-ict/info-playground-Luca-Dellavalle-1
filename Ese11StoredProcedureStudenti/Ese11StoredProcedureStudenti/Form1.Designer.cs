namespace Ese11StoredProcedureStudenti
{
    partial class Form1
    {
        /// <summary>
        /// Variabile di progettazione necessaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Pulire le risorse in uso.
        /// </summary>
        /// <param name="disposing">ha valore true se le risorse gestite devono essere eliminate, false in caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Codice generato da Progettazione Windows Form

        /// <summary>
        /// Metodo necessario per il supporto della finestra di progettazione. Non modificare
        /// il contenuto del metodo con l'editor di codice.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnElencoStudenti = new System.Windows.Forms.Button();
            this.txtClasse = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnElencoStudenti
            // 
            this.btnElencoStudenti.Location = new System.Drawing.Point(44, 131);
            this.btnElencoStudenti.Name = "btnElencoStudenti";
            this.btnElencoStudenti.Size = new System.Drawing.Size(160, 56);
            this.btnElencoStudenti.TabIndex = 0;
            this.btnElencoStudenti.Text = "ELENCO STUDENTI";
            this.btnElencoStudenti.UseVisualStyleBackColor = true;
            this.btnElencoStudenti.Click += new System.EventHandler(this.btnElencoStudenti_Click);
            // 
            // txtClasse
            // 
            this.txtClasse.Location = new System.Drawing.Point(44, 93);
            this.txtClasse.Name = "txtClasse";
            this.txtClasse.Size = new System.Drawing.Size(100, 22);
            this.txtClasse.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(44, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(125, 17);
            this.label1.TabIndex = 2;
            this.label1.Text = "Inserimento classe";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtClasse);
            this.Controls.Add(this.btnElencoStudenti);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnElencoStudenti;
        private System.Windows.Forms.TextBox txtClasse;
        private System.Windows.Forms.Label label1;
    }
}

