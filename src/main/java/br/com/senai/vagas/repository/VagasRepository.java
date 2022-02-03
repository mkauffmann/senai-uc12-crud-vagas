package br.com.senai.vagas.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.senai.vagas.model.Vaga;

public class VagasRepository {
	private ConectaBD bd;
	
	public VagasRepository() {
		this.bd = ConectaBD.getInstance();
	}
	
	public Integer adicionar(Vaga novaVaga) {

		Connection conn = this.bd.getConnection();
		
		PreparedStatement sql;
		try {
			sql = conn.prepareStatement("insert into vagas (descricao, req_obrigatorios," +
			"req_desejaveis, remuneracao, aberta, beneficios, local_trabalho) values " +
					"(?, ?, ?, ?, ?, ?, ? )");
			

			sql.setString(1, novaVaga.getDescricao());
			sql.setString(2, novaVaga.getReqObrigatorios());
			
			if (novaVaga.getReqDesejaveis() != null) {
				sql.setString(3, novaVaga.getReqDesejaveis());
			} else {
				sql.setString(3, null);
			}
			
			sql.setFloat(4, novaVaga.getRemuneracao());
			sql.setBoolean(5, novaVaga.getAberta());
			sql.setString(6, novaVaga.getBeneficios());
			sql.setString(7, novaVaga.getLocal());
		
			Integer insert = sql.executeUpdate();

			sql.close();
			conn.close();
			
			return insert;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;

	}
	
	public List<Vaga> listarVagas(){
		Connection conn = this.bd.getConnection();
		
		PreparedStatement sql;
		
		try {
			sql = conn.prepareStatement("select * from vagas");
			ResultSet result = sql.executeQuery();
			
			List<Vaga> vagas = criarLista(result);
			
			sql.close();
			conn.close();
			
			return vagas;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public boolean deletarVaga(Integer id) {
		Connection conn = this.bd.getConnection();
		
		PreparedStatement sql;
		
		boolean result = false;
		try {
			sql = conn.prepareStatement("delete from vagas where idvagas = ?");
			sql.setInt(1, id);
			
			result = sql.execute();
			
			sql.close();
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public List<Vaga> criarLista(ResultSet r){
		try {
			List<Vaga> vagas = new ArrayList<Vaga>();
			
			while(r.next()) {
				Vaga vaga = new Vaga();
				
				vaga.setId(r.getInt("idvagas"));
				vaga.setDescricao(r.getString("descricao"));
				vaga.setReqObrigatorios(r.getString("req_obrigatorios"));
				
				if(r.getString("req_desejaveis") != null) {
					vaga.setReqDesejaveis(r.getString("req_desejaveis"));
				}
				
				vaga.setRemuneracao(r.getFloat("remuneracao"));
				vaga.setAberta(r.getBoolean("aberta"));
				vaga.setBeneficios(r.getString("beneficios"));
				vaga.setLocal(r.getString("local_trabalho"));
				
				vagas.add(vaga);
			}
			
			r.close();
			return vagas;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
