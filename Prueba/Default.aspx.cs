using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Prueba
{
    public class EncabezadoModel
    {
        public string titulo { get; set; }
        public bool desglose { get; set; }
        public int vista { get; set; }
        public string prefijo { get; set; }
        public List<NivelModel> nivel { get; set; }
    }

    public class NivelModel
    {
        public string idElemento { get; set; }
        public string texto { get; set; }
        public string titulo_h { get; set; }
        public string periodo { get; set; }
        public string[] pestanas { get; set; }
        public string[] nota { get; set; }
        public string[] fuente { get; set; }
        public string[] glosario { get; set; }
        public int col_dim { get; set; }
        public List<NivelModel> nivel { get; set; }
    }


    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Inicializacion de Variables 
            string titulo = TextBoxTitulo.Text;
            bool desglose;
            if (RadioButtonTrue.Checked)
            {
                desglose = true;
            }
            else
            {
                desglose = false;
            }

            int vista = int.Parse(TextBoxVista.Text);
            string prefijo = TextBoxPrefijo.Text;
            string titulo_h = TextBoxTitulo_h.Text;

            //creacion de la estructura del encabezado
            var encabezado = new EncabezadoModel
            {
                titulo = titulo,
                desglose = desglose,
                vista = vista,
                prefijo = prefijo,
            };

            //generar archivo .JS
            string path = @"C:\Users\bored\Desktop\prueba.js";
            var options = new JsonSerializerOptions { WriteIndented = true };
            string jsonString = System.Text.Json.JsonSerializer.Serialize(encabezado, options);
            System.IO.File.WriteAllText(path, jsonString);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idElemento;
            string texto;
            string titulo_h;
            string periodo;
            List<string> pestanas;
            List<string> lista;
            List<string> nota;
            List<string> fuente;
            List<string> glosario;
            int col_dim;


            /*var nivel = new NivelModel
            {
                idElemento = idElemento,
                titulo_h = titulo_h,
                periodo = periodo,
                pestanas = pestanas,
                lista = lista,
                nota = nota,
                fuente = fuente,
                glosario = glosario
                col_dim = col_dim,
            };*/ 
        }
    }
}