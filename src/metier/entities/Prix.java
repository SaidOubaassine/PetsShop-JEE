package metier.entities;

import java.io.Serializable;

public class Prix implements Serializable {
	private int id_prix;
	private String nom_prix;
	private String symbol_prix;
	

	
	public Prix(int id_prix, String nom_prix, String symbol_prix) {
		super();
		this.id_prix = id_prix;
		this.nom_prix = nom_prix;
		this.symbol_prix = symbol_prix;
	}

	public Prix() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getId_prix() {
		return id_prix;
	}

	public void setId_prix(int id_prix) {
		this.id_prix = id_prix;
	}

	public String getNom_prix() {
		return nom_prix;
	}

	public void setNom_prix(String nom_prix) {
		this.nom_prix = nom_prix;
	}

	public String getSymbol_prix() {
		return symbol_prix;
	}

	public void setSymbol_prix(String symbol_prix) {
		this.symbol_prix = symbol_prix;
	}

	public double USDtoEUR(double usd){
		return usd;
	}
	public double USDtoGBP(double usd){
		return usd;
	}
	public double EURtoUSD(double eur){
		return eur;
	}
	public double EURtoGBP(double eur){
		return eur;
	}
	public double GBPtoUSD(double gbp){
		return gbp;
	}
	public double GBPtoEUR(double gbp){
		return gbp;
	}
    
	
	
}

