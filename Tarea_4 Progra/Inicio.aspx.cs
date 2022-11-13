using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea_4_Progra
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlHospital.Update();
        }

        protected void BAgregar_Click(object sender, EventArgs e)
        {
            SqlHospital.Insert();
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            SqlHospital.Delete();
        }

        protected void BPgenero_Click(object sender, EventArgs e)
        {
            PorcentajeGenero();
        }

        public void PorcentajeGenero()
        {
            double suma = 0;
            int Masculinos = 0;
            int Femeninos = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (registro["genero"].Equals("F"))
                {
                    suma++;
                    Femeninos++;
                }

                if (registro["genero"].Equals("M"))
                {
                    suma++;
                    Masculinos++;
                }
            }

            Label1.Text = "El porcentaje de mujeres es de: " + ((Femeninos * 100) / suma).ToString() + "%"
               + "\nEl porcentaje de hombres es de: " + ((Masculinos * 100) / suma).ToString() + "%";

            conexion.Close();
        }

        public void PorcentajeEdades()
        {
            double suma = 0; 
            int ninos = 0; 
            int jovenes = 0; 
            int adultos = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (float.Parse(registro["edad"].ToString()) <= 13)
                {
                    suma++;
                    ninos++;
                }

                if (float.Parse(registro["edad"].ToString()) > 13 && double.Parse(registro["edad"].ToString()) < 31)
                {
                    suma++;
                    jovenes++;
                }

                if (float.Parse(registro["edad"].ToString()) > 30)
                {
                    suma++;
                    adultos++;
                }
            }

            Label1.Text = "El porcentaje de niños es de: " + ((ninos * 100) / suma).ToString() + "%"
                + "\nEl porcentaje de jovenes es de: " + ((jovenes * 100) / suma).ToString() + "%"
                 + "\nEl porcentaje de adultos es de: " + ((adultos * 100) / suma).ToString() + "%";

            conexion.Close();
        }

        public void PorcentajeSeguros()
        {
            double suma = 0; 
            int conSeguro = 0; 
            int sinSeguro = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (registro["Seguro"].ToString() == "True")
                {
                    suma++;
                    conSeguro++;
                }

                if (registro["Seguro"].ToString().Equals("False"))
                {
                    suma++;
                    sinSeguro++;
                }

            }

            Label1.Text = "El porcentaje de personas con seguro es de: " + ((conSeguro * 100) / suma).ToString() + "%"
                + "\nEl porcentaje de personas sin seguro es de: " + ((sinSeguro * 100) / suma).ToString() + "%";

            conexion.Close();
        }

        protected void BPedades_Click(object sender, EventArgs e)
        {
            PorcentajeEdades();
        }

        protected void BPseguro_Click(object sender, EventArgs e)
        {
            PorcentajeSeguros();
        }

        protected void Bbuscar_Click(object sender, EventArgs e)
        {
            SqlBuscar.Insert();
        }

    }
}