const db = require("../db/dbConfig.js")

//SHOW All Cities
const getAllCities = async () =>{
    try{
        const allCities = await db.any("SELECT * FROM cities")
        return allCities;
    } catch (error){
        return error;
    }
}

//SHOW ONE City
const getCity = async (id) =>{
    try {
        const oneCity = await db.one("SELECT * FROM cities WHERE id =$1", id)
        return oneCity;
    } catch (error) {
        return error;
    }
}

//CREATE a City
const createCity = async (city) =>{
    try {
        const newCity = await db.one(
            "INSERT INTO cities (city, country, image, has_visited, ticket_price) VALUES($1, $2, $3, $4, $5) RETURNING *",
            [city.city, city.country, city.image, city.has_visited, city.ticket_price]
        )
        return newCity;
    } catch (error){
        return error;
    }
}

//DELETE a City
const deleteCity = async (id) =>{
    try{
        const deleteCity = await db.one(
            "DELETE FROM cities WHERE id = $1 RETURNING *",
            id
        )
        return deleteCity;
    } catch(error){
        return error;
    }
}

//UPDATE a City
const updateCity = async (id, city) =>{
    try {
        const updatedCity = await db.one(
            "UPDATE cities SET city=$1, country=$2, image=$3, has_visited=$4, ticket_price=$5 WHERE id=$6 RETURNING *",
            [city.city, city.country, city.image, city.has_visited, city.ticket_price, id]
        )
        return updatedCity;
    } catch (error){
        return error;
    }
}

module.exports = {
    getAllCities,
    createCity,
    getCity,
    deleteCity,
    updateCity
};