const express = require("express");
const cities = express.Router();
const commentsController = require("./commentsController.js");
cities.use("/:cityId/comments", commentsController);

const {
  getAllCities,
  getCity,
  createCity,
  deleteCity,
  updateCity,
  
} = require("../queries/cities");

// Replace checkBookmarks.js with checkCities.js for cities validations
const { checkBoolean, checkName, validateURL } = require("../validations/checkCities.js");



//INDEX
cities.get("/", async (req, res) => {
  const allCities = await getAllCities();
  if (allCities[0]) {
    res.status(200).json(allCities);
  } else {
    res.status(500).json({ error: "server error" });
  }
});

// SHOW 
cities.get("/:id", async (req, res) => {
  const { id } = req.params;
  const city = await getCity(id);
  if (city) {
    res.json(city);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// CREATE
cities.post("/", checkBoolean, checkName, validateURL, async (req, res) => {
  try {
    const city = await createCity(req.body);
    res.json(city);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

// DELETE
cities.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedCity = await deleteCity(id); 
  if (deletedCity.id) { 
    res.status(200).json(deletedCity);
  } else {
    res.status(404).json("City not found");
  }
});

// UPDATE
cities.put("/:id", checkName, checkBoolean, validateURL, async (req, res) => { 
  const { id } = req.params;
  const updatedCity = await updateCity(id, req.body); 
  res.status(200).json(updatedCity);
});

module.exports = cities;


