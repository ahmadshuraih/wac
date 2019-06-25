package nl.hu.v1wac.firstapp.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
				Country newCountry = new Country(code, iso3, name, capital, continent, region, surface, population,
						government, latitude, longitude);
				results.add(newCountry);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		return results;
	}

	public ArrayList<Country> findAll() {
		return selectCountries("select * from country order by iso3;");

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

	public boolean save(String code, String iso3, String name, String capital, String region, String continent, String local, String government,
			int surface, int population, int latitude, int longitude) {
		Connection con = super.getConnection();
		try {
			String query = "insert into country(code,iso3,name,capital,continent,region,localname,surfacearea,population,latitude,longitude,governmentform) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, code);
			pstmt.setString(2, iso3);
			pstmt.setString(3, name);
			pstmt.setString(4, capital);
			pstmt.setString(5, continent);
			pstmt.setString(6, region);
			pstmt.setString(7, local);
			pstmt.setInt(8, surface);
			pstmt.setInt(9, population);
			pstmt.setInt(10, latitude);
			pstmt.setInt(11, longitude);
			pstmt.setString(12, government);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		}
	}

	public boolean update(String code, String iso3, String name, String capital, String region, String continent,
			int surface, int population) {
		Connection con = super.getConnection();
		try {
			String query = "update country set iso3 = ? , name = ?, continent = ?, region = ?, surfacearea = ?, population = ?, capital = ? where code = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, iso3);
			pstmt.setString(2, name);
			pstmt.setString(3, continent);
			pstmt.setString(4, region);
			pstmt.setInt(5, surface);
			pstmt.setInt(6, population);
			pstmt.setString(7, capital);
			pstmt.setString(8, code);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		}
	}

	public boolean delete(String code) {
		Connection con = super.getConnection();
		try {
			String query = "delete from country where code = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, code);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		}
	}
}