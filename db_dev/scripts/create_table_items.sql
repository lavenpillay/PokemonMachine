-- Describe ITEMS
CREATE TABLE items (
	id INTEGER NOT NULL, 
	identifier VARCHAR(20) NOT NULL, 
	category_id INTEGER NOT NULL, 
	cost INTEGER NOT NULL, 
	fling_power INTEGER, 
	fling_effect_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(category_id) REFERENCES item_categories (id), 
	FOREIGN KEY(fling_effect_id) REFERENCES item_fling_effects (id)
)
