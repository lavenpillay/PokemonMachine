
-- Table: versions
CREATE TABLE versions ( 
    id               INTEGER        NOT NULL,
    version_group_id INTEGER        NOT NULL,
    identifier       VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( id ),
    FOREIGN KEY ( version_group_id ) REFERENCES version_groups ( id ) 
);

INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (1, 1, 'red');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (2, 1, 'blue');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (3, 2, 'yellow');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (4, 3, 'gold');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (5, 3, 'silver');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (6, 4, 'crystal');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (7, 5, 'ruby');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (8, 5, 'sapphire');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (9, 6, 'emerald');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (10, 7, 'firered');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (11, 7, 'leafgreen');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (12, 8, 'diamond');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (13, 8, 'pearl');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (14, 9, 'platinum');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (15, 10, 'heartgold');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (16, 10, 'soulsilver');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (17, 11, 'black');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (18, 11, 'white');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (19, 12, 'colosseum');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (20, 13, 'xd');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (21, 14, 'black-2');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (22, 14, 'white-2');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (23, 15, 'x');
INSERT INTO [versions] ([id], [version_group_id], [identifier]) VALUES (24, 15, 'y');
