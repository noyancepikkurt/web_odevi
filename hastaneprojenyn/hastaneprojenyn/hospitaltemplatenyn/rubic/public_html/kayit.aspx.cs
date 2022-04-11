using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hastaneprojenyn.hospitaltemplatenyn.rubic
{
    public partial class kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            using (SqlConnection cnn = new SqlConnection("Data Source = ROSE\\ARDA; Initial Catalog = noyan_web; Integrated Security = True"))
            {



                using (SqlCommand cmd = cnn.CreateCommand())
                {

                    cmd.CommandText = "INSERT INTO datanyn (adsoyad,tckimlik,sifre) values (@p1,@p2,@p3); ";

                    cmd.Parameters.Add(new SqlParameter("@p1", TextBox1.Text));

                    cmd.Parameters.Add(new SqlParameter("@p2", TextBox2.Text));

                    cmd.Parameters.Add(new SqlParameter("@p3", TextBox3.Text));

                    cnn.Open();

                    cmd.ExecuteNonQuery();

                }

                Response.Redirect("giris.aspx");

            }


        }
    }
}