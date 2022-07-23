using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace SqlDB
{
    public partial class Lesson : Form
    {
        public Lesson()
        {
            InitializeComponent();
        }




        SqlConnection connection = new SqlConnection(@"Data Source=SALIMOV\SQLEXPRESS;Initial Catalog=DbStudentNote;Integrated Security=True");
        private void btnList_Click(object sender, EventArgs e)
        {
            var command = new SqlCommand("Select * from Lessons", connection);
            var dataAdapter = new SqlDataAdapter(command);
            var dataTable = new DataTable();

            dataAdapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            connection.Open();
            var command = new SqlCommand("insert into Lessons (Name) values (@name)", connection);
            command.Parameters.AddWithValue("@name", txtName.Text);
            command.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Successfully");
        }

 

        private void btnDelete_Click(object sender, EventArgs e)
        {
            connection.Open();
            var command = new SqlCommand("Delete from Lessons where Id=@p1", connection);
            command.Parameters.AddWithValue("@p1", txtId.Text);
            command.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Deleted!");
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtId.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtName.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();

        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            connection.Open();
            var command = new SqlCommand("update Lessons set Name=@p1 where Id=@p2", connection);
            command.Parameters.AddWithValue("@p1", txtName.Text);
            command.Parameters.AddWithValue("@p2", txtId.Text);
            command.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Update!");
        }

        private void Lesson_Load(object sender, EventArgs e)
        {

        }
    }
}

//Data Source=SALIMOV\SQLEXPRESS;Initial Catalog=DbStudentNote;Integrated Security=True
