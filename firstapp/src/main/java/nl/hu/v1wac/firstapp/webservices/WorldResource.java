package nl.hu.v1wac.firstapp.webservices;

import nl.hu.v1wac.firstapp.Country;
import nl.hu.v1wac.firstapp.ServiceProvider;
import nl.hu.v1wac.firstapp.WorldService;
import javax.json.*;
import javax.ws.rs.*;

@Path("/countries")
public class WorldResource {

	@GET
	@Produces("application/json")
	public String getCountries() {
		WorldService service = ServiceProvider.getWorldService();
		JsonArrayBuilder jab = Json.createArrayBuilder();

		for (Country c : service.getAllCountries()) {
			jab.add(formatCountry(c));
		}
		JsonArray array = jab.build();
		return array.toString();
	}

	@GET
	@Path("{code}")
	@Produces("application/json")
	public String getOrderInfo(@PathParam("code") String code) {
		WorldService service = ServiceProvider.getWorldService();
		Country c = service.getCountryByCode(code);

		return formatCountry(c).build().toString();
	}

	@GET
	@Path("/largestsurfaces")
	@Produces("application/json")
	public String getLargestCountries() {
		WorldService service = ServiceProvider.getWorldService();
		JsonArrayBuilder jab = Json.createArrayBuilder();

		for (Country c : service.get10LargestSurfaces()) {
			jab.add(formatCountry(c));
		}
		
		return jab.build().toString();
	}

	@GET
	@Path("/largestpopulations")
	@Produces("application/json")
	public String getLargestPopulations() {
		WorldService service = ServiceProvider.getWorldService();
		JsonArrayBuilder jab = Json.createArrayBuilder();

		for (Country c : service.get10LargestPopulations()) {
			jab.add(formatCountry(c));
		}
		
		return jab.build().toString();
	}

	public JsonObjectBuilder formatCountry(Country c) {
		JsonObjectBuilder job = Json.createObjectBuilder();

		job.add("code", c.getCode());
		job.add("name", c.getName());
		job.add("capital", c.getCapital());
		job.add("surface", c.getSurface());
		job.add("government", c.getGovernment());
		job.add("lat", c.getLatitude());
		job.add("iso3", c.getIso3());
		job.add("continent", c.getContinent());
		job.add("region", c.getRegion());
		job.add("population", c.getPopulation());
		job.add("lng", c.getLongitude());

		return job;
	}

}
