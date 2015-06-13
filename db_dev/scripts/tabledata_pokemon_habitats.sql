
-- Table: pokemon_habitats
CREATE TABLE pokemon_habitats ( 
    id         INTEGER        NOT NULL,
    identifier VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( id ) 
);

INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (1, 'cave');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (2, 'forest');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (3, 'grassland');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (4, 'mountain');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (5, 'rare');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (6, 'rough-terrain');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (7, 'sea');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (8, 'urban');
INSERT INTO [pokemon_habitats] ([id], [identifier]) VALUES (9, 'waters-edge');
