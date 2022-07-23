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

namespace SqlDB
{
    public partial class FormHobby : Form
    {
        public FormHobby()
        {
            InitializeComponent();
        }

        SqlConnection connection = new SqlConnection(@"Data Source=SALIMOV\SQLEXPRESS;Initial Catalog=DbStudentNote;Integrated Security=True");
        
        void List()
        {
            var command = new SqlCommand("Select * from Hobbies", connection);
            var dataAdapter = new SqlDataAdapter(command);
            var dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
        }
        private void FormHobby_Load(object sender, EventArgs e)
        {
            List();
            
            //connection.Open();
            //var command = new SqlCommand("Select * from Student",connection);
            //var dataReader = command.ExecuteReader();
            //while (dataReader.Read())                                    ------------>  COMBOBOX
            //{
            //    cmbBox.Items.Add(dataReader["Name"]);
            //}
            //connection.Close();
        }


        private void btnList_Click(object sender, EventArgs e)
        {
            List();
        }
         
        private void btnSave_Click(object sender, EventArgs e)
        {
            connection.Open();
            var command = new SqlCommand("insert into Hobbies (Name) values (@p1)", connection);
            command.Parameters.AddWithValue("@p1", txtName.Text);
            command.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Successfully");
            
            List();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            connection.Open();
            var command = new SqlCommand("update Lessons set Name=@p1 where Id=@p2", connection);
            command.Parameters.AddWithValue("@p1", txtName.Text);
            command.Parameters.AddWithValue("@p2", txtId.Text);
            command.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Updated!");
            List();

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            connection.Open();
            var command = new SqlCommand("Delete from Hobbies where Id=@p1", connection);
            command.Parameters.AddWithValue("@p1", txtId.Text);
            command.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Deleted!");
            List();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtId.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtName.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            var command = new SqlCommand("Select * from Hobbies where Name=@p1", connection);
            command.Parameters.AddWithValue("@p1", txtName.Text);
            var dataAdapter = new SqlDataAdapter(command);
            var dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
        }
    }
}
