package fr.eni.projet.bll;

import java.time.LocalDate;

import fr.eni.projet.bo.Article;
import fr.eni.projet.bo.Categorie;
import fr.eni.projet.bo.Utilisateur;
import fr.eni.projet.dal.DAOFactory;
import fr.eni.projet.dal.EnchereDAO;

public class EnchereManager {

	private static EnchereManager instance;

	private EnchereManager() {

	}

	public static EnchereManager getInstance() {
		if (instance == null) {
			instance = new EnchereManager();
		}
		return instance;
	}

	public void nouvelleVente(String nom, String description, LocalDate debut, LocalDate fin, int prixInitial,
			Utilisateur utilisateur, Categorie categorie) {
		Article article = new Article(nom, description, debut, fin, prixInitial, utilisateur, categorie);
		EnchereDAO enchereDAO = DAOFactory.getEnchereDAO();
		enchereDAO.insertArticle(article);
	}

}
