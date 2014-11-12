
-- Table: item_category_prose
CREATE TABLE item_category_prose ( 
    item_category_id  INTEGER        NOT NULL,
    local_language_id INTEGER        NOT NULL,
    name              VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( item_category_id, local_language_id ),
    FOREIGN KEY ( item_category_id ) REFERENCES item_categories ( id ),
    FOREIGN KEY ( local_language_id ) REFERENCES languages ( id ) 
);

INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (1, 9, 'Stat boosts');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (2, 9, 'Effort drop');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (3, 9, 'Medicine');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (4, 9, 'Other');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (5, 9, 'In a pinch');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (6, 9, 'Picky healing');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (7, 9, 'Type protection');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (8, 9, 'Baking only');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (9, 9, 'Collectibles');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (10, 9, 'Evolution');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (11, 9, 'Spelunking');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (12, 9, 'Held items');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (13, 9, 'Choice');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (14, 9, 'Effort training');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (15, 9, 'Bad held items');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (16, 9, 'Training');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (17, 9, 'Plates');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (18, 9, 'Species-specific');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (19, 9, 'Type enhancement');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (20, 9, 'Event items');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (21, 9, 'Gameplay');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (22, 9, 'Plot advancement');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (23, 9, 'Unused');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (24, 9, 'Loot');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (25, 9, 'All mail');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (26, 9, 'Vitamins');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (27, 9, 'Healing');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (28, 9, 'PP recovery');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (29, 9, 'Revival');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (30, 9, 'Status cures');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (32, 9, 'Mulch');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (33, 9, 'Special balls');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (34, 9, 'Standard balls');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (35, 9, 'Dex completion');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (36, 9, 'Scarves');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (37, 9, 'All machines');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (38, 9, 'Flutes');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (39, 9, 'Apricorn balls');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (40, 9, 'Apricorn Box');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (41, 9, 'Data Cards');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (42, 9, 'Jewels');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (43, 9, 'Miracle Shooter');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (44, 9, 'Mega Stones');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (10001, 9, 'X/Y unknown');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (4, 10, 'Zbytek');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (11, 10, 'Do jeskyní');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (5, 10, 'V nouzi');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (16, 10, 'Trénink');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (23, 10, 'Nepoužité');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (42, 10, 'Drahokamy');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (17, 10, 'Desky');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (28, 10, 'Lé?ící PP');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (29, 10, 'Oživující');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (8, 10, 'Jen k pe?ení');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (9, 10, 'Zb?ratelské');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (20, 10, 'Eventové');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (27, 10, 'Lé?ící');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (21, 10, 'Herní');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (32, 10, 'Hnojivo');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (7, 10, 'Typová protekce');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (26, 10, 'Vitamíny');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (22, 10, 'P?íb?hové');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (24, 10, 'Ko?ist');
INSERT INTO [item_category_prose] ([item_category_id], [local_language_id], [name]) VALUES (18, 10, 'Druhové');
