package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controlador.ControladorInscripciones;
import view.AlumnoView;
import view.CursoView;
import view.MateriaView;

public class Controlador extends HttpServlet {

	private static final long serialVersionUID = 1087702007634924546L;
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
            String action = request.getParameter("action");
            String jspPage = "/index.jsp";

            if ((action == null) || (action.length() < 1))
            {
                action = "default";
            }

            if ("default".equals(action))
            {
                jspPage = "/index.jsp";
            }
            else if ("displaylist".equals(action))
            {
            	List<AlumnoView> alumnos = ControladorInscripciones.getInstancia().getAlumnos();
                request.setAttribute("alumnos", alumnos);
                jspPage = "/MostrarLista.jsp";
            }
            else if ("displaycourses".equals(action))
            {
            	List<CursoView> cursos = ControladorInscripciones.getInstancia().getCursos();
                request.setAttribute("cursos", cursos);
                jspPage = "/MostrarListaCursos.jsp";
            }
            else if ("displaysubjects".equals(action))
            {
            	List<MateriaView> materias = ControladorInscripciones.getInstancia().getMaterias();
                request.setAttribute("materias", materias);
                jspPage = "/MostrarListaMaterias.jsp";
            }
            else if ("displayalumno".equals(action))
            {
//                String legajo = request.getParameter("legajo");
//                AlumnoView alumno = ControladorInscripciones.getInstancia().buscarAlumno(legajo);
//                request.setAttribute("alumno", cliente);
//
//                jspPage = "/MostrarCliente.jsp";
            }
//            else if ("editcustomer".equals(action))
//            {
//                String id = request.getParameter("id");
//                Cliente cliente = AdminCliente.getInstancia().getCliente(id);
//                request.setAttribute("cliente", cliente);
//                jspPage = "/EditarCliente.jsp";            
//            }
//            else if ("modificarCliente".equals(action))
//            {
//            	System.out.println("DSKLDSAMKLDSA");
//                String id = request.getParameter("id");
//                String nombre = request.getParameter("nombre");
//                String apellido = request.getParameter("apellido");
//                String direccion = request.getParameter("direccion");
//                System.out.println("ID: " + id + " NOMBRE: " + nombre + " APELLIDO: " + apellido + " DIRECCION: " + direccion);
//                if(direccion != null){  	
//                	AdminCliente.getInstancia().modificarCliente(id, nombre, apellido, direccion);
//                }
//                List<Cliente> clientes = AdminCliente.getInstancia().getClientes();
//                request.setAttribute("clientes", clientes);
//                jspPage = "/MostrarLista.jsp";            
//            }
            else if ("altaalumno".equals(action))	
            {
            	jspPage = "/AltaAlumno.jsp"; 
            }
            else if ("agregaralumno".equals(action))
            {
            	String nombre = request.getParameter("nombre");
            
            	ControladorInscripciones.getInstancia().agregarAlumno(nombre);
            	
            	List<AlumnoView> alumnos = ControladorInscripciones.getInstancia().getAlumnos();
                request.setAttribute("alumnos", alumnos);
                jspPage = "/MostrarLista.jsp"; 
            }
            dispatch(jspPage, request, response);
        }
    
    
    
        protected void dispatch(String jsp, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
            if (jsp != null)
            {
            	/*Envía el control al JSP que pasamos como parámetro, y con los 
            	 * request / response cargados con los parámetros */
                RequestDispatcher rd = request.getRequestDispatcher(jsp);
                rd.forward(request, response);
            }
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
            doPost(request, response);
        }
}
