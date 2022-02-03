package br.com.senai.vagas.service;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.senai.vagas.model.Vaga;
import br.com.senai.vagas.repository.VagasRepository;

public class VagaService {
	private VagasRepository repository;
	
	public VagaService() {
		this.repository = new VagasRepository();
	}
	
	public Vaga adicionar(HttpServletRequest request, HttpServletResponse response) {
		Vaga novaVaga = criarVaga(request);
		if(repository.adicionar(novaVaga).equals(1)) {
			return novaVaga;
		}
		return null;
		
	}
	
	public List<Vaga> listarVagas(){
		return this.repository.listarVagas();
	}
	
	public boolean deletarVaga(Integer id) {
		return this.repository.deletarVaga(id);
	}

	public Vaga criarVaga(HttpServletRequest request) {
		String descricao = request.getParameter("descricao");
		String reqObrigatorios = request.getParameter("reqObrigatorios");
		String reqDesejaveis = request.getParameter("reqDesejaveis");
		
		NumberFormat nf = new DecimalFormat("", DecimalFormatSymbols.getInstance(new Locale("pt", "BR")));
		
		Float remuneracao = 0.0F;
		try {
			remuneracao = nf.parse(request.getParameter("remuneracao")).floatValue();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String beneficios = request.getParameter("beneficios");
		String local = request.getParameter("local");
		
		Boolean aberta = true;
		
		Vaga vaga = new Vaga(descricao, reqObrigatorios, remuneracao, aberta, beneficios, local);
		
		if(reqDesejaveis != null) {
			vaga.setReqDesejaveis(reqDesejaveis);
		}
		
		return vaga;
	}
}
