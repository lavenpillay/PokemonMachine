
-- Table: version_names
CREATE TABLE version_names ( 
    version_id        INTEGER        NOT NULL,
    local_language_id INTEGER        NOT NULL,
    name              VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( version_id, local_language_id ),
    FOREIGN KEY ( version_id ) REFERENCES versions ( id ),
    FOREIGN KEY ( local_language_id ) REFERENCES languages ( id ) 
);

INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (1, 9, 'Red');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (2, 9, 'Blue');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (3, 9, 'Yellow');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (4, 9, 'Gold');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (5, 9, 'Silver');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (6, 9, 'Crystal');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (7, 9, 'Ruby');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (8, 9, 'Sapphire');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (9, 9, 'Emerald');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (10, 9, 'FireRed');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (11, 9, 'LeafGreen');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (12, 9, 'Diamond');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (13, 9, 'Pearl');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (14, 9, 'Platinum');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (15, 9, 'HeartGold');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (16, 9, 'SoulSilver');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (17, 9, 'Black');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (18, 9, 'White');
--INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (19, 9, 'Colosseum');
--INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (20, 9, 'XD');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (21, 9, 'Black 2');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (22, 9, 'White 2');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (23, 9, 'X');
INSERT INTO [version_names] ([version_id], [local_language_id], [name]) VALUES (24, 9, 'Y');