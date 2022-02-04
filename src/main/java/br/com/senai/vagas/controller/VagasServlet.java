package br.com.senai.vagas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.senai.vagas.model.Vaga;
import br.com.senai.vagas.service.VagaService;


/**
 * Servlet implementation class VagasServlet
 */
@WebServlet("/")
public class VagasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private VagaService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VagasServlet() {
        super();
        this.service = new VagaService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		
		if(action == null) {
			action = "default";
		}
		
		switch(action) {
		case "/all":
			listAll(request, response);
			break;
			
		case "/closed":
			listClosed(request, response);
			break;
			
		case "/open":
			listOpen(request, response);
			break;
			
		case "/change":
			showChange(request, response);
			break;
			
		case "/excluir": 
			delete(request, response);
			break;
		
		case "/alterar":
			mostrarAlterar(request, response);
			break;
		
			
		default:
			response.sendRedirect(request.getContextPath() + "/emp_010.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		Vaga vaga = null;
		
		if (action.equals("/add")) {
			vaga = service.adicionar(request, response);
		} else if (action.equals("/update")){
			vaga = service.alterar(request, response);
		}

		
		if(vaga != null) {
			request.setAttribute("vaga", vaga);
			request.getRequestDispatcher("/emp_011.jsp").forward(request, response);
		}
		
	}
	

	private void listAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Vaga> lista = service.listarVagas();
		request.setAttribute("vagas", lista);
		request.setAttribute("tipo", 1);
		request.getRequestDispatcher("/emp_030.jsp").forward(request, response);
	}
	
	private void listOpen(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Vaga> lista = service.listarVagas(true);
		request.setAttribute("vagas", lista);
		request.setAttribute("tipo", 1);
		request.getRequestDispatcher("/emp_030.jsp").forward(request, response);
	}
	
	private void listClosed(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Vaga> lista = service.listarVagas(false);
		request.setAttribute("vagas", lista);
		request.setAttribute("tipo", 1);
		request.getRequestDispatcher("/emp_030.jsp").forward(request, response);
	}
	
	private void showChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Vaga> lista = service.listarVagas();
		request.setAttribute("vagas", lista);
		request.setAttribute("tipo", 4);
		request.getRequestDispatcher("/emp_030.jsp").forward(request, response);
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		this.service.deletarVaga(id);
		
		List<Vaga> lista = service.listarVagas();
		request.setAttribute("vagas", lista);
		request.setAttribute("tipo", 4);
		request.getRequestDispatcher("/emp_030.jsp").forward(request, response);
	}
	
	private void mostrarAlterar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		Vaga vaga = this.service.buscarVaga(id);
		request.setAttribute("vaga", vaga);
		request.setAttribute("update", true);
		
		request.getRequestDispatcher("/emp_010.jsp").forward(request, response);
	}
}
