using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Delgado
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string[] productos = new string[] {"Cepillo de dientes", "Pasta dental",
                "Shampo", "Acondicionador", "Maquina de afeitar", "Espuma"};
                ListBox1.DataSource = productos;
                ListBox1.DataBind();

            }
        }

        protected void BtnIcluir_Click(object sender, EventArgs e)
        {
            if (ListBox1.SelectedIndex >= 0)
            {
                ListBox2.Items.Add(ListBox1.SelectedItem);
                ListBox1.SelectedIndex = -1;
            }
        }

        protected void BtnRemover_Click(object sender, EventArgs e)
        {
            if (ListBox2.SelectedIndex >= 0)
            {
                ListBox2.Items.RemoveAt(ListBox2.SelectedIndex);
                ListBox2.SelectedIndex = -1;
            }
        }

        protected void BtnInsertarNuevo_Click(object sender, EventArgs e)
        {
            string nombre = TxtItemNuevo.Text;
            if (nombre.Length > 0)
            {
                ListBox2.Items.Add(nombre);
                Panel.Visible = false;
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Clear();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnNuevoItem_Click(object sender, EventArgs e)
        {
            if (!Panel.Visible)
            {
                Panel.Visible = true;
            }
        }

        protected void BtnVer_Click(object sender, EventArgs e)
        {
            string items = "";

            foreach (ListItem item in ListBox2.Items)
            {
                if (item.Selected)
                {
                    items += item.Text + ", ";
                }
            }
            items = items.TrimEnd(',', ' ');
            LbMostrar.Text = items;
        }
    }
}