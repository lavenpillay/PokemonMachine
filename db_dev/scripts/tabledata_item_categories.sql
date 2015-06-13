
-- Table: item_categories
CREATE TABLE item_categories ( 
    id         INTEGER        NOT NULL,
    pocket_id  INTEGER        NOT NULL,
    identifier VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( id ),
    FOREIGN KEY ( pocket_id ) REFERENCES item_pockets ( id ) 
);

INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (1, 7, 'stat-boosts');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (2, 5, 'effort-drop');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (3, 5, 'medicine');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (4, 5, 'other');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (5, 5, 'in-a-pinch');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (6, 5, 'picky-healing');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (7, 5, 'type-protection');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (8, 5, 'baking-only');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (9, 1, 'collectibles');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (10, 1, 'evolution');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (11, 1, 'spelunking');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (12, 1, 'held-items');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (13, 1, 'choice');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (14, 1, 'effort-training');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (15, 1, 'bad-held-items');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (16, 1, 'training');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (17, 1, 'plates');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (18, 1, 'species-specific');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (19, 1, 'type-enhancement');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (20, 8, 'event-items');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (21, 8, 'gameplay');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (22, 8, 'plot-advancement');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (23, 8, 'unused');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (24, 1, 'loot');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (25, 6, 'all-mail');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (26, 2, 'vitamins');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (27, 2, 'healing');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (28, 2, 'pp-recovery');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (29, 2, 'revival');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (30, 2, 'status-cures');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (32, 1, 'mulch');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (33, 3, 'special-balls');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (34, 3, 'standard-balls');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (35, 1, 'dex-completion');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (36, 1, 'scarves');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (37, 4, 'all-machines');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (38, 7, 'flutes');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (39, 3, 'apricorn-balls');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (40, 8, 'apricorn-box');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (41, 8, 'data-cards');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (42, 1, 'jewels');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (43, 7, 'miracle-shooter');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (44, 1, 'mega-stones');
INSERT INTO [item_categories] ([id], [pocket_id], [identifier]) VALUES (10001, 8, 'xy-unknown');
