
-- Table: pokemon_shapes
CREATE TABLE pokemon_shapes ( 
    id         INTEGER        NOT NULL,
    identifier VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( id ) 
);

INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (1, 'ball');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (2, 'squiggle');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (3, 'fish');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (4, 'arms');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (5, 'blob');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (6, 'upright');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (7, 'legs');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (8, 'quadruped');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (9, 'wings');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (10, 'tentacles');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (11, 'heads');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (12, 'humanoid');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (13, 'bug-wings');
INSERT INTO [pokemon_shapes] ([id], [identifier]) VALUES (14, 'armor');
