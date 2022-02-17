namespace Ese10StoredProcBanche
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
            this.btnContaFiliali = new System.Windows.Forms.Button();
            this.txtComune = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtNomeBanca = new System.Windows.Forms.TextBox();
            this.btnElencoFiliali = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnContaFiliali
            // 
            this.btnContaFiliali.Location = new System.Drawing.Point(12, 87);
            this.btnContaFiliali.Name = "btnContaFiliali";
            this.btnContaFiliali.Size = new System.Drawing.Size(160, 36);
            this.btnContaFiliali.TabIndex = 0;
            this.btnContaFiliali.Text = "CONTA FILIALI";
            this.btnContaFiliali.UseVisualStyleBackColor = true;
            this.btnContaFiliali.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtComune
            // 
            this.txtComune.Location = new System.Drawing.Point(12, 42);
            this.txtComune.Name = "txtComune";
            this.txtComune.Size = new System.Drawing.Size(100, 22);
            this.txtComune.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 17);
            this.label1.TabIndex = 2;
            this.label1.Text = "comune";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(163, 19);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 17);
            this.label2.TabIndex = 4;
            this.label2.Text = "Nome banca";
            // 
            // txtNomeBanca
            // 
            this.txtNomeBanca.Location = new System.Drawing.Point(163, 42);
            this.txtNomeBanca.Name = "txtNomeBanca";
            this.txtNomeBanca.Size = new System.Drawing.Size(100, 22);
            this.txtNomeBanca.TabIndex = 3;
            // 
            // btnElencoFiliali
            // 
            this.btnElencoFiliali.Location = new System.Drawing.Point(228, 87);
            this.btnElencoFiliali.Name = "btnElencoFiliali";
            this.btnElencoFiliali.Size = new System.Drawing.Size(160, 36);
            this.btnElencoFiliali.TabIndex = 5;
            this.btnElencoFiliali.Text = "ELENCO FILIALI";
            this.btnElencoFiliali.UseVisualStyleBackColor = true;
            this.btnElencoFiliali.Click += new System.EventHandler(this.btnElencoFiliali_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnElencoFiliali);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtNomeBanca);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtComune);
            this.Controls.Add(this.btnContaFiliali);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnContaFiliali;
        private System.Windows.Forms.TextBox txtComune;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtNomeBanca;
        private System.Windows.Forms.Button btnElencoFiliali;
    }
}

