package br.com.senai.vagas.model;

public class Vaga {
	private Integer id;
	private String descricao;
	private String reqObrigatorios;
	private String reqDesejaveis;
	private Float remuneracao;
	private Boolean aberta;
	private String beneficios;
	private String local;
	
	public Vaga() {
		
	}
	
	

	public Vaga(String descricao, String reqObrigatorios, Float remuneracao, Boolean aberta,
			String beneficios, String local) {
		this.descricao = descricao;
		this.reqObrigatorios = reqObrigatorios;
		this.remuneracao = remuneracao;
		this.aberta = aberta;
		this.beneficios = beneficios;
		this.local = local;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getReqObrigatorios() {
		return reqObrigatorios;
	}

	public void setReqObrigatorios(String reqObrigatorios) {
		this.reqObrigatorios = reqObrigatorios;
	}

	public String getReqDesejaveis() {
		return reqDesejaveis;
	}

	public void setReqDesejaveis(String reqDesejaveis) {
		this.reqDesejaveis = reqDesejaveis;
	}

	public Float getRemuneracao() {
		return remuneracao;
	}

	public void setRemuneracao(Float remuneracao) {
		this.remuneracao = remuneracao;
	}

	public Boolean getAberta() {
		return aberta;
	}

	public void setAberta(Boolean aberta) {
		this.aberta = aberta;
	}

	public String getBeneficios() {
		return beneficios;
	}

	public void setBeneficios(String beneficios) {
		this.beneficios = beneficios;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}
	
	

}
