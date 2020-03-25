using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Universidad.Model;

namespace Universidad.ADUniversidad
{
    public class ADUniversidades
    {
        private UniversidadesEntities _adUniversidades;

        public List<Alumnos> GetAllAlumnos()
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                List<Alumnos> alumnos = (from a in _adUniversidades.Alumnos
                                         select a).ToList();
                return alumnos;
            }
            catch (Exception error)
            {
                throw error;
            }
        }

        public void AddAlumno(Alumnos alumno)
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                _adUniversidades.Alumnos.Add(alumno);
                _adUniversidades.SaveChanges();
            }
            catch (Exception error)
            {

                throw;
            }
        }

        public List<Profesores> GetAllProfesores()
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                List<Profesores> profesores = (from p in _adUniversidades.Profesores
                                               select p).ToList();
                return profesores;
            }
            catch (Exception error)
            {
                throw error;
            }
        }
        public void AddProfesores(Profesores profesor)
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                _adUniversidades.Profesores.Add(profesor);
                _adUniversidades.SaveChanges();
            }
            catch (Exception error)
            {

                throw;
            }
        }

        public List<Materias> GetAllMaterias()
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                List<Materias> materias = (from m in _adUniversidades.Materias
                                             select m).ToList();
                return materias;
            }
            catch (Exception error)
            {
                throw error;
            }
        }
        public void AddMateria(Materias materia)
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                _adUniversidades.Materias.Add(materia);
                _adUniversidades.SaveChanges();
            }
            catch (Exception error)
            {

                throw;
            }
        }

        public List<Salon> GetAllSalon()
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                List<Salon> salones = (from s in _adUniversidades.Salon
                                       select s).ToList();
                return salones;
            }
            catch (Exception error)
            {
                throw error;
            }
        }
        public void AddSalon(Salon salon)
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                _adUniversidades.Salon.Add(salon);
                _adUniversidades.SaveChanges();
            }
            catch (Exception error)
            {

                throw;
            }
        }

        public void AddLogTransaccion(LogTransacciones logTransaccion)
        {
            try
            {
                _adUniversidades = new UniversidadesEntities();
                _adUniversidades.LogTransacciones.Add(logTransaccion);
                _adUniversidades.SaveChanges();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}