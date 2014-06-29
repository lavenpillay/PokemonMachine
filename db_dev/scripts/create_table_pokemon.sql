-- Describe POKEMON
CREATE TABLE pokemon (
	id INTEGER NOT NULL, 
	identifier VARCHAR(30) NOT NULL, 
	species_id INTEGER, 
	height INTEGER NOT NULL, 
	weight INTEGER NOT NULL, 
	base_experience INTEGER NOT NULL, 
	"order" INTEGER NOT NULL, 
	is_default BOOLEAN NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(species_id) REFERENCES pokemon_species (id), 
	CHECK (is_default IN (0, 1))
)
