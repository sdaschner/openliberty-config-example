package com.sebastian_daschner.openliberty_config_example;

import javax.ejb.Stateless;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.stream.JsonCollectors;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

// just for demonstration purposes
@Path("test")
@Stateless
public class TestResource {

    @PersistenceContext
    EntityManager entityManager;

    @POST
    public void store(String message) {
        entityManager.persist(new Message(message));
    }

    @GET
    public JsonArray getAll() {
        return entityManager.createQuery("select m from Message m", Message.class)
                .getResultList().stream()
                .map(m -> Json.createObjectBuilder().add("message", m.getMessage()).build())
                .collect(JsonCollectors.toJsonArray());
    }
}
