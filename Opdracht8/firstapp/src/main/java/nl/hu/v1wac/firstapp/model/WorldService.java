package nl.hu.v1wac.firstapp.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import nl.hu.v1wac.firstapp.persistence.CountryDAO;  

public class WorldService {
	CountryDAO cDAO = new CountryDAO();
	private ArrayList<Country> allCountries = new ArrayList<Country>();
	
	public WorldService() {
		allCountries = cDAO.findAll();
	}
	
	public List<Country> getAllCountries() {
		return allCountries;
	}
	
	public List<Country> get10LargestPopulations() {
		Collections.sort(allCountries, new Comparator<Country>() {
			public int compare(Country c1, Country c2) {
				return c2.getPopulation() - c1.getPopulation();
			};
		});
		
		return allCountries.subList(0, 10);
	}

	public List<Country> get10LargestSurfaces() {
		Collections.sort(allCountries, new Comparator<Country>() {
			public int compare(Country c1, Country c2) {
				return (int)(c2.getSurface() - c1.getSurface());
			};
		});
		
		return allCountries.subList(0, 10);
	}
	
	public Country getCountryByCode(String code) {
		Country result = null;
		
		for (Country c : allCountries) {
			if (c.getCode().equals(code)) {
				result = c;
				break;
			}
		}
		
		return result;
	}
	
	public boolean countryVerwijderen(String code) {
		return cDAO.delete(code);
	}
	
	public boolean countryAanpassen(String code, String iso3, String name, String capital, String region, String continent,
			int surface, int population) {
		return cDAO.update(code, iso3, name, capital, region, continent, surface, population);
	}
	
	public boolean countryToevogen(String code, String iso3, String name, String capital, String region, String continent, String local, String government,
			int surface, int population, int latitude, int longitude) {
		return cDAO.save(code, iso3, name, capital, region, continent, local, government, surface, population, latitude, longitude);
	}
}
