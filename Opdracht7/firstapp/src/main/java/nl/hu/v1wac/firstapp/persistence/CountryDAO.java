package nl.hu.v1wac.firstapp.persistence;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import nl.hu.v1wac.firstapp.model.Country;

public class CountryDAO extends BaseDAO {

	public ArrayList<Country> selectCountries(String query) {
		ArrayList<Country> results = new ArrayList<Country>();
		try (Connection con = super.getConnection()) {
			Statement stmt = con.createStatement();
			ResultSet dbResultSet = stmt.executeQuery(query);

			while (dbResultSet.next()) {
				String code = dbResultSet.getString("code");
				String iso3 = dbResultSet.getString("iso3");
				String name = dbResultSet.getString("name");
				String continent = dbResultSet.getString("continent");
				String capital = dbResultSet.getString("capital");
				String region = dbResultSet.getString("region");
				Double surface = dbResultSet.getDouble("surfacearea");
				Integer population = dbResultSet.getInt("population");
				String government = dbResultSet.getString("governmentform");
				Double latitude = dbResultSet.getDouble("latitude");
				Double longitude = dbResultSet.getDouble("longitude");
				Country newCountry = new Country(code, iso3, name, capital, continent, region, surface,
						population, government, latitude, longitude);
				results.add(newCountry);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		return results;
	}

	public ArrayList<Country> findAll() {
		return selectCountries("select * from country;");

	}

	public Country findByCode(String code) {
		ArrayList<Country> a = selectCountries("select * from country where code = '" + code + "';");
		return a.get(0);

	}

	public ArrayList<Country> find10LargestSurfaces() {
		return selectCountries("select * from country order by surfacearea desc limit 10;");

	}

	public ArrayList<Country> find10LargestPopulations() {
		return selectCountries("select * from country order by population desc limit 10;");

	}

	public Country save(Country c) {

		try (Connection con = super.getConnection()) {
			Statement stmt = con.createStatement();
			String query = "insert into country(code,name,continent,region,surfacearea,population,governmentform) values('"
					+ c.getIso3Code() + "','" + c.getName() + "','" + c.getContinent() + "','" + c.getRegion() + "',"
					+ c.getSurface() + "," + c.getPopulation() + "','" + c.getGovernment() + "');";
			stmt.executeQuery(query);
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		return c;
	}

	public Country update(Country c) {

		try (Connection con = super.getConnection()) {
			Statement stmt = con.createStatement();
			String query = "update country set code ='" + c.getIso3Code() + "',name ='" + c.getName()
					+ ", continent = '" + c.getContinent() + "',region ='" + c.getRegion() + "',surfacearea ="
					+ c.getSurface() + ", population =" + c.getPopulation() + ", governmentform= '" + c.getGovernment()
					+ "' where code ='" + c.getIso3Code() + "';";
			stmt.executeQuery(query);
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		return c;
	}

	public boolean delete(Country c) {
		try (Connection con = super.getConnection()) {
			Statement stmt = con.createStatement();
			String query = "delete from country where code= '" + c.getIso3Code() + "';";
			stmt.executeQuery(query);
			return true;
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		}
	}

}