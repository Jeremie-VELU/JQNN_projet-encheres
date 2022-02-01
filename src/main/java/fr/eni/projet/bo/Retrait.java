package fr.eni.projet.bo;

public class Retrait {
	
	private String rue;
	private String codePostale;
	private String ville;
	private Article article;
	
	public Retrait() {
		super();
	}

	public Retrait(String rue, String codePostale, String ville, Article article) {
		super();
		this.rue = rue;
		this.codePostale = codePostale;
		this.ville = ville;
		this.article = article;
	}

	public String getRue() {
		return rue;
	}

	public void setRue(String rue) {
		this.rue = rue;
	}

	public String getCodePostale() {
		return codePostale;
	}

	public void setCodePostale(String codePostale) {
		this.codePostale = codePostale;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}
	
	public Article getArticle() {
		return article;
	}
	
	public void setArticle(Article article) {
		this.article = article;
	}
	
	
	
	
	
}