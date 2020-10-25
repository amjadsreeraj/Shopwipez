using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class ConnectionHelper
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        public ConnectionHelper()
        {
            con.ConnectionString = connectionString;
            cmd.Connection = con;
        }
        public void opencon()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }
        public void closecon()
        {
            con.Close();
        }
        public SqlCommand getcmd
        {
            get
            {
                return cmd;
            }
        }
    }

    public static class DataManager
    {
        public static void InsertUpdateDelete(string storedProcedure, params object[] prameters)
        {
            ConnectionHelper c = new ConnectionHelper();
            c.getcmd.CommandType = CommandType.StoredProcedure;
            c.getcmd.CommandText = storedProcedure;
            c.opencon();
            c.getcmd.Parameters.Clear();
            SqlCommandBuilder.DeriveParameters(c.getcmd);
            int i = 0, j = 0;
            foreach (SqlParameter SPParams in c.getcmd.Parameters)
            {
                if (j > 0)
                {
                    SPParams.Value = prameters[i];
                    i++;
                }
                j++;
            }
            c.getcmd.ExecuteNonQuery();
            c.closecon();
        }

        public static string GetSingleString(string storedProcedure, params object[] prameters)
        {
            ConnectionHelper c = new ConnectionHelper();
            c.opencon();
            c.getcmd.CommandType = CommandType.StoredProcedure;
            c.getcmd.CommandText = storedProcedure;
            c.getcmd.Parameters.Clear();
            SqlCommandBuilder.DeriveParameters(c.getcmd);
            int i = 0, j = 0;
            foreach (SqlParameter SPParams in c.getcmd.Parameters)
            {
                if (j > 0)
                {
                    SPParams.Value = prameters[i];
                    i++;
                }
                j++;
            }
            string s = (string)c.getcmd.ExecuteScalar();
            c.closecon();
            return s;
        }

        public static int GetSingleInt(string storedProcedure, params object[] prameters)
        {
            ConnectionHelper c = new ConnectionHelper();
            c.opencon();
            c.getcmd.CommandType = CommandType.StoredProcedure;
            c.getcmd.CommandText = storedProcedure;
            c.getcmd.Parameters.Clear();
            SqlCommandBuilder.DeriveParameters(c.getcmd);
            int i = 0, j = 0;
            foreach (SqlParameter SPParams in c.getcmd.Parameters)
            {
                if (j > 0)
                {
                    SPParams.Value = prameters[i];
                    i++;
                }
                j++;
            }
            int n = (int)c.getcmd.ExecuteScalar();
            c.closecon();
            return n;
        }

        public static byte[] GetImage(string storedProcedure, params object[] prameters)
        {
            ConnectionHelper c = new ConnectionHelper();
            c.opencon();
            c.getcmd.CommandType = CommandType.StoredProcedure;
            c.getcmd.CommandText = storedProcedure;
            c.getcmd.Parameters.Clear();
            SqlCommandBuilder.DeriveParameters(c.getcmd);
            int i = 0, j = 0;
            foreach (SqlParameter SPParams in c.getcmd.Parameters)
            {
                if (j > 0)
                {
                    SPParams.Value = prameters[i];
                    i++;
                }
                j++;
            }
            byte[] b = (byte[])c.getcmd.ExecuteScalar();
            c.closecon();
            return b;
        }

        public static DataSet GetDataSet(string storedProcedure, params object[] prameters)
        {
            ConnectionHelper c = new ConnectionHelper();
            c.opencon();
            c.getcmd.CommandType = CommandType.StoredProcedure;
            c.getcmd.CommandText = storedProcedure;
            c.getcmd.Parameters.Clear();
            SqlCommandBuilder.DeriveParameters(c.getcmd);
            int i = 0, j = 0;
            foreach (SqlParameter SPParams in c.getcmd.Parameters)
            {
                if (j > 0)
                {
                    SPParams.Value = prameters[i];
                    i++;
                }
                j++;
            }
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = c.getcmd;
            da.Fill(ds);
            return ds;
        }
    }
}
