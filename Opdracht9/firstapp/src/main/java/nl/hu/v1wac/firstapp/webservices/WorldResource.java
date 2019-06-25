package nl.hu.v1wac.firstapp.webservices;

import javax.annotation.security.RolesAllowed;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObjectBuilder;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import nl.hu.v1wac.firstapp.model.Country;
import nl.hu.v1wac.firstapp.model.ServiceProvider;
import nl.hu.v1wac.firstapp.model.WorldService;

@Path("/countries")
public class WorldResource {
	private ServiceProvider sp;
	@SuppressWarnings("static-access")
	WorldService service = sp.getWorldService();
	JsonArrayBuilder jab = Json.createArrayBuilder();
	JsonObjectBuilder job = Json.createObjectBuilder();

	@GET
	@Produces("application/json")
	public String getCountries() {
		for (Country c : service.getAllCountries()) {
			job.add("code", c.getCode());
			job.add("iso3", c.getIso3Code());
			job.add("region", c.getRegion());
			job.add("continent", c.getContinent());
			job.add("surface", c.getSurface());
			job.add("population", c.getPopulation());
			job.add("name", c.getName());
			job.add("lat", c.getLatitude());
			job.add("lon", c.getLongitude());
			job.add("countryCode", c.getCode());
			job.add("capital", c.getCapital());
			jab.add(job);
		}
		JsonArray array = jab.build();
		return array.toString();
	}

	@GET
	@Path("/{code}")
	@Produces("application/json")
	public String getCountryByCode(@PathParam("code") String id) {
		Country c = service.getCountryByCode(id);
		job.add("code", c.getCode());
		job.add("iso3", c.getIso3Code());
		job.add("name", c.getName());
		job.add("continent", c.getContinent());
		job.add("capital", c.getCapital());
		job.add("region", c.getRegion());
		job.add("surface", c.getSurface());
		job.add("population", c.getPopulation());
		job.add("government", c.getGovernment());
		job.add("lat", c.getLatitude());
		job.add("lng", c.getLongitude());
		jab.add(job);
		JsonArray array = jab.build();
		return array.toString();

	}

	@GET
	@Path("/largestsurfaces")
	@Produces("application/json")

	public String getBiggestSurface() {
		for (Country c : service.get10LargestSurfaces()) {

			job.add("name", c.getName());
			jab.add(job);
		}
		JsonArray array = jab.build();
		return array.toString();

	}

	@GET
	@Path("/largestpopulations")
	@Produces("application/json")

	public String getBiggestPop() {
		for (Country c : service.get10LargestPopulations()) {

			job.add("name", c.getName());
			jab.add(job);
		}
		JsonArray array = jab.build();
		return array.toString();

	}

	@DELETE
	@Path("/verwijderen/{code}")
	@Produces("application/json")
	public String countryVerwijderen(@PathParam("code") String code) {
		boolean verwijderd = service.countryVerwijderen(code);
		job.add("verwijderd", verwijderd);
		jab.add(job);
		JsonArray array = jab.build();
		return array.toString();
	}

	@PUT
	@Path("/aanpassen")
	@Produces("application/json")
	public String countryAanpassen(@FormParam("code") String code, @FormParam("iso3") String iso3,
			@FormParam("name") String name, @FormParam("capital") String capital, @FormParam("region") String region,
			@FormParam("continent") String continent, @FormParam("surface") int surface,
			@FormParam("population") int population) {
		boolean aangepast = service.countryAanpassen(code, iso3, name, capital, region, continent, surface, population);
		job.add("aangepast", aangepast);
		jab.add(job);
		JsonArray array = jab.build();
		return array.toString();
	}
	
	@POST
	@Path("/toevoegen")
	@Produces("application/json")
	public String countryTovoegen(@FormParam("code") String code, @FormParam("iso3") String iso3,
			@FormParam("name") String name, @FormParam("capital") String capital, @FormParam("region") String region,
			@FormParam("continent") String continent,@FormParam("local") String local,@FormParam("government") String government, @FormParam("surface") int surface,
			@FormParam("population") int population, @FormParam("latitude") int latitude, @FormParam("longitude") int longitude) {
		boolean toegevoegd = service.countryToevogen(code, iso3, name, capital, region, continent, local, government, surface, population, latitude, longitude);
		job.add("toegevoegd", toegevoegd);
		jab.add(job);
		JsonArray array = jab.build();
		return array.toString();
	}
}
