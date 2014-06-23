
-- Table: version_group_pokemon_move_methods
CREATE TABLE version_group_pokemon_move_methods ( 
    version_group_id       INTEGER NOT NULL,
    pokemon_move_method_id INTEGER NOT NULL,
    PRIMARY KEY ( version_group_id, pokemon_move_method_id ),
    FOREIGN KEY ( version_group_id ) REFERENCES version_groups ( id ),
    FOREIGN KEY ( pokemon_move_method_id ) REFERENCES pokemon_move_methods ( id ) 
);

INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (1, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (1, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (1, 5);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (2, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (2, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (2, 5);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (3, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (3, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (3, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (4, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (4, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (4, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (4, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (5, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (5, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (5, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (6, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (6, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (6, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (6, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (6, 6);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (7, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (7, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (7, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (7, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (8, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (8, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (8, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (8, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (8, 6);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (9, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (9, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (9, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (9, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (9, 6);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (9, 10);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (10, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (10, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (10, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (10, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (10, 6);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (10, 10);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (11, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (11, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (11, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (11, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (11, 6);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (11, 10);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (12, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (12, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (13, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (13, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (13, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (14, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (14, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (14, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (14, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (14, 6);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (14, 10);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (15, 1);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (15, 2);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (15, 3);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (15, 4);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (15, 6);
INSERT INTO [version_group_pokemon_move_methods] ([version_group_id], [pokemon_move_method_id]) VALUES (15, 10);
