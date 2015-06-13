
-- Table: item_flavor_text
CREATE TABLE item_flavor_text ( 
    item_id          INTEGER NOT NULL,
    version_group_id INTEGER NOT NULL,
    language_id      INTEGER NOT NULL,
    flavor_text      TEXT    NOT NULL,
    PRIMARY KEY ( item_id, version_group_id, language_id ) 
);

INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 9, 'The best Poké Ball with the ultimate level of performance. With it, you will catch any wild Pokémon without fail.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 9, 'An ultra-high-performance Poké Ball that provides a higher success rate for catching Pokémon than a Great Ball.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 9, 'A good, high-performance Poké Ball that provides a higher Pokémon catch rate than a standard Poké Ball can.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 9, 'A device for catching wild Pokémon. It’s thrown like a ball at a Pokémon, comfortably encapsulating its target.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 9, 'A special Poké Ball that is used only in the Great Marsh. It is recognizable by the camouflage pattern decorating it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 9, 'A somewhat different Poké Ball that is more effective when attempting to catch Water- or Bug-type Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 9, 'A somewhat different Poké Ball that works especially well when catching Pokémon that live underwater.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 9, 'A somewhat different Poké Ball that becomes more effective the lower the level of the wild Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 9, 'A somewhat different Poké Ball that works especially well on a Pokémon species that has been caught before.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 9, 'A somewhat different Poké Ball that becomes progressively more effective the more turns that are taken in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 9, 'A particularly comfortable Poké Ball that makes a wild Pokémon quickly grow friendlier after being caught.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 9, 'A somewhat rare Poké Ball that was made as a commemorative item used to celebrate an event of some sort.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 9, 'A somewhat different Poké Ball that makes it easier to catch wild Pokémon at night or in dark places like caves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 9, 'A remedial Poké Ball that restores the HP of a Pokémon caught with it and eliminates any status conditions.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 9, 'A somewhat different Poké Ball that has a more successful catch rate if used at the start of a wild encounter.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 9, 'A quite rare Poké Ball that has been crafted in order to commemorate a special occasion of some sort.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 9, 'A spray-type medicine for treating wounds. It can be used to restore 20 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 9, 'A spray-type medicine for poisoning. It can be used once to lift the effects of being poisoned from a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 9, 'A spray-type medicine for treating burns. It can be used once to heal a Pokémon suffering from a burn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 9, 'A spray-type medicine for freezing. It can be used once to defrost a Pokémon that has been frozen solid.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 9, 'A spray-type medicine used against sleep. It can be used once to rouse a Pokémon from the clutches of sleep.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 9, 'A spray-type medicine for paralysis. It can be used once to free a Pokémon that has been paralyzed.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 9, 'A medicine that can be used to fully restore the HP of a single Pokémon and heal any status conditions it has.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 9, 'A spray-type medicine for treating wounds. It will completely restore the max HP of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 9, 'A spray-type medicine for treating wounds. It can be used to restore 200 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 9, 'A spray-type medicine for treating wounds. It can be used to restore 50 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 9, 'A spray-type medicine that is broadly effective. It can be used once to heal all the status conditions of a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 9, 'A medicine that can revive fainted Pokémon. It also restores half of a fainted Pokémon’s maximum HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 9, 'A medicine that can revive fainted Pokémon. It also fully restores a fainted Pokémon’s maximum HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 9, 'Water with a high mineral content. When consumed, it restores 50 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 9, 'A highly carbonated soda drink. When consumed, it restores 60 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 9, 'A very sweet and refreshing drink. When consumed, it restores 80 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 9, 'A bottle of highly nutritious milk. When consumed, it restores 100 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 9, 'A bitter medicine powder. When consumed, it restores 50 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 9, 'An extremely bitter medicinal root. When consumed, it restores 200 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 9, 'A very bitter medicine powder. When consumed, it heals all of a Pokémon’s status conditions.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 9, 'A terribly bitter medicinal herb. It revives a fainted Pokémon and fully restores its maximum HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 9, 'This medicine can restore 10 PP to a single selected move that has been learned by a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 9, 'This medicine can fully restore the PP of a single selected move that has been learned by a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 9, 'This medicine can restore 10 PP to each of the moves that have been learned by a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 9, 'This medicine can fully restore the PP of all of the moves that have been learned by a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 9, 'Lavaridge Town’s local specialty. It can be used once to heal all the status conditions of a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 9, 'A 100 percent pure juice made of Berries. When consumed, it restores 20 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 9, 'This rare ash can revive all fainted Pokémon in a party. In doing so, it also fully restores their maximum HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 9, 'A nutritious drink for Pokémon.
When consumed, it raises the base HP of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 9, 'A nutritious drink for Pokémon.
When consumed, it raises the base Attack stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 9, 'A nutritious drink for Pokémon.
When consumed, it raises the base Defense stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 9, 'A nutritious drink for Pokémon.
When consumed, it raises the base Speed stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 9, 'A nutritious drink for Pokémon.
When consumed, it raises the base Sp. Atk stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 9, 'A candy that is packed with energy.
When consumed, it will instantly raise the level of a single Pokémon by one.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 9, 'A medicine that can slightly raise the
maximum PP of a single move that has been learned by the target Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 9, 'A nutritious drink for Pokémon.
When consumed, it raises the base Sp. Def stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 9, 'A medicine that can optimally raise the
maximum PP of a single move that has been learned by the target Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 9, 'The Old Chateau’s hidden specialty.
It can be used once to heal all the status conditions of a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 9, 'An item that prevents stat reduction among the Trainer’s party Pokémon for five turns after it is used in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 9, 'An item that raises the critical-hit ratio greatly. It can be used only once and wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 9, 'An item that boosts the Attack stat of a Pokémon during a battle. It wears off once the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 9, 'An item that boosts the Defense stat of a Pokémon during a battle. It wears off once the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 9, 'An item that boosts the Speed stat of a Pokémon during a battle. It wears off once the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 9, 'An item that boosts the accuracy of a Pokémon during a battle. It wears off once the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 9, 'An item that boosts the Sp. Atk stat of a Pokémon during a battle. It wears off once the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 9, 'An item that boosts the Sp. Def stat of a Pokémon during a battle. It wears off once the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 9, 'A doll that attracts the attention of a Pokémon. It guarantees escape from any battle with wild Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 9, 'A toy that attracts the attention of a Pokémon. It guarantees escape from any battle with wild Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 9, 'A lovely toy flute to admire.
It’s made from blue glass.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 9, 'A lovely toy flute to admire.
It’s made from yellow glass.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 9, 'A lovely toy flute to admire.
It’s made from red glass.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 9, 'A lovely toy flute to admire.
It’s made from black glass.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 9, 'A lovely toy flute to admire.
It’s made from white glass.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 9, 'Pure salt that can be discovered only deep inside the Shoal Cave.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 9, 'A pretty seashell that can be found deep inside the Shoal Cave.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 9, 'A small red shard. It appears to be a fragment of some sort of implement made long ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 9, 'A small blue shard. It appears to be a fragment of some sort of implement made long ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 9, 'A small yellow shard. It appears to be a fragment of some sort of implement made long ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 9, 'A small green shard. It appears to be a fragment of some sort of implement made long ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 9, 'An item that prevents any low-level wild Pokémon from jumping out at you for 200 steps after its use.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 9, 'An item that prevents any low-level wild Pokémon from jumping out at you for 250 steps after its use.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 9, 'A long and durable rope. Use it to escape instantly from a cave or a dungeon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 9, 'An item that prevents any low-level wild Pokémon from jumping out at you for 100 steps after its use.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It burns as red as the evening sun.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It is as black as the night sky.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
The stone has a fiery orange heart.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It has a distinct thunderbolt pattern.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It is the blue of a pool of clear water.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It has an unmistakable leaf pattern.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 9, 'A very small and rare mushroom. It’s popular with a certain class of collectors and sought out by them.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 9, 'A very large and rare mushroom. It’s popular with a certain class of collectors and sought out by them.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 9, 'A rather small pearl that has a very nice silvery sheen to it.
It can be sold cheaply to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 9, 'A rather large pearl that has a very nice silvery sheen. 
It can be sold to shops for a high price.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 9, 'Lovely, red sand that flows between the fingers with a loose, silky feel.
It can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 9, 'A small shard of a beautiful gem that demonstrates a distinctly red sparkle.
It can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 9, 'A nugget of the purest gold that gives off a lustrous gleam in direct light.
It can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 9, 'A pretty, heart-shaped scale that is extremely rare. It glows faintly with all of the colors of the rainbow.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 9, 'A sweet honey with a lush aroma that attracts wild Pokémon when it is used in tall grass, in caves, or on special trees.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 9, 'A fertilizer to be spread on soft soil in regions where Berries are grown.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 9, 'A fertilizer to be spread on soft soil in regions where Berries are grown.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 9, 'A fertilizer to be spread on soft soil in regions where Berries are grown.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 9, 'A fertilizer to be spread on soft soil in regions where Berries are grown.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 9, 'A fossil from a prehistoric Pokémon that once lived in the sea. It looks as if it could be part of a plant’s root.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 9, 'A fossil from a prehistoric Pokémon that once lived in the sea. It appears to be a fragment of a claw.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 9, 'A fossil from a prehistoric Pokémon that once lived in the sea. It might be a piece of a seashell.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 9, 'A fossil from a prehistoric Pokémon that once lived in the sea. It could be a shell or carapace.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 9, 'A piece of amber that still contains the genetic material of an ancient Pokémon. It’s clear with a tawny, reddish tint.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 9, 'A fossil from a prehistoric Pokémon that once lived on the land. It looks to be from some kind of protective collar.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 9, 'A fossil from a prehistoric Pokémon that once lived on the land. It appears as though it’s part of a head.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 9, 'A rare bone that is extremely valuable for the study of Pokémon archeology. It can be sold for a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve. 
It shines with a dazzling light.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It holds shadows as dark as can be.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It sparkles like a glittering eye.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 9, 'A peculiar stone that can make certain species of Pokémon evolve.
It’s as round as a Pokémon Egg.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 9, 'A vital item that is needed to keep a stone tower from collapsing. Voices can be heard from it occasionally.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 9, 'A brightly gleaming orb to be held by Dialga. It boosts the power of Dragon-? and Steel-type moves when it is held.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 9, 'A beautifully glowing orb to be held by Palkia. It boosts the power of Dragon-? and Water-type moves when it is held.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can recover from paralysis on its own in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can recover from sleep on its own in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can recover from poisoning on its own in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can recover from a burn on its own in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can recover from being frozen on its own in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can restore 10 PP to a depleted move during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can restore its own HP by 10 points during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can recover from confusion on its own in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can recover from any status condition during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 9, 'A Berry to be consumed by Pokémon. If a Pokémon holds one, it can restore its own HP by a small amount during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 9, 'If held by a Pokémon, it restores the user’s HP in a pinch, but it will cause confusion if the user hates the taste.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 9, 'If held by a Pokémon, it restores the user’s HP in a pinch, but it will cause confusion if the user hates the taste.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 9, 'If held by a Pokémon, it restores the user’s HP in a pinch, but it will cause confusion if the user hates the taste.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 9, 'If held by a Pokémon, it restores the user’s HP in a pinch, but it will cause confusion if the user hates the taste.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 9, 'If held by a Pokémon, it restores the user’s HP in a pinch, but it will cause confusion if the user hates the taste.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 9, 'A Berry to be consumed by Pokémon.
Using it on a Pokémon makes it more friendly but lowers its base HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 9, 'A Berry to be consumed by Pokémon.
Using it on a Pokémon makes it more friendly but lowers its base Attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 9, 'A Berry to be consumed by Pokémon.
Using it on a Pokémon makes it more friendly but lowers its base Defense.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 9, 'A Berry to be consumed by Pokémon.
Using it on a Pokémon makes it more friendly but lowers its base Sp. Atk.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 9, 'A Berry to be consumed by Pokémon.
Using it on a Pokémon makes it more friendly but lowers its base Sp. Def.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 9, 'A Berry to be consumed by Pokémon.
Using it on a Pokémon makes it more friendly but lowers its base Speed.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 9, 'A Berry to be used in cooking.
This Berry is very rare and hard to obtain in the Unova region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Fire-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Water-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Electric-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Grass-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Ice-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Fighting-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Poison-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Ground-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Flying-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Psychic-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Bug-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Rock-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Ghost-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Dragon-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Dark-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Steel-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one Normal-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, its Attack stat will increase when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, its Defense stat will increase when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, its Speed stat will increase when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, its Sp. Atk stat will increase when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, its Sp. Def stat will increase when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, its critical-hit ratio will increase when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, one of its stats will sharply increase when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, being hit by a supereffective attack will restore its HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, its accuracy will increase just once when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 9, 'A Berry to be consumed by Pokémon.
If a Pokémon holds one, it will be able to move first just once when it’s in a pinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 9, 'A Berry to be consumed by Pokémon.
If a physical attack hits the Pokémon holding it, the attacker will also be hurt.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (189, 15, 9, 'A Berry to be consumed by Pokémon.
If a special attack hits the Pokémon holding it, the attacker will also be hurt.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (190, 15, 9, 'An item to be held by a Pokémon.
It casts a tricky glare that lowers the opposing Pokémon’s accuracy.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (191, 15, 9, 'An item to be held by a Pokémon.
It will restore any lowered stat in battle. It can be used only once.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (192, 15, 9, 'An item to be held by a Pokémon.
This stiff, heavy brace helps Pokémon grow strong but cuts Speed in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (193, 15, 9, 'Turning on this special device will allow all the Pokémon on your team
to receive Exp. Points from battles.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (194, 15, 9, 'An item to be held by a Pokémon.
This light, sharp claw lets the bearer move first occasionally.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (195, 15, 9, 'An item to be held by a Pokémon.
The comforting chime of this bell calms the holder, making it friendly.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (196, 15, 9, 'An item to be held by a Pokémon.
It snaps the holder out of infatuation. It can be used only once.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (197, 15, 9, 'An item to be held by a Pokémon.
This curious headband boosts Attack but only allows the use of one move.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (198, 15, 9, 'An item to be held by a Pokémon.
When the holder successfully inflicts damage, the target may also flinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (199, 15, 9, 'An item to be held by a Pokémon.
It is a shiny, silver powder that will boost the power of Bug-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (200, 15, 9, 'An item to be held by a Pokémon.
It doubles any prize money received if the holding Pokémon joins a battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (201, 15, 9, 'An item to be held by a Pokémon.
It helps keep wild Pokémon away if the holder is the head of the party.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (202, 15, 9, 'A wondrous orb to be held by either
Latios or Latias. It raises both the Sp. Atk and Sp. Def stats.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (203, 15, 9, 'An item to be held by Clamperl.
This fang gleams a sharp silver and raises the holder’s Sp. Atk stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (204, 15, 9, 'An item to be held by Clamperl.
This scale shines with a faint pink and raises the holder’s Sp. Def stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (205, 15, 9, 'An item to be held by a Pokémon.
It enables the holder to flee from any wild Pokémon encounter without fail.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (206, 15, 9, 'An item to be held by a Pokémon.
A Pokémon holding this peculiar stone is prevented from evolving.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (207, 15, 9, 'An item to be held by a Pokémon.
The holder may endure a potential KO attack, leaving it with just 1 HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (208, 15, 9, 'An item to be held by a Pokémon.
It’s an egg filled with happiness that earns extra Exp. Points in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (209, 15, 9, 'An item to be held by a Pokémon.
It’s a lens for scoping out weak points. It boosts the holder’s critical-hit ratio.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (210, 15, 9, 'An item to be held by a Pokémon.
It is a special metallic film that can boost the power of Steel-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (211, 15, 9, 'An item to be held by a Pokémon.
The holder’s HP is slowly but steadily restored throughout every battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (212, 15, 9, 'A very tough and inflexible scale.
Dragon-type Pokémon may be holding this item when caught.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (213, 15, 9, 'An item to be held by Pikachu.
It’s a puzzling orb that boosts its Attack and Sp. Atk stats.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (214, 15, 9, 'An item to be held by a Pokémon.
It is a loose, silky sand that boosts the power of Ground-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (215, 15, 9, 'An item to be held by a Pokémon.
It is a durable stone that boosts the power of Rock-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (216, 15, 9, 'An item to be held by a Pokémon.
It is a seed imbued with life force that boosts the power of Grass-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (217, 15, 9, 'An item to be held by a Pokémon.
A pair of shady-looking glasses that boost the power of Dark-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (218, 15, 9, 'An item to be held by a Pokémon.
This belt helps the wearer to focus and boosts the power of Fighting-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (219, 15, 9, 'An item to be held by a Pokémon.
It is a powerful magnet that boosts the power of Electric-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (220, 15, 9, 'An item to be held by a Pokémon.
This teardrop-shaped gem boosts the power of Water-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (221, 15, 9, 'An item to be held by a Pokémon.
It’s a long, sharp beak that boosts the power of Flying-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (222, 15, 9, 'An item to be held by a Pokémon.
This small, poisonous barb boosts the power of Poison-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (223, 15, 9, 'An item to be held by a Pokémon.
It’s a piece of ice that repels heat effects and boosts Ice-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (224, 15, 9, 'An item to be held by a Pokémon.
It’s a sinister, eerie tag that boosts the power of Ghost-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (225, 15, 9, 'An item to be held by a Pokémon.
This spoon is imbued with telekinetic power and boosts Psychic-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (226, 15, 9, 'An item to be held by a Pokémon.
It is a combustible fuel that boosts the power of Fire-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (227, 15, 9, 'An item to be held by a Pokémon.
This hard and sharp fang boosts the power of Dragon-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (228, 15, 9, 'An item to be held by a Pokémon.
It’s a sumptuous scarf that boosts the power of Normal-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (229, 15, 9, 'A transparent device somehow filled with all sorts of data.
It was produced by Silph Co.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (230, 15, 9, 'An item to be held by a Pokémon.
The holder regains a little HP every time it inflicts damage on others.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (231, 15, 9, 'An item to be held by a Pokémon.
This incense has a curious aroma that boosts the power of Water-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (232, 15, 9, 'An item to be held by a Pokémon.
The beguiling aroma of this incense may cause attacks to miss its holder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (233, 15, 9, 'An item to be held by Chansey.
This pair of lucky boxing gloves will boost Chansey’s critical-hit ratio.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (234, 15, 9, 'An item to be held by Ditto.
Extremely fine yet hard, this odd powder boosts the Defense stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (235, 15, 9, 'An item to be held by Cubone or
Marowak. It is a hard bone of some sort that boosts the Attack stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (236, 15, 9, 'An item to be held by Farfetch’d.
This very long and stiff stalk of leek boosts its critical-hit ratio.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (237, 15, 9, 'An item to be held by a Pokémon.
During a Contest, it raises the Cool aspect of the Pokémon holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (238, 15, 9, 'An item to be held by a Pokémon.
During a Contest, it raises the Beauty aspect of the Pokémon holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (239, 15, 9, 'An item to be held by a Pokémon.
During a Contest, it raises the Cute aspect of the Pokémon holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (240, 15, 9, 'An item to be held by a Pokémon.
During a Contest, it raises the Smart aspect of the Pokémon holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (241, 15, 9, 'An item to be held by a Pokémon.
During a Contest, it raises the Tough aspect of the Pokémon holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (242, 15, 9, 'An item to be held by a Pokémon.
It’s a magnifying lens that slightly boosts the accuracy of moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (243, 15, 9, 'An item to be held by a Pokémon.
This headband exudes strength, slightly boosting the power of physical moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (244, 15, 9, 'An item to be held by a Pokémon.
This thick pair of glasses slightly boosts the power of special moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (245, 15, 9, 'An item to be held by a Pokémon.
It’s a well-worn belt that slightly boosts the power of supereffective moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (246, 15, 9, 'An item to be held by a Pokémon.
Protective moves like Light Screen and Reflect will be effective longer.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (247, 15, 9, 'An item to be held by a Pokémon.
It boosts the power of moves, but at the cost of some HP on each hit.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (248, 15, 9, 'A single-use item to be held by a Pokémon.
It allows the holder to immediately use a move that normally requires a turn to charge.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (249, 15, 9, 'An item to be held by a Pokémon.
It is a bizarre orb that will badly poison the holder during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (250, 15, 9, 'An item to be held by a Pokémon.
It is a bizarre orb that will afflict the holder with a burn during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (251, 15, 9, 'An item to be held by Ditto.
Extremely fine yet hard, this odd powder boosts the Speed stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (252, 15, 9, 'An item to be held by a Pokémon. 
If the holder has full HP, it will endure a potential KO attack with 1 HP. The item then disappears.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (253, 15, 9, 'An item to be held by a Pokémon.
If the holder moves after its target moves, its accuracy will be boosted.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (254, 15, 9, 'An item to be held by a Pokémon.
It boosts moves used consecutively, but only until a different move is used.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (255, 15, 9, 'An item to be held by a Pokémon.
It lowers Speed and allows Ground-type moves to hit Flying-type and levitating holders.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (256, 15, 9, 'An item to be held by a Pokémon.
It is tremendously heavy and makes the holder move slower than usual.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (257, 15, 9, 'An item to be held by a Pokémon.
If the holder becomes infatuated, the opposing Pokémon will be, too.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (258, 15, 9, 'An item to be held by a Pokémon.
It gradually restores HP to Poison-type Pokémon. It damages any other type.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (259, 15, 9, 'An item to be held by a Pokémon.
It extends the duration of the move Hail when it’s used by the holder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (260, 15, 9, 'An item to be held by a Pokémon.
It extends the duration of the move Sandstorm when used by the holder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (261, 15, 9, 'An item to be held by a Pokémon.
It extends the duration of the move Sunny Day when used by the holder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (262, 15, 9, 'An item to be held by a Pokémon.
It extends the duration of the move Rain Dance when used by the holder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (263, 15, 9, 'An item to be held by a Pokémon.
It extends the duration of multi-turn attacks like Bind and Wrap.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (264, 15, 9, 'An item to be held by a Pokémon.
This curious scarf boosts Speed but only allows the use of one move.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (265, 15, 9, 'An item to be held by a Pokémon.
It damages the holder every turn and may latch on to Pokémon that touch the holder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (266, 15, 9, 'An item to be held by a Pokémon.
It reduces Speed but allows the holder’s Attack stat to grow more after battling.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (267, 15, 9, 'An item to be held by a Pokémon.
It reduces Speed but allows the holder’s Defense stat to grow more after battling.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (268, 15, 9, 'An item to be held by a Pokémon.
It reduces Speed but allows the holder’s Sp. Atk stat to grow more after battling.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (269, 15, 9, 'An item to be held by a Pokémon.
It reduces Speed but allows the holder’s Sp. Def stat to grow more after battling.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (270, 15, 9, 'An item to be held by a Pokémon.
It reduces Speed but allows the holder’s Speed stat to grow more after battling.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (271, 15, 9, 'An item to be held by a Pokémon.
It reduces Speed but allows the holder’s maximum HP to grow more after battling.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (272, 15, 9, 'An item to be held by a Pokémon.
This discarded carapace enables the holder to switch out of battle without fail.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (273, 15, 9, 'An item to be held by a Pokémon.
It boosts the power of HP-stealing moves so the holder recovers more HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (274, 15, 9, 'An item to be held by a Pokémon.
These curious glasses boost Sp. Atk but only allow the use of one move.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (275, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Fire-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (276, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Water-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (277, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Electric-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (278, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Grass-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (279, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Ice-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (280, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Fighting-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (281, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Poison-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (282, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Ground-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (283, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Flying-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (284, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Psychic-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (285, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Bug-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (286, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Rock-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (287, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Ghost-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (288, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Dragon-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (289, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Dark-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (290, 15, 9, 'An item to be held by a Pokémon.
It’s a stone tablet that boosts the power of Steel-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (291, 15, 9, 'An item to be held by a Pokémon.
This exotic-smelling incense boosts the power of Psychic-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (292, 15, 9, 'An item to be held by a Pokémon.
This exotic-smelling incense boosts the power of Rock-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (293, 15, 9, 'An item to be held by a Pokémon.
This exotic-smelling incense makes the holder bloated and slow moving.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (294, 15, 9, 'An item to be held by a Pokémon.
This exotic-smelling incense boosts the power of Water-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (295, 15, 9, 'An item to be held by a Pokémon.
This exotic-smelling incense boosts the power of Grass-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (296, 15, 9, 'An item to be held by a Pokémon.
It doubles any prize money received if the holding Pokémon joins a battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (297, 15, 9, 'An item to be held by a Pokémon.
It helps keep wild Pokémon away if the holder is the head of the party.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (298, 15, 9, 'A protective item of some sort. It is extremely stiff and heavy. 
It’s loved by a certain Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (299, 15, 9, 'A box packed with a tremendous amount of electric energy.
It’s loved by a certain Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (300, 15, 9, 'A box packed with a tremendous amount of magma energy.
It’s loved by a certain Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (301, 15, 9, 'A transparent device overflowing with dubious data.
Its producer is unknown.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (302, 15, 9, 'A cloth imbued with horrifyingly strong spiritual energy.
It’s loved by a certain Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (303, 15, 9, 'An item to be held by a Pokémon. 
This sharply hooked claw increases the holder’s critical-hit ratio.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (304, 15, 9, 'An item to be held by a Pokémon.
When the holder successfully inflicts damage, the target may also flinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (305, 15, 9, 'The user sharpens its claws to boost its Attack stat and accuracy.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (306, 15, 9, 'The user slashes the target with huge, sharp claws.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (307, 15, 9, 'The user materializes an odd psychic wave to attack the target.
This attack does physical damage.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (308, 15, 9, 'The user quietly focuses its mind and calms its spirit to raise its Sp. Atk and
Sp. Def stats.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (309, 15, 9, 'The target is scared off and a different Pokémon is dragged out. In the wild, this ends a battle against a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (310, 15, 9, 'A move that leaves the target badly poisoned. Its poison damage worsens every turn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (311, 15, 9, 'The user summons a hailstorm lasting five turns. It damages all Pokémon except the Ice type.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (312, 15, 9, 'The user tenses its muscles to bulk up its body, raising both its Attack and Defense stats.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (313, 15, 9, 'The user drenches the target in a special poisonous liquid. This move’s power is doubled if the target is poisoned.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (314, 15, 9, 'A unique attack that varies in type depending on the Pokémon using it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (315, 15, 9, 'The user intensifies the sun for five turns, powering up Fire-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (316, 15, 9, 'The target is taunted into a rage that allows it to use only attack moves for three turns.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (317, 15, 9, 'The target is struck with an icy- cold beam of energy. This may also leave the target frozen.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (318, 15, 9, 'A howling blizzard is summoned to strike opposing Pokémon. This may also leave the opposing Pokémon frozen.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (319, 15, 9, 'The target is attacked with a powerful beam. The user can’t move on the next turn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (320, 15, 9, 'A wondrous wall of light is put up to reduce damage from special attacks for five turns.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (321, 15, 9, 'Enables the user to evade all attacks. Its chance of failing rises if it is used in succession.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (322, 15, 9, 'The user summons a heavy rain that falls for five turns, powering up Water-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (323, 15, 9, 'The user lands and rests its body. It restores the user’s HP by up to half of its max HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (324, 15, 9, 'The user creates a protective field that prevents status conditions for five turns.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (325, 15, 9, 'A full-power attack that grows more powerful the less the user likes its Trainer.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (326, 15, 9, 'A two-turn attack. The user gathers light, then blasts a bundled beam on the next turn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (327, 15, 9, 'The user throws a stone or similar projectile to attack an opponent. A flying Pokémon will fall to the ground when it’s hit.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (328, 15, 9, 'A strong electric blast crashes down on the target. This may also leave the target with paralysis.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (329, 15, 9, 'A wicked thunderbolt is dropped on the target to inflict damage. This may also leave the target with paralysis.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (330, 15, 9, 'The user sets off an earthquake that strikes every Pokémon around it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (331, 15, 9, 'A full-power attack that grows more powerful the more the user likes its Trainer.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (332, 15, 9, 'The user burrows, then attacks on the next turn. It can also be used to exit dungeons.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (333, 15, 9, 'The target is hit by a strong telekinetic force. This may also lower the target’s Sp. Def stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (334, 15, 9, 'The user hurls a shadowy blob at the target. This may also lower the target’s Sp. Def stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (335, 15, 9, 'The user attacks with a swift chop. It can also break barriers, such as Light Screen and Reflect.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (336, 15, 9, 'By moving rapidly, the user makes illusory copies of itself to raise its evasiveness.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (337, 15, 9, 'A wondrous wall of light is put up to reduce damage from physical attacks for five turns.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (338, 15, 9, 'The user strikes everything around it by swamping the area with a giant sludge wave. 
This may also poison those hit.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (339, 15, 9, 'The target is scorched with an intense blast of fire. This may also leave the target with a burn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (340, 15, 9, 'Unsanitary sludge is hurled at the target.
This may also poison the target.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (341, 15, 9, 'A five-turn sandstorm is summoned to hurt all combatants except for Rock, Ground, and Steel types.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (342, 15, 9, 'The target is attacked with an intense blast of all-consuming fire. 
This may also leave the target with a burn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (343, 15, 9, 'Boulders are hurled at the target. 
This also lowers the target’s Speed stat by preventing its movement.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (344, 15, 9, 'The user confounds the target with speed, then slashes.
This attack never misses.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (345, 15, 9, 'The user torments and enrages the target, making it incapable of using the same move twice in a row.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (346, 15, 9, 'An attack move that doubles its power if the user is poisoned, burned, or has paralysis.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (347, 15, 9, 'Cloaking itself in flame, the user attacks. Then, building up more power, the user raises its Speed stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (348, 15, 9, 'The user goes to sleep for two turns.
This fully restores the user’s HP and heals any status conditions.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (349, 15, 9, 'If it is the opposite gender of the user, the target becomes infatuated and less likely to attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (350, 15, 9, 'The user attacks and steals the target’s held item simultaneously. The user can’t steal anything if it already holds an item.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (351, 15, 9, 'The user makes a swift attack on the target’s legs, which lowers the target’s Speed stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (352, 15, 9, 'The user attacks the target with a song. Others can join in the Round and make the attack do greater damage.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (353, 15, 9, 'The user attacks the target with an echoing voice. If this move is used every turn, it does greater damage.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (354, 15, 9, 'The user attacks the target at full power.
The attack’s recoil harshly lowers the user’s Sp. Atk stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (355, 15, 9, 'The target is hit with wings of steel.
This may also raise the user’s Defense stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (356, 15, 9, 'The user heightens its mental focus and unleashes its power.
This may also lower the target’s Sp. Def.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (357, 15, 9, 'The user draws power from nature and fires it at the target. This may also lower the target’s Sp. Def.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (358, 15, 9, 'A restrained attack that prevents the target from fainting. The target is left with at least 1 HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (359, 15, 9, 'The user shoots boiling hot water at its target. This may also leave the target with a burn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (360, 15, 9, 'The user flings its held item at the target to attack. This move’s power and effects depend on the item.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (361, 15, 9, 'The user attacks with an electric charge. The user may use any remaining electricity to raise its Sp. Atk stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (362, 15, 9, 'The user takes the target into the sky, then drops it during the next turn.
The target cannot attack while in the sky.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (363, 15, 9, 'The user attacks opposing Pokémon with fire.
If a Pokémon is holding a certain item, such as a Berry, the item becomes burned up and unusable.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (364, 15, 9, 'The user suppresses the target and makes its move go last.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (365, 15, 9, 'The user shoots a sinister, bluish-white flame at the target to inflict a burn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (366, 15, 9, 'The user nimbly strikes the target.
If the user is not holding an item, this attack inflicts massive damage.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (367, 15, 9, 'This move prevents the target from using its held item. Its Trainer is also prevented from using items on it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (368, 15, 9, 'The user attacks everything around it by causing a tremendous explosion.
The user faints upon using this move.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (369, 15, 9, 'The user slashes with a sharp claw made from shadows.
Critical hits land more easily.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (370, 15, 9, 'The user stores power, then attacks.
If the user moves after the target, this attack’s power will be doubled.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (371, 15, 9, 'The user gets revenge for a fainted ally.
If an ally fainted in the previous turn, this move becomes more powerful.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (372, 15, 9, 'The user charges at the target using every bit of its power.
The user can’t move on the next turn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (373, 15, 9, 'The user polishes its body to reduce drag.
This can sharply raise the Speed stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (374, 15, 9, 'The user flashes a bright light that cuts the target’s accuracy.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (375, 15, 9, 'The user stabs the target with sharpened stones from below.
Critical hits land more easily.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (376, 15, 9, 'After making its attack, the user rushes back to switch places with a party Pokémon in waiting.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (377, 15, 9, 'The user launches a weak jolt of electricity that paralyzes the target.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (378, 15, 9, 'The user tackles the target with a high-speed spin. The slower the user compared to the target, the greater the move’s power.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (379, 15, 9, 'A frenetic dance to uplift the fighting spirit. This sharply raises the user’s Attack stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (380, 15, 9, 'While resisting, the user attacks the opposing Pokémon. This lowers the Sp. Atk stat of those hit.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (381, 15, 9, 'The user hypnotizes itself into copying any stat change made by the target.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (382, 15, 9, 'The user strikes everything around it by stomping down on the ground.
This lowers the Speed stat of those hit.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (383, 15, 9, 'The user blows its cold breath on the target. This attack always results in a critical hit.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (384, 15, 9, 'Large boulders are hurled at the opposing Pokémon to inflict damage. This may also make the opposing Pokémon flinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (385, 15, 9, 'The user slashes at the target by crossing its scythes or claws as if they were a pair of scissors.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (386, 15, 9, 'The target is knocked away, and a different Pokémon is dragged out. In the wild, this ends a battle against a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (387, 15, 9, 'The target is infested and attacked for four to five turns.
The target can’t flee during this time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (388, 15, 9, 'The target is stabbed with a tentacle or arm steeped in poison. This may also poison the target.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (389, 15, 9, 'The user eats the dreams of a sleeping target. It absorbs half the damage caused to heal its own HP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (390, 15, 9, 'The user snares the target with grass and trips it. The heavier the target, the greater the move’s power.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (391, 15, 9, 'The user enrages and confuses the target. However, this also sharply raises the target’s Attack stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (392, 15, 9, 'While it is asleep, the user randomly uses one of the moves it knows.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (393, 15, 9, 'After making its attack, the user rushes back to switch places with a party Pokémon in waiting.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (394, 15, 9, 'The user makes a copy of itself using some of its HP. The copy serves as the user’s decoy.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (395, 15, 9, 'The user gathers all its light energy and releases it at once. This may also lower the target’s Sp. Def stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (396, 15, 9, 'The user creates a bizarre area in which slower Pokémon get to move first for five turns.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (397, 15, 9, 'The target is cut with a scythe or claw.
This can also be used to cut down thin trees.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (398, 15, 9, 'The user soars and then strikes its target on the next turn. This can
also be used to fly to any familiar town.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (399, 15, 9, 'The user attacks everything around it by swamping its surroundings with a giant wave.
This can also be used for crossing water.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (400, 15, 9, 'The target is slugged with a punch thrown at maximum power. This can also be used to move heavy boulders.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (401, 15, 9, 'The user charges at the target and may make it flinch. This can also be used to climb a waterfall.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (402, 15, 9, 'Diving on the first turn, the user floats up and attacks on the next turn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (405, 15, 9, 'A bag filled with convenient tools for exploring. It provides access to the Underground in the Sinnoh region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (406, 15, 9, 'A sturdy, spacious bag that is used to carry any treasures or loot obtained in the coal mine.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (407, 15, 9, 'It lists the rules for holding battles.
For Link Battles, you may choose which set of rules you wish to use.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (408, 15, 9, 'A tool that can search out Pokémon that are hiding in the tall grass. Its battery is recharged as you walk.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (409, 15, 9, 'A card that lists how many Battle Points you have earned.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (410, 15, 9, 'A notebook that keeps a day-to-day record of your adventure so far.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (411, 15, 9, 'A case for storing Seals that can be applied to the exteriors of Poké Balls.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (412, 15, 9, 'A lovely case to store colorful Props for your Pokémon to wear in a musical.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (413, 15, 9, 'A tiny bag that can hold 10 Seals for decorating Poké Balls.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (414, 15, 9, 'A convenient notepad that is used to register your Friends and friend codes and keep a record of your gameplay.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (415, 15, 9, 'A large key for operating the doors of the Valley Windworks in the canyon. 
It was held by a Team Galactic Grunt.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (416, 15, 9, 'An ancient good-luck charm made of Pokémon bones to be taken to the elder of Celestic Town.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (417, 15, 9, 'A card key for disengaging the security systems in the Galactic HQ. Losing it can result in punishment, apparently.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (418, 15, 9, 'A mythical chain that is said to link the Legendary Pokémon that created the Sinnoh region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (419, 15, 9, 'A very convenient map that can be viewed anytime. It even shows you your present location in the region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (420, 15, 9, 'A device that indicates Trainers who want to battle. Its battery charges while you walk.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (421, 15, 9, 'A case for holding coins obtained at the Game Corner. It can hold up to 50,000 coins.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (422, 15, 9, 'An old and beat-up fishing rod.
Use it at any body of water to fish for wild aquatic Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (423, 15, 9, 'A new, good-quality fishing rod.
Use it at any body of water to fish for wild aquatic Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (424, 15, 9, 'An awesome, high-tech fishing rod.
Use it at any body of water to fish for wild aquatic Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (425, 15, 9, 'A watering can shaped like a Psyduck.
It helps promote the healthy growth of any Berries planted in good, soft soil.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (426, 15, 9, 'A case for storing Poffins cooked from Berries.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (427, 15, 9, 'A folding Bicycle that enables a riderto get around much faster than a pair of Running Shoes will allow.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (428, 15, 9, 'A key to one of the suites at a certain luxury hotel by a lake. For some odd reason, it often disappears.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (429, 15, 9, 'A letter from Professor Oak.
Written in it is a request for you to go to Route 224.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (430, 15, 9, 'A feather that glows like the moon.
It’s said to possess the power to dispel nightmares.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (431, 15, 9, 'A card needed for entering the inn in Canalave City. Oddly, the last date marked on it was 50 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (432, 15, 9, 'A flute that puts out echoing sounds that do not seem to be of this world.
No one knows who made it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (433, 15, 9, 'A ticket required for sailing on the ferry S.S. Aqua. It has a drawing of a ship on its front.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (434, 15, 9, 'A pass required for entering Pokémon Contests. It has a drawing of an award ribbon on its front.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (435, 15, 9, 'A stone formed by boulders melting in intensely hot magma, then hardening.
Magma remains sealed inside it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (436, 15, 9, 'A parcel entrusted into your care.
You are supposed to deliver it to your childhood friend who left Twinleaf Town.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (437, 15, 9, 'A coupon to be exchanged for a Pokémon Watch--Pokétch for short.
Three coupons are needed.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (438, 15, 9, 'A coupon to be exchanged for a Pokémon Watch--Pokétch for short.
Three coupons are needed.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (439, 15, 9, 'A coupon to be exchanged for a Pokémon Watch--Pokétch for short.
Three coupons are needed.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (440, 15, 9, 'The key to Team Galactic’s sinister warehouse located at the edge of
Veilstone City.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (441, 15, 9, 'A fantastic medicine dispensed by the pharmacy in Cianwood City. It fully
heals a Pokémon of any ailment.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (442, 15, 9, 'A glowing orb to be held by Giratina.
It boosts the power of Dragon- and Ghost-type moves when it is held.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (443, 15, 9, 'An amazing device that can record a battle between friends or the battles at certain special battle facilities.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (444, 15, 9, 'A flower sometimes bundled in bouquets to convey gratitude on special occasions like birthdays.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (445, 15, 9, 'A high-tech key that has to be used at a specific location. It emits a special electronic signal to open a door.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (446, 15, 9, 'A handy box where you can store up to 99 of each kind of Apricorn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (447, 15, 9, 'Handy containers for cultivating Berries wherever you go.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (448, 15, 9, 'A bottle used for watering plants in the Berry Pots.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (449, 15, 9, 'A Poké Ball that is good for catching Pokémon that you reel in with a Rod while out fishing.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (450, 15, 9, 'A Poké Ball that makes it easier to catch Pokémon that are at a lower level than your own Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (451, 15, 9, 'A Poké Ball that will make it easier to catch Pokémon that can evolve using a Moon Stone.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (452, 15, 9, 'A Poké Ball that is better than usual at catching very heavy Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (453, 15, 9, 'A Poké Ball that makes it easier to catch Pokémon that are usually very quick to run away.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (454, 15, 9, 'A strange Poké Ball that will make the wild Pokémon caught with it more friendly toward you immediately.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (455, 15, 9, 'A Poké Ball that works best when catching a Pokémon that is of the opposite gender of your Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (456, 15, 9, 'A special Poké Ball for the Pal Park.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (457, 15, 9, 'A special Poké Ball that is used during the Bug-Catching Contest.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (458, 15, 9, 'A red Apricorn.
It assails your nostrils.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (459, 15, 9, 'A blue Apricorn.
It smells a bit like grass.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (460, 15, 9, 'A yellow Apricorn.
It has an invigorating scent.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (461, 15, 9, 'A green Apricorn.
It has a mysterious, aromatic scent.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (462, 15, 9, 'A pink Apricorn.
It has a nice, sweet scent.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (463, 15, 9, 'A white Apricorn.
It doesn’t smell like anything.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (464, 15, 9, 'A black Apricorn.
It has a scent beyond one’s experience.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (465, 15, 9, 'It searches for hidden items in the area and emits different lights and sounds when it detects something.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (466, 15, 9, 'Mahogany Town’s famous candy.
When consumed, it restores 20 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (467, 15, 9, 'A shiny red orb that is said to have a legend tied to it. It’s known to have a deep connection with the Hoenn region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (468, 15, 9, 'A shiny blue orb that is said to have a legend tied to it. It’s known to have a deep connection with the Hoenn region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (469, 15, 9, 'A shiny green orb that is said to have a legend tied to it. It’s known to have a deep connection with the Hoenn region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (470, 15, 9, 'A crystal ball that was excavated from the ground. It’s a very beautiful stone that is covered with bits of rock and earth.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (471, 15, 9, 'A report of all the discovered kinds of Unown.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (472, 15, 9, 'A card to save points for the Buena’s Password show.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (473, 15, 9, 'A very tasty tail of something.
It can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (474, 15, 9, 'A very old-fashioned bell that makes a gentle ringing sound.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (475, 15, 9, 'A card key that opens a shutter in the Radio Tower.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (476, 15, 9, 'A key that opens a door in the Goldenrod Tunnel.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (477, 15, 9, 'A scale from a red Gyarados.
It glows red like a flame.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (478, 15, 9, 'The Mime Jr. doll that was lost by the Copycat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (479, 15, 9, 'A pass required for riding the Magnet Train. It allows you to ride whenever and however much you’d like.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (480, 15, 9, 'An important part of a machine that was stolen from the Power Plant.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (481, 15, 9, 'A strange, silvery feather that sparkles.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (482, 15, 9, 'A mystical rainbow feather that sparkles.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (483, 15, 9, 'A mysterious Egg obtained from Mr. Pokémon.
What is in the Egg is unknown.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (484, 15, 9, 'A music player that allows you to listen to nostalgic songs. It’s operated with the flip of a single switch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (485, 15, 9, 'A very old-fashioned bell that makes a gentle ringing sound.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (486, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many victories you have had in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (487, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many losses you have had in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (488, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times your Pokémon dashed in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (489, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times your Pokémon jumped in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (490, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Hurdle Dash.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (491, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Relay Run.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (492, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Pennant Capture.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (493, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Block Smash.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (494, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Disc Catch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (495, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Snow Throw.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (496, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many points your Pokémon scored in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (497, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times your Pokémon failed in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (498, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times your Pokémon impeded themselves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (499, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times your Pokémon tackled in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (500, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times your Pokémon fell down in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (501, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Ring Drop.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (502, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Lamp Jump.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (503, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Circle Push.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (504, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many Link Pokéathlon wins you have had.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (505, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many Link Pokéathlon losses you have had.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (506, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you have won a Pokéathlon event.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (507, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you have lost a Pokéathlon event.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (508, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you switched Pokémon in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (509, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you won the Pokéathlon’s Goal Roll.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (510, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times your Pokémon won individual prizes.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (511, 15, 9, 'It holds Pokéathlon records. It is a card that shows how many times you instructed your Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (512, 15, 9, 'It holds Pokéathlon records. It is a card that shows how much time you spent participating in the Pokéathlon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (513, 15, 9, 'A sturdy Capsule that can only be opened with a special key.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (514, 15, 9, 'A nice photo album for storing all the photos taken along your adventure.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (544, 15, 9, 'A flute which can play with such a beautiful tone that even sleeping Pokémon find themselves roused.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (563, 15, 9, 'A cassette to be held by Genesect.
It changes Genesect’s Techno Blast move so it becomes Water type.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (564, 15, 9, 'A cassette to be held by Genesect.
It changes Genesect’s Techno Blast move so it becomes Electric type.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (565, 15, 9, 'A cassette to be held by Genesect.
It changes Genesect’s Techno Blast move so it becomes Fire type.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (566, 15, 9, 'A cassette to be held by Genesect.
It changes Genesect’s Techno Blast move so it becomes Ice type.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (567, 15, 9, 'A piece of cloyingly sweet chocolate.
When consumed, it restores 20 HP to an injured Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (568, 15, 9, 'Stationery designed to be easy to use when writing someone for the first time. 
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (569, 15, 9, 'Stationery designed to make it easier to write about your favorite things.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (570, 15, 9, 'Stationery designed to allow you to extend an invitation to the recipient.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (571, 15, 9, 'Stationery designed to make it easy for you to express thanks. Have a
Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (572, 15, 9, 'Stationery designed to make it easier to pose a question about something.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (573, 15, 9, 'Stationery designed to allow you to recommend something to the reader.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (574, 15, 9, 'Stationery designed to make it easy to respond to a letter you received.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (575, 15, 9, 'Stationery featuring an illustration of a bridge that seems to pierce the sky.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (576, 15, 9, 'Stationery featuring an illustration of a bright-red drawbridge.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (577, 15, 9, 'Stationery featuring an illustration of a high-tension steel suspension bridge.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (578, 15, 9, 'Stationery featuring an illustration of a vintage-looking brick bridge.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (579, 15, 9, 'Stationery featuring an illustration of a majestically arched bridge.
Have a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (580, 15, 9, 'A mysterious scale that causes a certain Pokémon to evolve.
It shines in rainbow colors.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (581, 15, 9, 'A mysterious Evolutionary lump. 
When held by a Pokémon that can still evolve, it raises both Defense and Sp. Def.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (582, 15, 9, 'An item to be held by a Pokémon.
This very light stone reduces the weight of a Pokémon when held.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (583, 15, 9, 'An item to be held by a Pokémon.
If the holder is hit, the attacker will also be damaged upon contact.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (584, 15, 9, 'An item to be held by a Pokémon.
The holder will float in the air until hit. Once hit, this item will burst.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (585, 15, 9, 'An item to be held by a Pokémon.
When the holder is hit by an attack, the attacker is removed from battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (586, 15, 9, 'An item to be held by a Pokémon.
Moves that normally have no effect will land on a Pokémon holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (587, 15, 9, 'An item to be held by a Pokémon.
A band that increases the power of binding moves used by the holder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (588, 15, 9, 'An item to be held by a Pokémon.
It boosts Sp. Atk if hit with a Water-type attack. It can only be used once.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (589, 15, 9, 'An item to be held by a Pokémon.
It boosts Attack if hit with an Electric-type attack. It can only be used once.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (590, 15, 9, 'An item to be held by a Pokémon.
If the holder is hit by an attack, it will be switched out of battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (591, 15, 9, 'A gem with an essence of fire.
When held, it strengthens the power of a Fire-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (592, 15, 9, 'A gem with an essence of water.
When held, it strengthens the power of a Water-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (593, 15, 9, 'A gem with an essence of electricity.
When held, it strengthens the power of an Electric-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (594, 15, 9, 'A gem with an essence of nature.
When held, it strengthens the power of a Grass-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (595, 15, 9, 'A gem with an essence of ice.
When held, it strengthens the power of an Ice-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (596, 15, 9, 'A gem with an essence of combat.
When held, it strengthens the power of a Fighting-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (597, 15, 9, 'A gem with an essence of poison.
When held, it strengthens the power of a Poison-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (598, 15, 9, 'A gem with an essence of land.
When held, it strengthens the power of a Ground-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (599, 15, 9, 'A gem with an essence of air.
When held, it strengthens the power of a Flying-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (600, 15, 9, 'A gem with an essence of the mind.
When held, it strengthens the power of a Psychic-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (601, 15, 9, 'A gem with an insect-like essence.
When held, it strengthens the power of a Bug-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (602, 15, 9, 'A gem with an essence of rock.
When held, it strengthens the power of a Rock-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (603, 15, 9, 'A gem with a spectral essence.
When held, it strengthens the power of a Ghost-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (604, 15, 9, 'A gem with an essence of darkness.
When held, it strengthens the power of a Dark-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (605, 15, 9, 'A gem with an essence of steel.
When held, it strengthens the power of a Steel-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (606, 15, 9, 'An item for use on a Pokémon.
It slightly increases the base HP of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (607, 15, 9, 'An item for use on a Pokémon.
It slightly increases the base Attack stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (608, 15, 9, 'An item for use on a Pokémon.
It slightly increases the base Defense stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (609, 15, 9, 'An item for use on a Pokémon.
It slightly increases the base Sp. Atk stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (610, 15, 9, 'An item for use on a Pokémon.
It slightly increases the base Sp. Def stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (611, 15, 9, 'An item for use on a Pokémon.
It slightly increases the base Speed stat of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (612, 15, 9, 'Though this feather is beautiful, it’s just a regular feather and has no effect on Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (613, 15, 9, 'A fossil from a prehistoric Pokémon that once lived in the sea. It appears as though it could be part of its back.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (614, 15, 9, 'A fossil from a prehistoric Pokémon that once lived in the sky. It looks as if it could come from part of its wing.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (615, 15, 9, 'A special pass to go to Liberty Garden.
Board the ship in Castelia City.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (616, 15, 9, 'A mysterious orb containing the power of the Unova region, to be used when generating Pass Power.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (617, 15, 9, 'A special Poké Ball that appears in your Bag out of nowhere in the Entree Forest.
It can catch any Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (618, 15, 9, 'A toy that attracts the attention of a Pokémon. It guarantees escape from any battle with a wild Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (619, 15, 9, 'A lovely case to store colorful Props for your Pokémon to wear in a musical.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (620, 15, 9, 'A skull of a Pokémon which was said to have braved the angry waters to fly around the world.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (621, 15, 9, 'A rare mushroom that gives off a nice fragrance.
It can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (622, 15, 9, 'A big nugget of pure gold that gives off a lustrous gleam. 
It can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (623, 15, 9, 'Very large pearls that sparkle in a pretty silver color. 
They can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (624, 15, 9, 'A shard that fell to the ground when a comet approached. 
It can be sold at a high price to shops.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (625, 15, 9, 'A copper coin used by an ancient civilization about 3,000 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (626, 15, 9, 'A silver coin used by an ancient civilization about 3,000 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (627, 15, 9, 'A gold coin used by an ancient civilization about 3,000 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (628, 15, 9, 'A fragile vase made by an ancient civilization about 3,000 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (629, 15, 9, 'A heavy bracelet made by an ancient civilization about 3,000 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (630, 15, 9, 'A stone figurine made by an ancient civilization about 3,000 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (631, 15, 9, 'A heavy crown made by an ancient civilization about 3,000 years ago.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (632, 15, 9, 'Castelia City’s specialty, soft-serve ice cream. 
It heals all the status problems of a single Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (633, 15, 9, 'It can be used many times to raise the critical-hit ratio of one Pokémon. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (634, 15, 9, 'It sharply raises the Speed stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (635, 15, 9, 'It sharply raises the Sp. Atk stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (636, 15, 9, 'It sharply raises the Sp. Def stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (637, 15, 9, 'It sharply raises the Defense stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (638, 15, 9, 'It sharply raises the Attack stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (639, 15, 9, 'It sharply raises the accuracy of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (640, 15, 9, 'It drastically raises the Speed stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (641, 15, 9, 'It drastically raises the Sp. Atk stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (642, 15, 9, 'It drastically raises the Sp. Def stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (643, 15, 9, 'It drastically raises the Defense stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (644, 15, 9, 'It drastically raises the Attack stat of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (645, 15, 9, 'It drastically raises the accuracy of a Pokémon in battle. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (646, 15, 9, 'It raises the Speed stat of a Pokémon in battle immensely. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (647, 15, 9, 'It raises the Sp. Atk stat of a Pokémon in battle immensely. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (648, 15, 9, 'It raises the Sp. Def stat of a Pokémon in battle immensely. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (649, 15, 9, 'It raises the Defense stat of a Pokémon in battle immensely. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (650, 15, 9, 'It raises the Attack stat of a Pokémon in battle immensely. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (651, 15, 9, 'It raises the accuracy of a Pokémon in battle immensely. 
It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (652, 15, 9, 'When used, it activates the Ability of an ally Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (653, 15, 9, 'When used, it causes an ally Pokémon to drop a held item.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (654, 15, 9, 'When used, it causes an ally Pokémon to use its held item.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (655, 15, 9, 'When used, it restores any stat changes of an ally Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (656, 15, 9, 'It can be used many times to greatly raise a Pokémon’s critical-hit ratio. It wears off if the Pokémon is withdrawn.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (657, 15, 9, 'Reshiram’s body was destroyed and changed into this stone. It is said to be waiting for the emergence of a hero.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (658, 15, 9, 'Zekrom’s body was destroyed and changed into this stone. It is said to be waiting for the emergence of a hero.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (659, 15, 9, 'The user shrouds itself in electricity and smashes into its target.
This also damages the user a little.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (660, 15, 9, 'The user attacks with a punch. 
This may also lower the target’s Defense stat. This move can also shatter rocks in the field.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (661, 15, 9, 'The user yells as if it’s ranting about something, which lowers the Sp. Atk stat of opposing Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (662, 15, 9, 'A high-tech transceiver with a camera function. It allows up to four-way calls.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (663, 15, 9, 'A rare stone.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (664, 15, 9, 'An important letter that Wingull delivers.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (665, 15, 9, 'An important letter that Wingull delivers.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (666, 15, 9, 'An important letter that Wingull delivers.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (668, 15, 9, 'A gem with a draconic essence. 
When held, it strengthens the power of a Dragon-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (669, 15, 9, 'A gem with an ordinary essence.
When held, it strengthens the power of a Normal-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (670, 15, 9, 'A box-shaped machine that stores Medals and Medal information.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (671, 15, 9, 'A splicer that fuses Kyurem and a certain Pokémon. They are said to have been one in the beginning.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (673, 15, 9, 'A permit that is needed to enter the Nature Preserve.
Not many know about it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (674, 15, 9, 'An oval charm said to increase the chance of Pokémon Eggs being found at the Day Care.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (675, 15, 9, 'A shiny charm said to increase the chance of finding a Shiny Pokémon in the wild.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (676, 15, 9, 'A card key needed to enter the password inside the Plasma Frigate.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (677, 15, 9, 'A handkerchief dropped by a regular at Café Warehouse.
It smells faintly like a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (678, 15, 9, 'A special device that wrings out the potential of Pokémon.
It is an imperfect prototype.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (679, 15, 9, 'The Xtransceiver found at the Nimbasa City amusement park.
It seems it belongs to a boy.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (681, 15, 9, 'A looking glass that reveals the truth.
It’s a mysterious glass that returns a Pokémon to its original shape.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (682, 15, 9, 'An item to be held by a Pokémon.
Attack and Sp. Atk sharply increase if the holder is hit with a move it’s weak to.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (683, 15, 9, 'An item to be held by a Pokémon.
This offensive vest raises Sp. Def but prevents the use of status moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (684, 15, 9, 'An item to be held by a Pokémon.
It is a stone tablet that boosts the power of Fairy-type moves.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (685, 15, 9, 'A capsule that allows a Pokémon with two Abilities to switch between these Abilities when it is used.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (686, 15, 9, 'A soft and sweet treat made of fluffy, puffy, whipped and whirled cream.
It’s loved by a certain Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (687, 15, 9, 'A sachet filled with fragrant perfumes that are just slightly too overwhelming.
Yet it’s loved by a certain Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (688, 15, 9, 'An item to be held by a Pokémon. 
It boosts Sp. Def if hit with a Water-type attack. It can only be used once.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (689, 15, 9, 'An item to be held by a Pokémon.
It boosts Attack if hit with an Ice-type attack. It can only be used once.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (690, 15, 9, 'An item to be held by a Pokémon.
These goggles protect the holder from both weather-related damage and powder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (691, 15, 9, 'Mulch to be used in a Berry field.
It increases the Berry harvest without the need for particularly diligent care.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (692, 15, 9, 'Mulch to be used in a Berry field.
It causes strange, sudden mutations based on the combination of Berries.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (693, 15, 9, 'Mulch to be used in a Berry field.
It increases the Berry harvest that can be grown by diligent watering.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (694, 15, 9, 'Mulch to be used in a Berry field.
An amazing Mulch with the effects of Rich, Surprise, and Boost Mulch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (695, 15, 9, 'One variety of the mysterious Mega Stones.
Have Gengar hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (696, 15, 9, 'One variety of the mysterious Mega Stones.
Have Gardevoir hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (697, 15, 9, 'One variety of the mysterious Mega Stones.
Have Ampharos hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (698, 15, 9, 'One variety of the mysterious Mega Stones.
Have Venusaur hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (699, 15, 9, 'One variety of the mysterious Mega Stones.
Have Charizard hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (700, 15, 9, 'One variety of the mysterious Mega Stones.
Have Blastoise hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (701, 15, 9, 'One variety of the mysterious Mega Stones.
Have Mewtwo hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (702, 15, 9, 'One variety of the mysterious Mega Stones.
Have Mewtwo hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (703, 15, 9, 'One variety of the mysterious Mega Stones.
Have Blaziken hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (704, 15, 9, 'One variety of the mysterious Mega Stones.
Have Medicham hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (705, 15, 9, 'One variety of the mysterious Mega Stones.
Have Houndoom hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (706, 15, 9, 'One variety of the mysterious Mega Stones.
Have Aggron hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (707, 15, 9, 'One variety of the mysterious Mega Stones.
Have Banette hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (708, 15, 9, 'One variety of the mysterious Mega Stones.
Have Tyranitar hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (709, 15, 9, 'One variety of the mysterious Mega Stones.
Have Scizor hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (710, 15, 9, 'One variety of the mysterious Mega Stones.
Have Pinsir hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (711, 15, 9, 'One variety of the mysterious Mega Stones.
Have Aerodactyl hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (712, 15, 9, 'One variety of the mysterious Mega Stones.
Have Lucario hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (713, 15, 9, 'One variety of the mysterious Mega Stones.
Have Abomasnow hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (714, 15, 9, 'One variety of the mysterious Mega Stones.
Have Kangaskhan hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (715, 15, 9, 'One variety of the mysterious Mega Stones.
Have Gyarados hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (716, 15, 9, 'One variety of the mysterious Mega Stones.
Have Absol hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (717, 15, 9, 'One variety of the mysterious Mega Stones.
Have Charizard hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (718, 15, 9, 'One variety of the mysterious Mega Stones.
Have Alakazam hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (719, 15, 9, 'One variety of the mysterious Mega Stones.
Have Heracross hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (720, 15, 9, 'One variety of the mysterious Mega Stones.
Have Mawile hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (721, 15, 9, 'One variety of the mysterious Mega Stones.
Have Manectric hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (722, 15, 9, 'One variety of the mysterious Mega Stones.
Have Garchomp hold it, and this stone will enable it to Mega Evolve during battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (723, 15, 9, 'If held by a Pokémon, this Berry will lessen the damage taken from one supereffective Fairy-type attack.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (724, 15, 9, 'If held by a Pokémon, this Berry will increase the holder’s Defense if it’s hit with a physical move.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (725, 15, 9, 'If held by a Pokémon, this Berry will increase the holder’s Sp. Def if it’s hit with a special move.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (726, 15, 9, 'This special coupon allows you to buy items at a discount when youare shopping at a boutique.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (727, 15, 9, 'An ornament depicting a Pokémon that is venerated as a protector in some region far from Kalos.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (728, 15, 9, 'A popular treat in Lumiose City.
It can be used once to heal all the status conditions of a Pokémon.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (729, 15, 9, 'A fossil from a prehistoric Pokémon that once lived on the land. It looks as if it could be a piece of a large jaw.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (730, 15, 9, 'A fossil from a prehistoric Pokémon that once lived on the land. It looks like the impression from a skin sail.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (731, 15, 9, 'A gem with an essence of the fey.
When held, it strengthens the power of a Fairy-type move one time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (732, 15, 9, 'This book contains all the points a new Trainer needs to know on a journey.
It was handmade by a kind friend.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (733, 15, 9, 'A card key that activates the elevator in Lysandre Labs.
It is emblazoned with Team Flare’s logo.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (734, 15, 9, 'A device that allows users to receive and view hologram clips at any time.
It is also used to chat with others.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (735, 15, 9, 'A precious symbol that is awarded only to an individual who has done great things for the Kalos region.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (736, 15, 9, 'A rather curious stone that might appear to be valuable to some.
It’s all in the eye of the beholder.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (737, 15, 9, 'A rather chic-looking case for carrying contact lenses.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (738, 15, 9, 'A ticket that was handmade by Looker. It’s decorated with a liberal amount of glittery paint.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (739, 15, 9, 'This ring contains an untold power that somehow enables Pokémon carrying Mega Stones to Mega Evolve in battle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (740, 15, 9, 'This pass serves as an ID card for gaining access to the power plant that lies along Route 13.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (741, 15, 9, 'A letter that Professor Sycamore wrote to your mother. A faint but pleasant perfume seems to cling to the paper.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (742, 15, 9, 'Attaches roller skates to the bottom of your shoes, allowing you to glide quickly around and perform tricks.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (743, 15, 9, 'A watering can shaped like a Lotad.
It helps promote the healthy growth of any Berries planted in good, soft soil.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (744, 15, 9, 'A commuter pass that allows the holder to ride the TMV between Lumiose City and Kiloude City at any time.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (745, 15, 9, 'An attack that makes use of nature’s power. Its effects vary depending on the user’s environment.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (746, 15, 9, 'The user releases a horrible aura imbued with dark thoughts. This may also make the target flinch.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (747, 15, 9, 'Striking opponents over and over makes the user’s fists harder. Hitting a target raises the Attack stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (748, 15, 9, 'The user damages opposing Pokémon by emitting a powerful flash.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (749, 15, 9, 'The user tells the target a secret, and the target loses its ability to concentrate. 
This lowers the target’s Sp. Atk stat.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 8, 9, 'Stationery featuring a print of a refreshingly green field.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 10, 9, 'Stationery featuring a print of flames in blazing red.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 10, 9, 'Stationery featuring a print of a blue world underwater.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 10, 9, 'Stationery featuring a print of pretty floral patterns.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 10, 9, 'Stationery featuring a print of a dimly lit coal mine.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 10, 9, 'Stationery featuring a print of cool mechanical designs.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 10, 9, 'Stationery featuring a print of giant heart patterns.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 10, 9, 'Stationery featuring a print of a chilly, snow-covered world.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 10, 9, 'Stationery featuring a print depicting the huge expanse of space.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 10, 9, 'Stationery featuring a print of a vivid rainbow pattern.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 10, 9, 'Stationery featuring a print of a tough-looking brick pattern.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 10, 9, 'Stationery featuring a print of colorful letter sets.
Let a Pokémon hold it for delivery.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (403, 10, 9, 'The user charges the foe at an awesome speed. It can also be used to climb a waterfall.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (404, 10, 9, 'A charging attack that may also leave the foe confused. It can also be used to scale rocky walls.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (515, 7, 9, 'A piece of MAIL featuring a cute ZIGZAGOON print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (516, 7, 9, 'A piece of MAIL featuring a cute WINGULL print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (517, 7, 9, 'A piece of MAIL featuring a cute PIKACHU print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (518, 7, 9, 'A piece of MAIL featuring a cute MAGNEMITE print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (519, 7, 9, 'A piece of MAIL featuring a cute SLAKOTH print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (520, 7, 9, 'A piece of MAIL featuring a cute WAILMER print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (521, 7, 9, 'A piece of MAIL to be held by a POKéMON. It will bear the print of
the POKéMON holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (522, 7, 9, 'A piece of MAIL featuring a cute DUSKULL print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (523, 7, 9, 'A piece of MAIL featuring a cute BELLOSSOM print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (524, 7, 9, 'A piece of MAIL to be held by a POKéMON. It will bear the print of the POKéMON holding it.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (525, 7, 9, 'A piece of MAIL featuring a gorgeous, extravagant print.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (526, 7, 9, 'A piece of MAIL featuring a print of three cute POKéMON.
It is to be held by a POKéMON.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (527, 7, 9, 'A folding bicycle that is at least twice as fast as walking.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (528, 7, 9, 'A folding bicycle that is capable of stunts like jumps and wheelies.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (529, 7, 9, 'A nifty watering pail. Use it to promote strong growth in BERRIES planted in soft soil.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (530, 7, 9, 'A package that contains mechanical parts of some sort made by the DEVON CORPORATION.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (531, 7, 9, 'A sack used to collect volcanic ash automatically during walks over deep ash.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (532, 7, 9, 'A case for holding POKéBLOCKS made with a BERRY BLENDER. It releases one POKéBLOCK when shaken.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (533, 7, 9, 'An extremely important letter to STEVEN from the PRESIDENT of the DEVON CORPORATION.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (534, 7, 9, 'The ticket required for sailing on a ferry to a distant southern island. 
It features a drawing of an island.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (535, 7, 9, 'A device used to search for life-forms in water.
It looks too difficult to use.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (536, 7, 9, 'A pair of protective goggles. They enable a TRAINER to travel through even desert sandstorms.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (537, 7, 9, 'A meteorite that fell from space onto MT. MOON long ago. It is very lumpy and hard.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (538, 7, 9, 'A key that opens the door to Room 1 inside the ABANDONED SHIP.
It is old and looks easily broken.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (539, 7, 9, 'A key that opens the door to Room 2 inside the ABANDONED SHIP.
It is old and looks easily broken.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (540, 7, 9, 'A key that opens the door to Room 4 inside the ABANDONED SHIP.
It is old and looks easily broken.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (541, 7, 9, 'A key that opens the door to Room 6 inside the ABANDONED SHIP.
It is old and looks easily broken.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (542, 7, 9, 'A scope that signals the presence of any unseeable POKéMON.
It is made by the DEVON CORP.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (543, 7, 9, 'A parcel to be delivered to PROF. OAK from VIRIDIAN CITY’s POKéMON MART.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (545, 7, 9, 'Take this voucher to the BIKE SHOP in CERULEAN CITY and exchange it for a bicycle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (546, 7, 9, 'A set of false teeth lost by the SAFARI ZONE’S WARDEN. It makes his smile sparkle.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (547, 7, 9, 'A key that operates the elevator in TEAM ROCKET’s HIDEOUT.
It bears the TEAM ROCKET logo.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (548, 7, 9, 'A scope that makes unseeable POKéMON visible.
It is made by SILPH CO.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (549, 7, 9, 'A device that enables you to recall what you’ve heard and seen about famous people.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (550, 7, 9, 'A case that holds TMs and HMs. It is attached to the BAG’s compartment for important items.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (551, 7, 9, 'A pouch for carrying BERRIES. It is attached to the BAG’s compartment for important items.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (552, 7, 9, 'A television set that is tuned to a program with useful tips for novice TRAINERS.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (553, 7, 9, 'A pass for ferries between ONE, TWO, and THREE ISLAND.
It has a drawing of three islands.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (554, 7, 9, 'A pass for ferries between VERMILION and the SEVII ISLANDS.
It features a drawing of a rainbow.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (555, 7, 9, 'An aromatic tea prepared by an old lady. It will slake even the worst thirst.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (556, 7, 9, 'A ticket required to board the ship to NAVEL ROCK.
It glows with a mystic light.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (557, 7, 9, 'A ticket required to board the ship to BIRTH ISLAND.
It glows beautifully.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (558, 7, 9, 'A jar for storing BERRY POWDER made using a BERRY CRUSHER.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (559, 7, 9, 'An exquisitely beautiful gem that has a red glow. It symbolizes passion.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (560, 7, 9, 'An exquisitely beautiful gem that has a blue glow. It symbolizes honesty.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (561, 6, 9, 'A medal-like item in the same shape as TEAM MAGMA’s mark.');
INSERT INTO [item_flavor_text] ([item_id], [version_group_id], [language_id], [flavor_text]) VALUES (562, 6, 9, 'A faded sea chart that shows the way to a certain island.');
