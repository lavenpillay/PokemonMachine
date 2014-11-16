
-- Table: egg_groups
CREATE TABLE egg_groups ( 
    id         INTEGER        NOT NULL,
    identifier VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( id ) 
);

INSERT INTO [egg_groups] ([id], [identifier]) VALUES (1, 'monster');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (2, 'water1');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (3, 'bug');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (4, 'flying');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (5, 'ground');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (6, 'fairy');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (7, 'plant');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (8, 'humanshape');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (9, 'water3');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (10, 'mineral');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (11, 'indeterminate');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (12, 'water2');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (13, 'ditto');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (14, 'dragon');
INSERT INTO [egg_groups] ([id], [identifier]) VALUES (15, 'no-eggs');
