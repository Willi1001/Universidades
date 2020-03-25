using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Universidad.ADUniversidad;
using Universidad.Model;

namespace Universidad
{
    public partial class _Default : Page
    {
        private ADUniversidades _adUniversidades;

        private enum LogTransac
        {
            Transaccion=1,
            Error=2
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarListaAlumnos();
                CargarListaProfesores();                
                CargarListaMaterias();
                CargarListaSalones();
            }
        }      

        private void CargarListaAlumnos()
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                dgvAlumnos.DataSource= _adUniversidades.GetAllAlumnos().Where(x=> x.Estado==true).ToList();
                dgvAlumnos.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void CargarListaProfesores()
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                List<Profesores> listProfesore = _adUniversidades.GetAllProfesores().Where(x => x.Estado == true).ToList();
                dgvProfesores.DataSource = listProfesore;
                dgvProfesores.DataBind();

                ddlProfesores.DataSource = listProfesore;
                ddlProfesores.DataTextField = "Nombres";
                ddlProfesores.DataValueField = "IdProfesor";
                ddlProfesores.DataBind();

            }
            catch (Exception)
            {

                throw;
            }
        }

        private void CargarListaMaterias()
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                dgvMaterias.DataSource = _adUniversidades.GetAllMaterias().Where(x => x.Estado == true).ToList();
                dgvMaterias.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void CargarListaSalones()
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                List<Salon> listSalon= _adUniversidades.GetAllSalon().Where(x => x.Estado == true).ToList();
                dgvSalones.DataSource = listSalon;
                dgvSalones.DataBind();

                ddlSalones.DataSource = listSalon;
                ddlSalones.DataTextField = "Descripcion";
                ddlSalones.DataValueField = "IdSalon";
                ddlSalones.DataBind();

                
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnAgregarAlumnno_Click(object sender, EventArgs e)
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                Alumnos objNuevoAlumno = new Alumnos();
                objNuevoAlumno.Nombre = txtNombreAlumno.Text;
                objNuevoAlumno.Identificacion = txtIdentificacionAlumno.Text;
                objNuevoAlumno.FechaCreacion = DateTime.Now;
                objNuevoAlumno.Estado = true;
                _adUniversidades.AddAlumno(objNuevoAlumno);

                LogTransacciones objLog = new LogTransacciones();
                objLog.Descripcion ="Se agrego alumno con identificación: "+ txtIdentificacionAlumno.Text;
                objLog.Fecha = DateTime.Now;
                objLog.IdTransaccion = (Int16)LogTransac.Transaccion;
                _adUniversidades.AddLogTransaccion(objLog);
                CargarListaAlumnos();
                txtNombreAlumno.Text = string.Empty;
                txtIdentificacionAlumno.Text = string.Empty;
                liAlumnos.Attributes.Add("class", "active");
                //pillsAlumnos.Attributes.Add("class", "active in");
                //active in pills-Alumnos
            }
            catch (Exception error)
            {
                throw;
            }
        }

        protected void btn_AgregarMateria_Click(object sender, EventArgs e)
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                Materias objNuevaMateria = new Materias();
                objNuevaMateria.Descripcion = txtMateria.Text;
                objNuevaMateria.Estado = true;
                objNuevaMateria.IdProfesor = Convert.ToInt32(ddlProfesores.SelectedValue);
                objNuevaMateria.IdSalon = Convert.ToInt32(ddlSalones.SelectedValue);
                _adUniversidades.AddMateria(objNuevaMateria);
                CargarListaMaterias();
            }
            catch (Exception error)
            {

                throw;
            }
        }

        protected void btnAgregarProfesor_Click(object sender, EventArgs e)
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                Profesores objNuevoProfesor = new Profesores();
                objNuevoProfesor.Identificacion = txtNombresProfesor.Text;
                objNuevoProfesor.Nombres = txtNombresProfesor.Text;
                objNuevoProfesor.Estado = true;
                _adUniversidades.AddProfesores(objNuevoProfesor);
                CargarListaProfesores();
            }
            catch (Exception error)
            {

                throw;
            }
        }

        protected void btnAgregarSalones_Click(object sender, EventArgs e)
        {
            try
            {
                _adUniversidades = new ADUniversidades();
                Salon objNuevoProfesor = new Salon();
                objNuevoProfesor.Descripcion = txtNombresProfesor.Text;               
                objNuevoProfesor.Estado = true;
                _adUniversidades.AddSalon(objNuevoProfesor);
                CargarListaSalones();
            }
            catch (Exception error)
            {

                throw;
            }
        }
    }
}