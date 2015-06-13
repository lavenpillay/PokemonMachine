
-- Table: egg_group_prose
CREATE TABLE egg_group_prose ( 
    egg_group_id      INTEGER        NOT NULL,
    local_language_id INTEGER        NOT NULL,
    name              VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( egg_group_id, local_language_id ),
    FOREIGN KEY ( egg_group_id ) REFERENCES egg_groups ( id ),
    FOREIGN KEY ( local_language_id ) REFERENCES languages ( id ) 
);

INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (1, 1, '?????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (1, 5, 'Monstrueux');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (1, 6, 'Monster');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (1, 7, 'Monstruo');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (1, 8, 'Mostro');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (1, 9, 'Monster');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (2, 1, '??????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (2, 5, 'Aquatique 1');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (2, 6, 'Wasser 1');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (2, 7, 'Agua 1');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (2, 8, 'Acqua 1');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (2, 9, 'Water 1');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (3, 1, '??');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (3, 5, 'Insectoïde');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (3, 6, 'Käfer');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (3, 7, 'Bicho');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (3, 8, 'Coleottero');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (3, 9, 'Bug');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (4, 1, '???');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (4, 5, 'Aérien');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (4, 6, 'Flug');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (4, 7, 'Volador');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (4, 8, 'Volante');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (4, 9, 'Flying');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (5, 1, '?????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (5, 5, 'Terrestre');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (5, 6, 'Feld');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (5, 7, 'Campo');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (5, 8, 'Campo');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (5, 9, 'Field');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (6, 1, '????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (6, 5, 'Féerique');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (6, 6, 'Fee');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (6, 7, 'Hada');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (6, 8, 'Magico');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (6, 9, 'Fairy');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (7, 1, '?????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (7, 5, 'Végétal');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (7, 6, 'Pflanze');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (7, 7, 'Planta');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (7, 8, 'Erba');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (7, 9, 'Grass');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (8, 1, '????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (8, 5, 'Humanoïde');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (8, 6, 'Humanotyp');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (8, 7, 'Humanoide');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (8, 8, 'Umanoide');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (8, 9, 'Human-Like');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (9, 1, '??????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (9, 5, 'Aquatique 3');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (9, 6, 'Wasser 3');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (9, 7, 'Agua 3');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (9, 8, 'Acqua 3');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (9, 9, 'Water 3');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (10, 1, '????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (10, 5, 'Minéral');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (10, 6, 'Mineral');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (10, 7, 'Mineral');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (10, 8, 'Minerale');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (10, 9, 'Mineral');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (11, 1, '?????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (11, 5, 'Amorphe');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (11, 6, 'Amorph');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (11, 7, 'Amorfo');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (11, 8, 'Amorfo');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (11, 9, 'Amorphous');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (12, 1, '??????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (12, 5, 'Aquatique 2');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (12, 6, 'Wasser 2');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (12, 7, 'Agua 2');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (12, 8, 'Acqua 2');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (12, 9, 'Water 2');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (13, 1, '????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (13, 5, 'Métamorph');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (13, 6, 'Ditto');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (13, 7, 'Ditto');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (13, 8, 'Ditto');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (13, 9, 'Ditto');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (14, 1, '????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (14, 5, 'Draconique');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (14, 6, 'Drache');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (14, 7, 'Dragón');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (14, 8, 'Drago');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (14, 9, 'Dragon');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (15, 1, '????????');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (15, 5, 'Inconnu');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (15, 6, 'Unbekannt');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (15, 7, 'Desconocido');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (15, 8, 'Non ancora scoperto');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (15, 9, 'Undiscovered');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (11, 10, 'beztvární');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (10, 10, 'minerály');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (8, 10, 'antropoidní');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (15, 10, 'nek?ižitelní');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (1, 10, 'pozemní');
INSERT INTO [egg_group_prose] ([egg_group_id], [local_language_id], [name]) VALUES (13, 10, 'Ditto');
