-- Create a new database
CREATE DATABASE pet_adoption;

-- Use the created database
USE pet_adoption;

-- Create 'pets' table to store pet information
CREATE TABLE pets (
    pet_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    species VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    color VARCHAR(50)
);

-- Create 'adopted_pets' table to store adopted pets
CREATE TABLE adopted_pets (
    adoption_id INT AUTO_INCREMENT PRIMARY KEY,
    pet_id INT,
    adopter_name VARCHAR(100),
    adoption_date DATE,
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id)
);
