
-- Table: item_prose
CREATE TABLE item_prose ( 
    item_id           INTEGER NOT NULL,
    local_language_id INTEGER NOT NULL,
    short_effect      TEXT,
    effect            TEXT,
    PRIMARY KEY ( item_id, local_language_id ),
    FOREIGN KEY ( item_id ) REFERENCES items ( id ),
    FOREIGN KEY ( local_language_id ) REFERENCES languages ( id ) 
);

INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (1, 9, 'Catches a wild Pokémon every time.', 'Used in battle
:   [Catches]{mechanic:catch} a wild Pokémon without fail.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (2, 9, 'Tries to catch a wild Pokémon.  Success rate is 2×.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 2×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (3, 9, 'Tries to catch a wild Pokémon.  Success rate is 1.5×.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 1.5×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (4, 9, 'Tries to catch a wild Pokémon.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (5, 9, 'Tries to catch a wild Pokémon in the Great Marsh or Safari Zone.  Success rate is 1.5×.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 1.5×.

This item can only be used in the []{location:great-marsh} or []{location:kanto-safari-zone}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (6, 9, 'Tries to catch a wild Pokémon.  Success rate is 3× for water and bug Pokémon.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon.  If the wild Pokémon is []{type:water}- or []{type:bug}-type, this ball has a catch rate of 3×.  Otherwise, it has a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (7, 9, 'Tries to catch a wild Pokémon. Success rate is 3.5× when underwater, fishing, or surfing.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon.  If the wild Pokémon was encountered by surfing or fishing, this ball has a catch rate of 3.5×.  Otherwise, it has a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (8, 9, 'Tries to catch a wild Pokémon.  Success rate is 3.9× for level 1 Pokémon, and drops steadily to 1× at level 30.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon.  Has a catch rate of given by `(40 - level) / 10`, where `level` is the wild Pokémon''s level, to a maximum of 3.9× for level 1 Pokémon.  If the wild Pokémon''s level is higher than 30, this ball has a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (9, 9, 'Tries to catch a wild Pokémon.  Success rate is 3× for previously-caught Pokémon.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon.  If the wild Pokémon''s species is marked as caught in the trainer''s Pokédex, this ball has a catch rate of 3×.  Otherwise, it has a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (10, 9, 'Tries to catch a wild Pokémon. Success rate increases by 0.1× (Gen V: 0.3×) every turn, to a max of 4×.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon.  Has a catch rate of 1.1× on the first turn of the battle and increases by 0.1× every turn, to a maximum of 4× on turn 30.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (11, 9, 'Tries to catch a wild Pokémon.  Caught Pokémon start with 200 happiness.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 1×.  Whenever the caught Pokémon''s [happiness]{mechanic:happiness} increases, it increases by one extra point.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (12, 9, 'Tries to catch a wild Pokémon.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (13, 9, 'Tries to catch a wild Pokémon.  Success rate is 3.5× at night and in caves.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon.  If it''s currently nighttime or the wild Pokémon was encountered while walking in a cave, this ball has a catch rate of 3.5×.  Otherwise, it has a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (14, 9, 'Tries to catch a wild Pokémon.  Caught Pokémon are immediately healed.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 1×.  The caught Pokémon''s [HP]{mechanic:hp} is immediately restored, [PP]{mechanic:pp} for all its moves is restored, and any [status ailment]{mechanic:status-ailment} is cured.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (15, 9, 'Tries to catch a wild Pokémon. Success rate is 4× (Gen V: 5×), but only on the first turn.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 4× on the first turn of a battle, but 1× any other time.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (16, 9, 'Tries to catch a wild Pokémon.', 'Used in battle
:   Attempts to [catch]{mechanic:catch} a wild Pokémon, using a catch rate of 1×.

    If used in a trainer battle, nothing happens and the ball is lost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (17, 9, 'Restores 20 HP.', 'Used on a friendly Pokémon
:   Restores 20 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (18, 9, 'Cures poison.', 'Used on a party Pokémon
:   Cures [poison]{mechanic:poison}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (19, 9, 'Cures a burn.', 'Used on a party Pokémon
:   Cures a [burn]{mechanic:burn}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (20, 9, 'Cures freezing.', 'Used on a party Pokémon
:   Cures [freezing]{mechanic:freezing}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (21, 9, 'Cures sleep.', 'Used on a party Pokémon
:   Cures [sleep]{mechanic:sleep}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (22, 9, 'Cures paralysis.', 'Used on a party Pokémon
:   Cures [paralysis]{mechanic:paralysis}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (23, 9, 'Restores HP to full and cures any status ailment and confusion.', 'Used on a party Pokémon
:   Restores [HP]{mechanic:hp} to full and cures any [status ailment]{mechanic:status-ailment} and [confusion]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (24, 9, 'Restores HP to full.', 'Used on a party Pokémon
:   Restores [HP]{mechanic:hp} to full.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (25, 9, 'Restores 200 HP.', 'Used on a party Pokémon
:   Restores 200 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (26, 9, 'Restores 50 HP.', 'Used on a party Pokémon
:   Restores 50 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (27, 9, 'Cures any status ailment and confusion.', 'Used on a party Pokémon
:   Cures any [status ailment]{mechanic:status-ailment} and [confusion]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (28, 9, 'Revives with half HP.', 'Used on a party Pokémon
:   Revives the Pokémon and restores half its [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (29, 9, 'Revives with full HP.', 'Used on a party Pokémon
:   Revives the Pokémon and restores its [HP]{mechanic:hp} to full.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (30, 9, 'Restores 50 HP.', 'Used on a party Pokémon
:   Restores 50 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (31, 9, 'Restores 60 HP.', 'Used on a party Pokémon
:   Restores 60 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (32, 9, 'Restores 80 HP.', 'Used on a party Pokémon
:   Restores 80 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (33, 9, 'Restores 100 HP.', 'Used on a party Pokémon
:   Restores 100 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (34, 9, 'Restores 50 HP, but lowers happiness.', 'Used on a party Pokémon
:   Restores 50 [HP]{mechanic:hp}.  Decreases [happiness]{mechanic:happiness} by 5/5/10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (35, 9, 'Restores 200 HP, but lowers happiness.', 'Used on a party Pokémon
:   Restores 200 [HP]{mechanic:hp}.  Decreases [happiness]{mechanic:happiness} by 10/10/15.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (36, 9, 'Cures any status ailment, but lowers happiness.', 'Used on a party Pokémon
:   Cures any [status ailment]{mechanic:status-ailment}.  Decreases [happiness]{mechanic:happiness} by 5/5/10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (37, 9, 'Revives with full HP, but lowers happiness.', 'Used on a party Pokémon
:   Revives a [fainted]{mechanic:faint} Pokémon and restores its [HP]{mechanic:hp} to full.  Decreases [happiness]{mechanic:happiness} by 10/10/15.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (38, 9, 'Restores 10 PP for one move.', 'Used on a party Pokémon
:   Restores 10 [PP]{mechanic:pp} for a selected move.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (39, 9, 'Restores PP to full for one move.', 'Used on a party Pokémon
:   Restores [PP]{mechanic:pp} to full for a selected move.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (40, 9, 'Restores 10 PP for each move.', 'Used on a party Pokémon
:   Restores 10 [PP]{mechanic:pp} for each move.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (41, 9, 'Restores PP to full for each move.', 'Used on a party Pokémon
:   Restores [PP]{mechanic:pp} to full for each move.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (42, 9, 'Cures any status ailment and confusion.', 'Used on a party Pokémon
:   Cures any [status ailment]{mechanic:status-ailment} and [confusion]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (43, 9, 'Restores 20 HP.', 'Used on a party Pokémon
:   Restores 20 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (44, 9, 'Revives all fainted Pokémon with full HP.', 'Used
:   Revives all [fainted]{mechanic:faint} Pokémon in the party and restores their [HP]{mechanic:hp} to full.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (45, 9, 'Raises HP effort and happiness.', 'Used on a party Pokémon
:   Increases [HP]{mechanic:hp} [effort]{mechanic:effort} by 10, but won''t increase it beyond 100.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (46, 9, 'Raises Attack effort and happiness.', 'Used on a party Pokémon
:   Increases [Attack]{mechanic:attack} [effort]{mechanic:effort} by 10, but won''t increase it beyond 100.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (47, 9, 'Raises Defense effort and happiness.', 'Used on a party Pokémon
:   Increases [Defense]{mechanic:defense} [effort]{mechanic:effort} by 10, but won''t increase it beyond 100.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (48, 9, 'Raises Speed effort and happiness.', 'Used on a party Pokémon
:   Increases [Speed]{mechanic:speed} [effort]{mechanic:effort} by 10, but won''t increase it beyond 100.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (49, 9, 'Raises Special Attack effort and happiness.', 'Used on a party Pokémon
:   Increases [Special Attack]{mechanic:special-attack} [effort]{mechanic:effort} by 10, but won''t increase it beyond 100.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (50, 9, 'Causes a level-up and raises happiness.', 'Used on a party Pokémon
:   Increases level by 1.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (51, 9, 'Raises a move''s max PP by 20%.', 'Used on a party Pokémon
:   Increases a selected move''s max [PP]{mechanic:pp} by 20% its original max PP, to a maximum of 1.6×.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (52, 9, 'Raises Special Defense and happiness.', 'Used on a party Pokémon
:   Increases [Special Defense]{mechanic:special-defense} [effort]{mechanic:effort} by 10, but won''t increase it beyond 100.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (53, 9, 'Raises a move''s max PP by 60%.', 'Used on a party Pokémon
:   Increases a selected move''s max [PP]{mechanic:pp} to 1.6× its original max PP.  Increases [happiness]{mechanic:happiness} by 5/3/2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (54, 9, 'Cures any status ailment and confusion.', 'Used on a party Pokémon
:   Cures any [status ailment]{mechanic:status-ailment} and [confusion]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (55, 9, 'Prevents stat changes in battle for five turns in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   Protects the target''s stats from being [lowered]{mechanic:lower} for the next five turns.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (56, 9, 'Increases the chance of a critical hit in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   Increases the target''s [critical hit chance]{mechanic:critical-hit-chance} by one stage until it leaves the field.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (57, 9, 'Raises Attack by one stage in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   [Raises]{mechanic:raise} the target''s [Attack]{mechanic:attack} by one stage.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (58, 9, 'Raises Defense by one stage in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   [Raises]{mechanic:raise} the target''s [Defense]{mechanic:defense} by one stage.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (59, 9, 'Raises Speed by one stage in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   [Raises]{mechanic:raise} the target''s [Speed]{mechanic:speed} by one stage.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (60, 9, 'Raises accuracy by one stage in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   [Raises]{mechanic:raise} the target''s [accuracy]{mechanic:accuracy} by one stage.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (61, 9, 'Raises Special Attack by one stage in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   [Raises]{mechanic:raise} the target''s [Special Attack]{mechanic:special-attack} by one stage.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (62, 9, 'Raises Special Defense by one stage in battle.  Raises happiness.', 'Used on a party Pokémon in battle
:   [Raises]{mechanic:raise} the target''s [Special Defense]{mechanic:special-defense} by one stage.  Increases happiness by 1/1/0.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (63, 9, 'Ends a wild battle.', 'Used in battle
:   Ends a wild battle.  Cannot be used in trainer battles.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (64, 9, 'Ends a wild battle.', 'Used in battle
:   Ends a wild battle.  Cannot be used in trainer battles.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (65, 9, 'Cures sleep.', 'Used on a party Pokémon
:   Cures [sleep]{mechanic:sleep}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (66, 9, 'Cures confusion.', 'Used on a party Pokémon in battle
:   Cures [confusion]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (67, 9, 'Cures attraction.', 'Used on a party Pokémon in battle
:   Cures [attraction]{mechanic:attraction}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (68, 9, 'Halves the wild Pokémon encounter rate.', 'Used outside of battle
:   Decreases the wild Pokémon encounter rate by 50%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (69, 9, 'Doubles the wild Pokémon encounter rate.', 'Used outside of battle
:   Doubles the wild Pokémon encounter rate.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (70, 9, 'No effect. Gen III: Trade four and four Shoal Shells for a Shell Bell.', 'No effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (71, 9, 'No effect. Gen III: Trade four and four Shoal Salts for a Shell Bell.', 'No effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (72, 9, 'No effect. Can be traded for items or moves.', 'No effect.

In Diamond and Pearl, trade ten for a []{move:sunny-day} [TM]{item:tm11} in the house midway along the southern section of []{location:sinnoh-route-212}.

In Platinum, trade to [move tutors]{mechanic:move-tutor} on []{location:sinnoh-route-212}, in []{location:snowpoint-city}, and in the []{location:survival-area}.  Eight shards total are required per tutelage, but the particular combination of colors varies by move.

In HeartGold and SoulSilver, trade one for a []{item:cheri-berry}, a []{item:leppa-berry}, and a []{item:pecha-berry} with the Juggler near the Pokémon Center in []{location:violet-city}.

In HeartGold and SoulSilver, trade one for a []{item:persim-berry}, a []{item:pomeg-berry}, and a []{item:razz-berry} with the Juggler near the []{location:pal-park} entrance in []{location:fuchsia-city}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (73, 9, 'No effect. Can be traded for items or moves.', 'No effect.

In Diamond and Pearl, trade ten for a []{move:rain-dance} [TM]{item:tm18} in the house midway along the southern section of []{location:sinnoh-route-212}.

In Platinum, trade to [move tutors]{mechanic:move-tutor} on []{location:sinnoh-route-212}, in []{location:snowpoint-city}, and in the []{location:survival-area}.  Eight shards total are required per tutelage, but the particular combination of colors varies by move.

In HeartGold and SoulSilver, trade one for a []{item:chesto-berry}, an []{item:oran-berry}, and a []{item:wiki-berry} with the Juggler near the Pokémon Center in []{location:violet-city}.

In HeartGold and SoulSilver, trade one for a []{item:bluk-berry}, a []{item:cornn-berry}, and a []{item:kelpsy-berry} with the Juggler near the []{location:pal-park} entrance in []{location:fuchsia-city}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (74, 9, 'No effect. Can be traded for items or moves.', 'No effect.

In Diamond and Pearl, trade ten for a []{move:sandstorm} [TM]{item:tm37} in the house midway along the southern section of []{location:sinnoh-route-212}.

In Platinum, trade to [move tutors]{mechanic:move-tutor} on []{location:sinnoh-route-212}, in []{location:snowpoint-city}, and in the []{location:survival-area}.  Eight shards total are required per tutelage, but the particular combination of colors varies by move.

In HeartGold and SoulSilver, trade one for an []{item:aspear-berry}, a []{item:iapapa-berry}, and a []{item:sitrus-berry} with the Juggler near the Pokémon Center in []{location:violet-city}.

In HeartGold and SoulSilver, trade one for a []{item:grepa-berry}, a []{item:nomel-berry}, and a []{item:pinap-berry} with the Juggler near the []{location:pal-park} entrance in []{location:fuchsia-city}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (75, 9, 'No effect. Can be traded for items or moves.', 'No effect.

In Diamond and Pearl, trade ten for a []{move:hail} [TM]{item:tm07} in the house midway along the southern section of []{location:sinnoh-route-212}.

In Platinum, trade to [move tutors]{mechanic:move-tutor} on []{location:sinnoh-route-212}, in []{location:snowpoint-city}, and in the []{location:survival-area}.  Eight shards total are required per tutelage, but the particular combination of colors varies by move.

In HeartGold and SoulSilver, trade one for an []{item:aguav-berry}, a []{item:lum-berry}, and a []{item:rawst-berry} with the Juggler near the Pokémon Center in []{location:violet-city}.

In HeartGold and SoulSilver, trade one for a []{item:durin-berry}, a []{item:hondew-berry}, and a []{item:wepear-berry} with the Juggler near the []{location:pal-park} entrance in []{location:fuchsia-city}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (76, 9, 'For 200 steps, prevents wild encounters of level lower than your party''s lead Pokémon.', 'Used outside of battle
:   Trainer will skip encounters with wild Pokémon of a lower level than the lead party Pokémon.  This effect wears off after the trainer takes 200 steps.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (77, 9, 'For 250 steps, prevents wild encounters of level lower than your party''s lead Pokémon.', 'Used outside of battle
:   Trainer will skip encounters with wild Pokémon of a lower level than the lead party Pokémon.  This effect wears off after the trainer takes 250 steps.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (78, 9, 'Transports user to the outside entrance of a cave.', 'Used outside of battle
:   Transports the trainer to the last-entered dungeon entrance.  Cannot be used outside, in buildings, or in []{location:distortion-world}, []{location:sinnoh-hall-of-origin-1}, []{location:spear-pillar}, or []{location:turnback-cave}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (79, 9, 'For 100 steps, prevents wild encounters of level lower than your party''s lead Pokémon.', 'Used outside of battle
:   Trainer will skip encounters with wild Pokémon of a lower level than the lead party Pokémon.  This effect wears off after the trainer takes 100 steps.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (80, 9, 'Evolves a Cottonee into Whimsicott, a Gloom into Bellossom, a Petilil into Lilligant, or a Sunkern into Sunflora.', 'Used on a party Pokémon
:   Evolves a []{pokemon:cottonee} into []{pokemon:whimsicott}, a []{pokemon:gloom} into []{pokemon:bellossom}, a []{pokemon:petilil} into []{pokemon:lilligant}, or a []{pokemon:sunkern} into []{pokemon:sunflora}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (81, 9, 'Evolves a Clefairy into Clefable, a Jigglypuff into Wigglytuff, a Munna into Musharna, a Nidorina into Nidoqueen, a Nidorino into Nidoking, or a Skitty into Delcatty.', 'Used on a party Pokémon
:   Evolves a []{pokemon:clefairy} into []{pokemon:clefable}, a []{pokemon:jigglypuff} into []{pokemon:wigglytuff}, a []{pokemon:munna} into []{pokemon:musharna}, a []{pokemon:nidorina} into []{pokemon:nidoqueen}, a []{pokemon:nidorino} into []{pokemon:nidoking}, or a []{pokemon:skitty} into []{pokemon:delcatty}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (82, 9, 'Evolves an Eevee into Flareon, a Growlithe into Arcanine, a Pansear into Simisear, or a Vulpix into Ninetales.', 'Used on a party Pokémon
:   Evolves an []{pokemon:eevee} into []{pokemon:flareon}, a []{pokemon:growlithe} into []{pokemon:arcanine}, a []{pokemon:pansear} into []{pokemon:simisear}, or a []{pokemon:vulpix} into []{pokemon:ninetales}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (83, 9, 'Evolves an Eelektrik into Eelektross, an Eevee into Jolteon, or a Pikachu into Raichu.', 'Used on a party Pokémon
:   Evolves an []{pokemon:eelektrik} into []{pokemon:eelektross}, an []{pokemon:eevee} into []{pokemon:jolteon}, or a []{pokemon:pikachu} into []{pokemon:raichu}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (84, 9, 'Evolves an Eevee into Vaporeon, a Lombre into Ludicolo, a Panpour into Simipour, a Poliwhirl into Poliwrath, a Shellder into Cloyster, or a Staryu into Starmie.', 'Used on a party Pokémon
:   Evolves an []{pokemon:eevee} into []{pokemon:vaporeon}, a []{pokemon:lombre} into []{pokemon:ludicolo}, a []{pokemon:panpour} into []{pokemon:simipour}, a []{pokemon:poliwhirl} into []{pokemon:poliwrath}, a []{pokemon:shellder} into []{pokemon:cloyster}, or a []{pokemon:staryu} into []{pokemon:starmie}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (85, 9, 'Evolves an Exeggcute into Exeggutor, a Gloom into Vileplume, a Nuzleaf into Shiftry, a Pansage into Simisage, or a Weepinbell into Victreebel.', 'Used on a party Pokémon
:   Evolves an []{pokemon:exeggcute} into []{pokemon:exeggutor}, a []{pokemon:gloom} into []{pokemon:vileplume}, a []{pokemon:nuzleaf} into []{pokemon:shiftry}, a []{pokemon:pansage} into []{pokemon:simisage}, or a []{pokemon:weepinbell} into []{pokemon:victreebel}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (86, 9, 'Fire Red and Leaf Green: Trade two for prior Level-up moves. Sell for 250 Pokédollars, or to Hungry Maid for 500 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (87, 9, 'Fire Red and Leaf Green: Trade for prior Level-up moves. Sell for 2500 Pokédollars, or to Hungry Maid for 5000 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (88, 9, 'Sell for 700 Pokédollars, or to Ore Collector for 1400 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (89, 9, 'Sell for 3750 Pokédollars, or to Ore Collector for 7500 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (90, 9, 'Sell for 1000 Pokédollars, or to Ore Collector for 2000 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (91, 9, 'Platinum: Trade for one of each color Shard. Black and White: Trade for PP Up. Sell for 4900 Pokédollars, or to Ore Collector for 9800 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (92, 9, 'Sell for 5000 Pokédollars, or to Ore Collector for 10000 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (93, 9, 'No effect. Can be traded for prior Level-up moves.', 'Trade one to the Move Relearner near the shore in []{location:pastoria-city} or with the Move Deleter in []{location:blackthorn-city} to teach one party Pokémon a prior level-up move.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (94, 9, null, 'Used outside of battle
:   Immediately triggers a wild Pokémon battle, as long as the trainer is somewhere with wild Pokémon—i.e., in tall grass, in a cave, or surfing.

Can be smeared on sweet-smelling trees to attract tree-dwelling Pokémon after six hours.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (95, 9, 'Growing time of berries is reduced, but the soil dries out faster.', 'Used on a patch of soil
:   Plant''s growth stages will each last 25% less time.  Dries soil out more quickly.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (96, 9, 'Growing time of berries is increased, but the soil dries out slower.', 'Used on a patch of soil
:   Plant''s growth stages will each last 25% more time.  Dries soil out more slowly.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (97, 9, 'Berries stay on the plant for longer than their usual time.', 'Used on a patch of soil
:   Fully-grown plant will last 25% longer before dying and possibly regrowing.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (98, 9, 'Berries regrow from dead plants an increased number of times.', 'Used on a path of soil
:   Plant will regrow after dying 25% more times.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (99, 9, 'Can be revived into a Lileep.', 'Give to a scientist in the []{location:mining-museum} in []{location:oreburgh-city} or the Museum of Science in []{location:pewter-city} to receive a []{pokemon:lileep}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (100, 9, 'Can be revived into an Anorith.', 'Give to a scientist in the []{location:mining-museum} in []{location:oreburgh-city} or the Museum of Science in []{location:pewter-city} to receive a []{pokemon:anorith}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (101, 9, 'Can be revived into an Omanyte.', 'Give to a scientist in the []{location:mining-museum} in []{location:oreburgh-city} or the Museum of Science in []{location:pewter-city} to receive a []{pokemon:omanyte}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (102, 9, 'Can be revived into a Kabuto.', 'Give to a scientist in the []{location:mining-museum} in []{location:oreburgh-city} or the Museum of Science in []{location:pewter-city} to receive a []{pokemon:kabuto}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (103, 9, 'Can be revived into an Aerodactyl.', 'Give to a scientist in the []{location:mining-museum} in []{location:oreburgh-city} or the Museum of Science in []{location:pewter-city} to receive a []{pokemon:aerodactyl}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (104, 9, 'Can be revived into a Shieldon.', 'Give to a scientist in the []{location:mining-museum} in []{location:oreburgh-city} or the Museum of Science in []{location:pewter-city} to receive a []{pokemon:shieldon}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (105, 9, 'Can be revived into a Cranidos.', 'Give to a scientist in the []{location:mining-museum} in []{location:oreburgh-city} or the Museum of Science in []{location:pewter-city} to receive a []{pokemon:cranidos}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (106, 9, 'Sell for 5000 Pokédollars, or to Bone Man for 10000 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (107, 9, 'Evolves a Minccino into Cinccino, a Roselia into Roserade, or a Togetic into Togekiss.', 'Used on a party Pokémon
:   Evolves a []{pokemon:minccino} into []{pokemon:cinccino}, a []{pokemon:roselia} into []{pokemon:roserade}, or a []{pokemon:togetic} into []{pokemon:togekiss}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (108, 9, 'Evolves a Lampent into Chandelure, a Misdreavus into Mismagius, or a Murkrow into Honchkrow.', 'Used on a party Pokémon
:   Evolves a []{pokemon:lampent} into []{pokemon:chandelure}, a []{pokemon:misdreavus} into []{pokemon:mismagius}, or a []{pokemon:murkrow} into []{pokemon:honchkrow}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (109, 9, 'Evolves a male Kirlia into Gallade or a female Snorunt into Froslass.', 'Used on a party Pokémon
:   Evolves a male []{pokemon:kirlia} into []{pokemon:gallade} or a female []{pokemon:snorunt} into []{pokemon:froslass}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (110, 9, 'Level-up during Day on a Happiny: Holder evolves into Chansey.', 'Held by []{pokemon:happiny}
:   Holder evolves into []{pokemon:chansey} when it levels up during the daytime.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (111, 9, 'Use on the tower on Route 209 to encounter Spiritomb if you have at least 32 Underground greetings.', 'Place in the tower on []{location:sinnoh-route-209}.  Check the stone to encounter a []{pokemon:spiritomb}, as long as the trainer''s Underground status card counts at least 32 greetings.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (112, 9, 'Boosts the damage from Dialga''s Dragon-type and Steel-type moves by 20%.', 'Held by []{pokemon:dialga}
:   Holder''s []{type:dragon}- and []{type:steel}-type moves have 1.2× their usual power.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (113, 9, 'Boosts the damage from Palkia''s Dragon-type and Water-type moves by 20%.', 'Held by []{pokemon:palkia}
:   Holder''s []{type:dragon}- and []{type:water}-type moves have 1.2× their usual power.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (114, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (115, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (116, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (117, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (118, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (119, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (120, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (121, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (122, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (123, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (124, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (125, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (126, 9, 'Held: Consumed when paralyzed to cure paralysis.', 'Held in battle
:   When the holder is [paralyzed]{mechanic:paralysis}, it consumes this item to cure the paralysis.

Used on a party Pokémon
:   Cures [paralysis]{mechanic:paralysis}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (127, 9, 'Held: Consumed when asleep to cure sleep.', 'Held in battle
:   When the holder is [asleep]{mechanic:sleep}, it consumes this item to wake up.

Used on a party Pokémon
:   Cures [sleep]{mechanic:sleep}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (128, 9, 'Held: Consumed when poisoned to cure poison.', 'Held in battle
:   When the holder is [poisoned]{mechanic:poison}, it consumes this item to cure the poison.

Used on a party Pokémon
:   Cures [poison]{mechanic:poison}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (129, 9, 'Held: Consumed when burned to cure a burn.', 'Held in battle
:   When the holder is [burned]{mechanic:burn}, it consumes this item to cure the burn.

Used on a party Pokémon
:   Cures a [burn]{mechanic:burn}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (130, 9, 'Held: Consumed when frozen to cure frozen.', 'Held in battle
:   When the holder is [frozen]{mechanic:freezing}, it consumes this item to thaw itself.

Used on a party Pokémon
:   Cures [freezing]{mechanic:freezing}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (131, 9, 'Held: Consumed when a move runs out of PP to restore its PP by 10.', 'Held in battle
:   When the holder is out of [PP]{mechanic:pp} for one of its moves, it consumes this item to restore 10 of that move''s PP.

Used on a party Pokémon
:   Restores 10 [PP]{mechanic:pp} for a selected move.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (132, 9, 'Held: Consumed at 1/2 max HP to recover 10 HP.', 'Held in battle
:   When the holder has 1/2 its max [HP]{mechanic:hp} remaining or less, it consumes this item to restore 10 HP.

Used on a party Pokémon
:   Restores 10 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (133, 9, 'Held: Consumed when confused to cure confusion.', 'Held in battle
:   When the holder is [confused]{mechanic:confusion}, it consumes this item to cure the confusion.

Used on a party Pokémon
:   Cures [confusion]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (134, 9, 'Held: Consumed to cure any status condition or confusion.', 'Held in battle
:   When the holder is afflicted with a [major status ailment]{mechanic:major-status-ailment}, it consumes this item to cure the ailment.

Used on a party Pokémon
:   Cures any [major status ailment]{mechanic:major-status-ailment}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (135, 9, 'Held: Consumed at 1/2 max HP to recover 1/4 max HP.', 'Held in battle
:   When the holder has 1/2 its max [HP]{mechanic:hp} remaining or less, it consumes this item to restore 1/4 its max HP.

Used on a party Pokémon
:   Restores 1/4 the Pokémon''s max [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (136, 9, 'Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike spicy flavor.', 'Held in battle
:   When the holder has 1/2 its max [HP]{mechanic:hp} remaining or less, it consumes this item to restore 1/8 its max HP.  If the holder dislikes spicy flavors (i.e., has a nature that lowers [Attack]{mechanic:attack}), it will also become [confused]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (137, 9, 'Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike dry flavor.', 'Held in battle
:   When the holder has 1/2 its max [HP]{mechanic:hp} remaining or less, it consumes this item to restore 1/8 its max HP.  If the holder dislikes dry flavors (i.e., has a nature that lowers [Special Attack]{mechanic:special-attack}), it will also become [confused]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (138, 9, 'Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike sweet flavor.', 'Held in battle
:   When the holder has 1/2 its max [HP]{mechanic:hp} remaining or less, it consumes this item to restore 1/8 its max HP.  If the holder dislikes sweet flavors (i.e., has a nature that lowers [Speed]{mechanic:speed}), it will also become [confused]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (139, 9, 'Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike bitter flavor.', 'Held in battle
:   When the holder has 1/2 its max [HP]{mechanic:hp} remaining or less, it consumes this item to restore 1/8 its max HP.  If the holder dislikes bitter flavors (i.e., has a nature that lowers [Special Defense]{mechanic:special-defense}), it will also become [confused]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (140, 9, 'Held: Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokémon that dislike sour flavor.', 'Held in battle
:   When the holder has 1/2 its max [HP]{mechanic:hp} remaining or less, it consumes this item to restore 1/8 its max HP.  If the holder dislikes sour flavors (i.e., has a nature that lowers [Defense]{mechanic:defense}), it will also become [confused]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (141, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (142, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (143, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (144, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (145, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (146, 9, 'Drops HP Effort Values by 10 and raises happiness.', 'Used on a party Pokémon
:   Increases [happiness]{mechanic:happiness} by 10/5/2.  Lowers [HP]{mechanic:hp} [effort]{mechanic:effort} by 10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (147, 9, 'Drops Attack Effort Values by 10 and raises happiness.', 'Used on a party Pokémon
:   Increases [happiness]{mechanic:happiness} by 10/5/2.  Lowers [Attack]{mechanic:attack} [effort]{mechanic:effort} by 10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (148, 9, 'Drops Defense Effort Values by 10 and raises happiness.', 'Used on a party Pokémon
:   Increases [happiness]{mechanic:happiness} by 10/5/2.  Lowers [Defense]{mechanic:defense} [effort]{mechanic:effort} by 10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (149, 9, 'Drops Special Attack Effort Values by 10 and raises happiness.', 'Used on a party Pokémon
:   Increases [happiness]{mechanic:happiness} by 10/5/2.  Lowers [Special Attack]{mechanic:special-attack} [effort]{mechanic:effort} by 10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (150, 9, 'Drops Special Defense Effort Values by 10 and raises happiness.', 'Used on a party Pokémon
:   Increases [happiness]{mechanic:happiness} by 10/5/2.  Lowers [Special Defense]{mechanic:special-defense} [effort]{mechanic:effort} by 10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (151, 9, 'Drops Speed Effort Values by 10 and raises happiness.', 'Used on a party Pokémon
:   Increases [happiness]{mechanic:happiness} by 10/5/2.  Lowers [Speed]{mechanic:speed} [effort]{mechanic:effort} by 10.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (152, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (153, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (154, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (155, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (156, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (157, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (158, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (159, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (160, 9, 'Used for creating PokéBlocks and Poffins.', 'No effect; only useful for planting and cooking.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (161, 9, 'Held: Consumed when struck by a super-effective Fire-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:fire}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (162, 9, 'Held: Consumed when struck by a super-effective Water-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:water}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (163, 9, 'Held: Consumed when struck by a super-effective Electric-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:electric}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (164, 9, 'Held: Consumed when struck by a super-effective Grass-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:grass}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (165, 9, 'Held: Consumed when struck by a super-effective Ice-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:ice}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (166, 9, 'Held: Consumed when struck by a super-effective Fighting-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:fighting}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (167, 9, 'Held: Consumed when struck by a super-effective Poison-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:poison}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (168, 9, 'Held: Consumed when struck by a super-effective Ground-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:ground}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (169, 9, 'Held: Consumed when struck by a super-effective Flying-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:flying}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (170, 9, 'Held: Consumed when struck by a super-effective Psychic-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:psychic}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (171, 9, 'Held: Consumed when struck by a super-effective Bug-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:bug}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (172, 9, 'Held: Consumed when struck by a super-effective Rock-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:rock}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (173, 9, 'Held: Consumed when struck by a super-effective Ghost-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:ghost}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (174, 9, 'Held: Consumed when struck by a super-effective Dragon-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:dragon}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (175, 9, 'Held: Consumed when struck by a super-effective Dark-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:dark}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (176, 9, 'Held: Consumed when struck by a super-effective Steel-type attack to halve the damage.', 'Held in battle
:   When the holder would take [super-effective]{mechanic:super-effective} []{type:steel}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (177, 9, 'Held: Consumed when struck by a Normal-type attack to halve the damage.', 'Held in battle
:   When the holder would take []{type:normal}-type damage, it consumes this item to halve the amount of damage taken.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (178, 9, 'Held: Consumed at 1/4 max HP to boost Attack.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item to [raise]{mechanic:raise} its [Attack]{mechanic:attack} by one stage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (179, 9, 'Held: Consumed at 1/4 max HP to boost Defense.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item to [raise]{mechanic:raise} its [Defense]{mechanic:defense} by one stage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (180, 9, 'Held: Consumed at 1/4 max HP to boost Speed.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item to [raise]{mechanic:raise} its [Speed]{mechanic:speed} by one stage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (181, 9, 'Held: Consumed at 1/4 max HP to boost Special Attack.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item to [raise]{mechanic:raise} its [Special Attack]{mechanic:special-attack} by one stage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (182, 9, 'Held: Consumed at 1/4 max HP to boost Special Defense.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item to [raise]{mechanic:raise} its [Special Defense]{mechanic:special-defense} by one stage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (183, 9, 'Held: Consumed at 1/4 max HP to boost critical hit ratio by two stages.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item to [raise]{mechanic:raise} its [critical hit chance]{mechanic:critical-hit-chance} by one stage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (184, 9, 'Held: Consumed at 1/4 max HP to boost a random stat by two stages.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item to [raise]{mechanic:raise} a random stat by two stages.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (185, 9, 'Held: Consumed when struck by a super-effective attack to restore 1/4 max HP.', 'Held in battle
:   When the holder takes [super-effective]{mechanic:super-effective} damage, it consumes this item to restore 1/4 its max [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (186, 9, 'Held: Consumed at 1/4 max HP to boost accuracy of next move by 20%. (Gen IV: Perfect accuracy)', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item, and its next used move has 1.2× its normal accuracy.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (187, 9, 'Held: Consumed at 1/4 max HP when using a move to go first.', 'Held in battle
:   When the holder has 1/4 its max [HP]{mechanic:hp} remaining or less, it consumes this item.  On the following turn, the holder will act first among moves with the same [priority]{mechanic:priority}, regardless of [Speed]{mechanic:speed}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (188, 9, 'Held: Consumed to deal 1/8 attacker''s max HP when holder is struck by a physical attack.', 'Held in battle
:   When the holder takes [physical]{mechanic:physical} damage, it consumes this item to damage the attacking Pokémon for 1/8 its max [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (189, 9, 'Held: Consumed to deal 1/8 attacker''s max HP when holder is struck by a special attack.', 'Held in battle
:   When the holder takes [special]{mechanic:special} damage, it consumes this item to damage the attacking Pokémon for 1/8 its max [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (190, 9, 'Held: Increases the holder''s evasion by 1/9 (11 1/9%).', 'Held in battle
:   Moves targeting the holder have 0.9× [chance to hit]{mechanic:chance-to-hit}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (191, 9, 'Held: Resets all lowered stats to normal at end of turn. Consumed after use.', 'Held in battle
:   At the end of each turn, if any of the holder''s stats have a negative [stat modifier]{mechanic:stat-modifier}, the holder consumes this item to remove the modifiers from those stats.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (192, 9, 'Held: Holder gains double effort values from battles, but has halved Speed in battle.', 'Held
:   When the holder would gain [effort]{mechanic:effort} due to battle, it gains double that effort instead.

Held in battle
:   Holder has half its [Speed]{mechanic:speed}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (193, 9, 'Held: Half the experience from a battle is split between Pokémon holding this item.', 'Held
:   [Experience]{mechanic:experience} is split across two groups: Pokémon who participated in battle, and Pokémon holding this item.  Each Pokémon earns experience as though it had battled alone, divided by the number of Pokémon in its group, then divided by the number of groups. Pokémon holding this item who also participated in battle effectively earn experience twice.

    [Fainted]{mechanic:fainted} Pokémon never earn experience, and empty groups are
ignored; thus, if a single Pokémon is holding this item and the only Pokémon who battled faints from []{move:explosion}, the holder will gain full experience.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (194, 9, 'Held: Holder has a 3/16 (18.75%) chance to move first.', 'Held in battle
:   Whenever the holder attempts to use a move, it has a 3/16 chance to act first among moves with the same [priority]{mechanic:priority}.  If multiple Pokémon have this effect at the same time, [Speed]{mechanic:speed} is the tie-breaker as normal, but the effect of []{move:trick-room} is ignored.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (195, 9, 'Held: Doubles the happiness earned by the holder.', 'Held
:   When the holder would earn [happiness]{mechanic:happiness} for any reason, it earns twice that amount instead.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (196, 9, 'Held: Consumed to cure infatuation. Gen V: Also removes Taunt, Encore, Torment, Disable, and Cursed Body.', 'Held in battle
:   When the holder is [attracted]{move:attract}, it consumes this item to cure the attraction.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (197, 9, 'Held: Increases Attack by 50%, but restricts the holder to only one move.', 'Held in battle
:   Holder has 1.5× its [Attack]{mechanic:attack}.  When the holder attempts to use a move, all its other moves are disabled until it leaves battle or loses this item.

    The restriction ends even if this item is swapped for another Choice item
via []{move:trick} or []{move:switcheroo}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (198, 9, 'Held: Damaging moves gain a 10% chance to make their target flinch. Traded on a Poliwhirl: Holder evolves into Politoed. Traded on a Slowpoke: Holder evolves into Slowking.', 'Held in battle
:   Holder''s damaging moves have a 10% chance to make their target [flinch]{mechanic:flinch}.  This chance applies independently to each hit of a multi-hit move.

    This item''s chance is rolled independently of any other move effects;
e.g., a move with a 30% chance to flinch normally will have a 37% total chance to flinch when used with this item, because 3% of the time, both effects activate.

Held by []{pokemon:poliwhirl} or []{pokemon:slowbro}
:   Holder evolves into []{pokemon:politoed} or []{pokemon:slowking}, respectively, when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (199, 9, 'Held: Bug-Type moves from holder do 20% more damage.', 'Held in battle
:   Holder''s []{type:bug}-type moves have 1.2× their power.
');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (200, 9, 'Held: Doubles the money earned from a battle. Does not stack with Luck Incense.', 'Held
:   If the holder participated in a trainer battle, the trainer earns twice the usual prize money.  This effect applies even if the holder [fainted]{mechanic:fainted}.

    This effect does not stack with any other similar effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (201, 9, 'Prevents wild encounters of level lower than your party''s lead Pokémon.', 'Held by lead Pokémon: Prevents wild battles with Pokémon that are lower level than the holder.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (202, 9, 'Raises Latias and Latios''s Special Attack and Special Defense by 50%.', 'Held by Latias or Latios: Increases the holder''s Special Attack and Special Defense by 50%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (203, 9, 'Doubles Clamperl''s Special Attack. Traded on a Clamperl: Holder evolves into Huntail.', 'Held by Clamperl: Doubles the holder''s Special Attack.  Evolves the holder into Huntail when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (204, 9, 'Doubles Clamperl''s Special Defense. Traded on a Clamperl: Holder evolves into Gorebyss.', 'Held by Clamperl: Doubles the holder''s Special Defense.  Evolves the holder into Gorebyss when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (205, 9, 'Held: Allows the Holder to escape from any wild battle.', 'Held: In wild battles, attempts to run away on the holder''s turn will always succeed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (206, 9, 'Held: Prevents level-based evolution from occuring.', 'Held: Prevents the holder from evolving naturally.  Evolution initiated by the trainer (Stones, etc) will still work.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (207, 9, 'Held: Holder has 10% chance to survive attacks or self-inflicted damage at 1 HP.', 'Held: If the holder is attacked for regular damage that would faint it, this item has a 10% chance to prevent the holder''s HP from lowering below 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (208, 9, 'Held: Increases EXP earned in battle by 50%.', 'Held: Increases any Exp the holder gains by 50%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (209, 9, 'Held: Raises the holder''s critical hit ratio by one stage.', 'Held: Raises the holder''s critical hit counter by 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (210, 9, 'Held: Steel-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Steel moves by 20%.
Held by Onix or Scyther: Evolves the holder into Steelix or Scizor when traded, respectively.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (211, 9, 'Held: Restores 1/16 (6.25%) holder''s max HP at the end of each turn.', 'Held: Heals the holder by 1/16 its max HP at the end of each turn.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (212, 9, 'Traded on a Seadra: Holder evolves into Kingdra.', 'Held by Seadra: Evolves the holder into Kingdra when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (213, 9, 'Doubles Pikachu''s Attack and Special Attack. Breed on Pikachu or Raichu: Pichu Egg will have Volt Tackle.', 'Held by Pikachu: Doubles the holder''s initial Attack and Special Attack.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (214, 9, 'Held: Ground-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Ground moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (215, 9, 'Held: Rock-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Rock moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (216, 9, 'Held: Grass-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Grass moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (217, 9, 'Held: Dark-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Dark moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (218, 9, 'Held: Fighting-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Fighting moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (219, 9, 'Held: Electric-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Electric moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (220, 9, 'Held: Water-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Water moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (221, 9, 'Held: Flying-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Flying moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (222, 9, 'Held: Poison-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Poison moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (223, 9, 'Held: Ice-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Ice moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (224, 9, 'Held: Ghost-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Ghost moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (225, 9, 'Held: Psychic-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Psychic moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (226, 9, 'Held: Fire-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Fire moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (227, 9, 'Held: Dragon-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Dragon moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (228, 9, 'Held: Normal-Type moves from holder do 20% more damage.', 'Held: Increases the power of the holder''s Normal moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (229, 9, 'Traded on a Porygon: Holder evolves into Porygon2.', 'Held by Porygon: Evolves the holder into Porygon2 when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (230, 9, 'Held: Holder receives 1/8 of the damage it deals when attacking.', 'Held: Heals the holder by 1/8 of any damage it inflicts.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (231, 9, 'Held: Water-Type moves from holder do 20% more damage. Breeding: Marill or Azumarill beget an Azurill Egg.', 'Held: Increases the power of the holder''s Water moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (232, 9, 'Held: Holder''s evasion is increased by 5%. Breeding: Wobbuffet begets a Wynaut Egg.', 'Held: Increases the holder''s Evasion by 5%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (233, 9, 'Raises Chansey''s critical hit ratio by two stages.', 'Held by Chansey: Raises the holder''s critical hit counter by 2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (234, 9, 'Raises Ditto''s Defense and Special Defense by 50%. The boost is lost after transforming.', 'Held by Ditto: Increases the holder''s initial Defense and Special Defense by 50%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (235, 9, 'Doubles Cubone or Marowak''s Attack.', 'Held by Cubone or Marowak: Doubles the holder''s Attack.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (236, 9, 'Raises Farfetch''d''s critical hit ratio by two stages.', 'Held by Farfetch''d: Raises the holder''s critical hit counter by 2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (237, 9, 'Raises the holder''s Coolness while in a contest.', 'Held: Increases the holder''s Coolness during a Super Contest''s Visual Competition.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (238, 9, 'Raises the holder''s Beauty while in a contest.', 'Held: Increases the holder''s Beauty during a Super Contest''s Visual Competition.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (239, 9, 'Raises the holder''s Cuteness while in a contest.', 'Held: Increases the holder''s Cuteness during a Super Contest''s Visual Competition.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (240, 9, 'Raises the holder''s Smartness while in a contest.', 'Held: Increases the holder''s Smartness during a Super Contest''s Visual Competition.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (241, 9, 'Raises the holder''s Toughness while in a contest.', 'Held: Increases the holder''s Toughness during a Super Contest''s Visual Competition.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (242, 9, 'Held: Provides a 1/10 (10%) boost in accuracy to the holder.', 'Held: Increases the accuracy of any move the holder uses by 10% (multiplied; i.e. 70% accuracy is increased to 77%).');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (243, 9, 'Held: Boosts the damage of physical moves used by the holder by 10%.', 'Held: Increases the power of the holder''s physical moves by 10%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (244, 9, 'Held: Boosts the damage of special moves used by the holder by 1/10 (10%).', 'Held: Increases the power of the holder''s special moves by 10%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (245, 9, 'Held: Holder''s Super Effective moves do 20% extra damage.', 'Held: When the holder hits with a super-effective move, its power is raised by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (246, 9, 'Held: Light Screen and Reflect used by the holder last 8 rounds instead of 5.', 'Held: The holder''s Reflect and Light Screen will create effects lasting for eight turns rather than five.  As this item affects the move rather than the barrier itself, the effect is not lost if the holder leaves battle or drops this item.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (247, 9, 'Held: Holder''s moves inflict 30% extra damage, but cost 10% max HP.', 'Held: Damage from the holder''s moves is increased by 30%.  On each turn the holder uses a damage-inflicting move, it takes 10% its max HP in damage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (248, 9, 'Held: Both turns of a two-turn charge move happen at once. Consumed upon use.', 'Held: Whenever the holder uses a move that requires a turn to charge first (Bounce, Dig, Dive, Fly, Razor Wind, Skull Bash, Sky Attack, or Solarbeam), this item is consumed and the charge is skipped.  Skull Bash still provides a Defense boost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (249, 9, 'Held: Inflicts Toxic on the holder at the end of the turn. Activates after Poison damage would occur.', 'Held: Badly poisons the holder at the end of each turn.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (250, 9, 'Held: Inflicts Burn on the holder at the end of the turn. Activates after Burn damage would occur.', 'Held: Burns the holder at the end of each turn.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (251, 9, 'Doubles Ditto''s Speed when held. The boost is lost after transforming.', 'Held by Ditto: Doubles the holder''s initial Speed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (252, 9, 'Held: Holder survives any single-hit attack at 1 HP if at max HP, then the item is consumed.', 'Held: If the holder has full HP and is attacked for regular damage that would faint it, this item is consumed and prevents the holder''s HP from lowering below 1.  This effect works against multi-hit attacks, but does not work against the effects of Doom Desire or Future Sight.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (253, 9, 'Held: Provides a 1/5 (20%) boost in accuracy if the holder moves after the target.', 'Held: Raises the holder''s Accuracy by 20% when it goes last.
Ingame description is incorrect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (254, 9, 'Held: Consectutive uses of the same attack have a cumulative damage boost of 10%. Maximum 100% boost.', 'Held: Each time the holder uses the same move consecutively, its power is increased by another 10% of its original, to a maximum of 100%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (255, 9, 'Held: Holder''s Speed is halved. Negates all Ground-type immunities, and makes Flying-types take neutral damage from Ground-type moves. Arena Trap. Spikes, and Toxic Spikes affect the holder.', 'Held: Decreases the holder''s Speed by 50%.  If the holder is Flying or has Levitate, it takes regular damage from Ground attacks and is suspectible to Spikes and Toxic Spikes.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (256, 9, 'Held: Holder moves last in its priority bracket.', 'Held: The holder will go last within its move''s priority bracket, regardless of Speed.  If multiple Pokémon within the same priority bracket are subject to this effect, the slower Pokémon will go first.  The holder will move after Pokémon with Stall.  If the holder has Stall, Stall is ignored.  This item ignores Trick Room.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (257, 9, 'Held: Infatuates opposing Pokémon when holder is inflicted with infatuation.', 'Held: When the holder becomes Attracted, the Pokémon it is Attracted to becomes Attracted back.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (258, 9, 'Held: Poison-type holder recovers 1/16 (6.25%) max HP each turn. Non-Poison-Types take 1/8 (12.5%) max HP damage.', 'Held: If the holder is Poison-type, restores 1/16 max HP at the end of each turn.  Otherwise, damages the holder by 1/16 its max HP at the end of each turn.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (259, 9, 'Held: Hail by the holder lasts 8 rounds instead of 5.', 'Held: The holder''s Hail will create a hailstorm lasting for eight turns rather than five.  As this item affects the move rather than the weather itself, the effect is not lost if the holder leaves battle or drops this item.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (260, 9, 'Held: Sandstorm by the holder lasts 8 rounds instead of 5.', 'Held: The holder''s Sandstorm will create a sandstorm lasting for eight turns rather than five.  As this item affects the move rather than the weather itself, the effect is not lost if the holder leaves battle or drops this item.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (261, 9, 'Held: Sunny Day by the holder lasts 8 rounds instead of 5.', 'Held: The holder''s Sunny Day will create sunshine lasting for eight turns rather than five.  As this item affects the move rather than the weather itself, the effect is not lost if the holder leaves battle or drops this item.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (262, 9, 'Held: Rain Dance by the holder lasts 8 rounds instead of 5.', 'Held: The holder''s Rain Dance will create rain lasting for eight turns rather than five.  As this item affects the move rather than the weather itself, the effect is not lost if the holder leaves battle or drops this item.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (263, 9, 'Held: Holder''s multi-turn trapping moves last 5 turns.', 'Held: Increases the duration of the holder''s multiturn (2-5 turn) moves by three turns.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (264, 9, 'Held: Increases Speed by 50%, but restricts the holder to only one move.', 'Held: Increases the holder''s Speed by 50%, but restricts it to the first move it uses until it leaves battle or loses this item.  If this item is swapped for another Choice item via Trick or Switcheroo, the holder''s restriction is still lifted, but it will again be restricted to the next move it uses.
(Quirk: If the holder is switched in by U-Turn and it also knows U-Turn, U-Turn becomes its restricted move.)');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (265, 9, 'Held: Holder takes 1/8 (12.5%) its max HP at the end of each turn. When the holder is hit by a contact move, the attacking Pokémon takes 1/8 its max HP in damage and receive the item if not holding one.', 'Held: Damaged the holder for 1/8 its max HP.  When the holder is struck by a contact move, damages the attacker for 1/8 its max HP; if the attacker is not holding an item, it will take this item.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (266, 9, 'Held: Holder gains 4 Attack effort values, but has halved Speed in battle.', 'Held: Decreases the holder''s Speed by 50%.  Whenever the holder gains Attack effort from battle, increases that effort by 4; this applies before the PokéRUS doubling effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (267, 9, 'Held: Holder gains 4 Defense effort values, but has halved Speed in battle.', 'Held: Decreases the holder''s Speed by 50%.  Whenever the holder gains Defense effort from battle, increases that effort by 4; this applies before the PokéRUS doubling effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (268, 9, 'Held: Holder gains 4 Special Attack effort values, but has halved Speed in battle.', 'Held: Decreases the holder''s Speed by 50%.  Whenever the holder gains Special Attack effort from battle, increases that effort by 4; this applies before the PokéRUS doubling effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (269, 9, 'Held: Holder gains 4 Special Defense effort values, but has halved Speed in battle.', 'Held: Decreases the holder''s Speed by 50%.  Whenever the holder gains Special Defense effort from battle, increases that effort by 4; this applies before the PokéRUS doubling effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (270, 9, 'Held: Holder gains 4 Speed effort values, but has halved Speed in battle.', 'Held: Decreases the holder''s Speed by 50%.  Whenever the holder gains Speed effort from battle, increases that effort by 4; this applies before the PokéRUS doubling effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (271, 9, 'Held: Holder gains 4 HP effort values, but has halved Speed in battle.', 'Held: Decreases the holder''s Speed by 50%.  Whenever the holder gains HP effort from battle, increases that effort by 4; this applies before the PokéRUS doubling effect.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (272, 9, 'Held: Holder can bypass all trapping effects and switch out. Multi-turn moves still cannot be switched out of.', 'Held: The holder is unaffected by any moves or abilities that would prevent it from actively leaving battle.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (273, 9, 'Held: Increases HP recovered from draining moves, Ingrain, and Aqua Ring by 3/10 (30%).', 'Held: HP restored from Absorb, Aqua Ring, Drain Punch, Dream Eater, Giga Drain, Ingrain, Leech Life, Leech Seed, and Mega Drain is increased by 30%.  Damage inflicted is not affected.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (274, 9, 'Held: Increases Special Attack by 50%, but restricts the holder to only one move.', 'Held: Increases the holder''s Special Attack by 50%, but restricts it to the first move it uses until it leaves battle or loses this item.  If this item is swapped for another Choice item via Trick or Switcheroo, the holder''s restriction is still lifted, but it will again be restricted to the next move it uses.
(Quirk: If the holder is switched in by U-Turn and it also knows U-Turn, U-Turn becomes its restricted move.)');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (275, 9, 'Held: Fire-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Fire.', 'Held: Increases the power of the holder''s Fire moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Fire.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (276, 9, 'Held: Water-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Water.', 'Held: Increases the power of the holder''s Water moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Water.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (277, 9, 'Held: Electric-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Electric.', 'Held: Increases the power of the holder''s Electric moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Electric.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (278, 9, 'Held: Grass-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Grass.', 'Held: Increases the power of the holder''s Grass moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Grass.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (279, 9, 'Held: Ice-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Ice.', 'Held: Increases the power of the holder''s Ice moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Ice.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (280, 9, 'Held: Fighting-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Fighting.', 'Held: Increases the power of the holder''s Fighting moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Fighting.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (281, 9, 'Held: Posion-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Posion.', 'Held: Increases the power of the holder''s Poison moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Poison.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (282, 9, 'Held: Ground-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Ground.', 'Held: Increases the power of the holder''s Ground moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Ground.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (283, 9, 'Held: Flying-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Flying.', 'Held: Increases the power of the holder''s Flying moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Flying.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (284, 9, 'Held: Psychic-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Psychic.', 'Held: Increases the power of the holder''s Psychic moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Psychic.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (285, 9, 'Held: Bug-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Bug.', 'Held: Increases the power of the holder''s Bug moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Bug.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (286, 9, 'Held: Rock-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Rock.', 'Held: Increases the power of the holder''s Rock moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Rock.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (287, 9, 'Held: Ghost-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Ghost.', 'Held: Increases the power of the holder''s Ghost moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Ghost.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (288, 9, 'Held: Dragon-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Dragon.', 'Held: Increases the power of the holder''s Dragon moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Dragon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (289, 9, 'Held: Dark-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Dark.', 'Held: Increases the power of the holder''s Dark moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Dark.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (290, 9, 'Held: Steel-Type moves from holder do 20% more damage. Changes Arceus''s and Judgment''s type to Steel.', 'Held: Increases the power of the holder''s Steel moves by 20%.
Held by a Multitype Pokémon: Holder''s type becomes Steel.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (291, 9, 'Held: Psychic-Type moves from holder do 20% more damage. Breeding: Mr. Mime begets a Mime Jr. Egg.', 'Held: Increases the power of the holder''s Psychic moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (292, 9, 'Held: Rock-Type moves from holder do 20% more damage. Breeding: Sudowoodo begets a Bonsly Egg.', 'Held: Increases the power of the holder''s Rock moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (293, 9, 'Held: Holder moves last in its priority bracket. Breeding: Snorlax begets a Munchlax Egg.', 'Held: The holder will go last within its move''s priority bracket, regardless of Speed.  If multiple Pokémon within the same priority bracket are subject to this effect, the slower Pokémon will go first.  The holder will move after Pokémon with Stall.  If the holder has Stall, Stall is ignored.  This item ignores Trick Room.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (294, 9, 'Held: Water-Type moves from holder do 20% more damage. Breeding: Mantine begets a Mantyke Egg.', 'Held: Increases the power of the holder''s Water moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (295, 9, 'Held: Grass-Type moves from holder do 20% more damage. Breeding: Roselia or Roserade beget a Budew Egg.', 'Held: Increases the power of the holder''s Grass moves by 20%.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (296, 9, 'Held: Doubles the money earned from a battle. Does not stack with Amulet Coin. Breeding: Chansey and Blissey beget a Happiny Egg.', 'Held: Doubles the money the trainer receives after an in-game trainer battle.  This effect cannot apply more than once to the same battle.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (297, 9, 'Prevents wild encounters of level lower than your party''s lead Pokémon. Breeding: Chimecho begets a Chingling Egg.', 'Held by lead Pokémon: Prevents wild battles with Pokémon that are lower level than the holder.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (298, 9, 'Traded on a Rhydon: Holder evolves into Rhyperior.', 'Held by Rhydon: Evolves the holder into Rhyperior when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (299, 9, 'Traded on an Electabuzz: Holder evolves into Electivire.', 'Held by Electabuzz: Evolves the holder into Electivire when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (300, 9, 'Traded on a Magmar: Holder evolves into Magmortar.', 'Held by Magmar: Evolves the holder into Magmortar when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (301, 9, 'Traded on a Porygon2: Holder evolves into Porygon-Z.', 'Held by Porygon2: Evolves the holder into Porygon-Z when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (302, 9, 'Traded on a Dusclops: Holder evolves into Dusknoir.', 'Held by Dusclops: Evolves the holder into Dusknoir when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (303, 9, 'Held: Raises the holder''s critical hit ratio by one stage. Held by a Sneasel while levelling up at night: Holder evolves into Weavile.', 'Held: Raises the holder''s critical hit counter by 1.
Held by Sneasel: Evolves the holder into Weavile when it levels up during the night.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (304, 9, 'Held: Damaging moves gain a 10% chance to make their target flinch. Held by a Gligar while levelling up: Holder evolves into Gliscor.', 'Held: When the holder attacks with most damaging moves, provides an extra 11.7% (30/256) chance for the target to flinch.
Held by Gligar: Evolves the holder into Gliscor when it levels up.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (305, 9, 'Teaches Hone Claws to a compatible Pokémon. (Gen IV & III: Focus Punch Gen II: DynamicPunch Gen I: Mega Punch)', 'Teaches Focus Punch to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (306, 9, 'Teaches Dragon Claw to a compatible Pokémon. (Gen II: Headbutt Gen I: Razor Wind)', 'Teaches Dragon Claw to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (307, 9, 'Teaches Psyshock to a compatible Pokémon. (Gen IV & III: Water Pulse Gen II: Curse Gen I: Swords Dance)', 'Teaches Water Pulse to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (308, 9, 'Teaches Calm Mind to a compatible Pokémon. (Gen II: Rollout Gen I: Whirlwind)', 'Teaches Calm Mind to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (309, 9, 'Teaches Roar to a compatible Pokémon. (Gen I: Mega Kick)', 'Teaches Roar to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (310, 9, 'Teaches Toxic to a compatible Pokémon.', 'Teaches Toxic to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (311, 9, 'Teaches Hail to a compatible Pokémon. (Gen II: Zap Cannon Gen I: Horn Drill)', 'Teaches Hail to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (312, 9, 'Teaches Bulk Up to a compatible Pokémon. (Gen II: Rock Smash Gen I: Body Slam)', 'Teaches Bulk Up to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (313, 9, 'Teaches Venoshock to a compatible Pokémon. (Gen IV & III: Bullet Seed Gen II: Psych Up Gen I: Take Down)', 'Teaches Bullet Seed to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (314, 9, 'Teaches Hidden Power to a compatible Pokémon. (Gen I: Double-Edge)', 'Teaches Hidden Power to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (315, 9, 'Teaches Sunny Day to a compatible Pokémon. (Gen I: BubbleBeam)', 'Teaches Sunny Day to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (316, 9, 'Teaches Taunt to a compatible Pokémon. (Gen II: Sweet Scent Gen I: Water Gun)', 'Teaches Taunt to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (317, 9, 'Teaches Ice Beam to a compatible Pokémon. (Gen II: Snore)', 'Teaches Ice Beam to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (318, 9, 'Teaches Blizzard to a compatible Pokémon.', 'Teaches Blizzard to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (319, 9, 'Teaches Hyper Beam to a compatible Pokémon.', 'Teaches Hyper Beam to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (320, 9, 'Teaches Light Screen to a compatible Pokémon. (Gen II: Icy Wind Gen I: Pay Day)', 'Teaches Light Screen to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (321, 9, 'Teaches Protect to a compatible Pokémon. (Gen I: Submission)', 'Teaches Protect to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (322, 9, 'Teaches Rain Dance to a compatible Pokémon. (Gen I: Counter)', 'Teaches Rain Dance to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (323, 9, 'Teaches Telekinesis to a compatible Pokémon. (Gen IV & III & II: Giga Drain Gen I: Seismic Toss)', 'Teaches Giga Drain to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (324, 9, 'Teaches Safeguard to a compatible Pokémon. (Gen II: Endure Gen I: Rage)', 'Teaches Safeguard to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (325, 9, 'Teaches Frustration to a compatible Pokémon. (Gen I: Mega Drain)', 'Teaches Frustration to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (326, 9, 'Teaches SolarBeam to a compatible Pokémon.', 'Teaches SolarBeam to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (327, 9, 'Teaches Smack Down to a compatible Pokémon. (Gen IV & III & II: Iron Tail Gen I: Dragon Rage)', 'Teaches Iron Tail to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (328, 9, 'Teaches Thunderbolt to a compatible Pokémon. (Gen II: DragonBreath)', 'Teaches Thunderbolt to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (329, 9, 'Teaches Thunder to a compatible Pokémon.', 'Teaches Thunder to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (330, 9, 'Teaches Earthquake to a compatible Pokémon.', 'Teaches Earthquake to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (331, 9, 'Teaches Return to a compatible Pokémon. (Gen I: Fissure)', 'Teaches Return to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (332, 9, 'Teaches Dig to a compatible Pokémon.', 'Teaches Dig to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (333, 9, 'Teaches Psychic to a compatible Pokémon.', 'Teaches Psychic to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (334, 9, 'Teaches Shadow Ball to a compatible Pokémon. (Gen I: Teleport)', 'Teaches Shadow Ball to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (335, 9, 'Teaches Brick Break to a compatible Pokémon. (Gen II: Mud-Slap Gen I: Mimic)', 'Teaches Brick Break to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (336, 9, 'Teaches Double Team to a compatible Pokémon.', 'Teaches Double Team to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (337, 9, 'Teaches Reflect to a compatible Pokémon. (Gen II: Ice Punch)', 'Teaches Reflect to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (338, 9, 'Teaches Sludge Wave to a compatible Pokémon. (Gen IV & III: Shock Wave Gen II: Swagger Gen I: Bide)', 'Teaches Shock Wave to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (339, 9, 'Teaches Flamethrower to a compatible Pokémon. (Gen II: Sleep Talk Gen I: Metronome)', 'Teaches Flamethrower to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (340, 9, 'Teaches Sludge Bomb to a compatible Pokémon. (Gen I: Selfdestruct)', 'Teaches Sludge Bomb to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (341, 9, 'Teaches Sandstorm to a compatible Pokémon. (Gen I: Egg Bomb)', 'Teaches Sandstorm to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (342, 9, 'Teaches Fire Blast to a compatible Pokémon.', 'Teaches Fire Blast to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (343, 9, 'Teaches Rock Tomb to a compatible Pokémon. (Gen II & I: Swift)', 'Teaches Rock Tomb to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (344, 9, 'Teaches Aerial Ace to a compatible Pokémon. (Gen II: Defense Curl Gen I: Skull Bash)', 'Teaches Aerial Ace to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (345, 9, 'Teaches Torment to a compatible Pokémon. (Gen II: ThunderPunch Gen I: Softboiled)', 'Teaches Torment to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (346, 9, 'Teaches Facade to a compatible Pokémon. (Gen II & I: Dream Eater)', 'Teaches Facade to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (347, 9, 'Teaches Flame Charge to a compatible Pokémon. (Gen IV & III: Secret Power Gen II: Detect Gen I: Sky Attack)', 'Teaches Secret Power to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (348, 9, 'Teaches Rest to a compatible Pokémon.', 'Teaches Rest to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (349, 9, 'Teaches Attract to a compatible Pokémon. (Gen I: Thunder Wave)', 'Teaches Attract to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (350, 9, 'Teaches Thief to a compatible Pokémon. (Gen I: Psywave)', 'Teaches Thief to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (351, 9, 'Teaches Low Sweep to a compatible Pokémon. (Gen IV & III & II: Steel Wing Gen I: Explosion)', 'Teaches Steel Wing to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (352, 9, 'Teaches Round to a compatible Pokémon. (Gen IV & III: Skill Swap Gen II: Fire Punch Gen I: Rock Slide)', 'Teaches Skill Swap to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (353, 9, 'Teaches Echoed Voice to a compatible Pokémon. (Gen IV & III: Snatch Gen II: Fury Cutter Gen I: Tri Attack)', 'Teaches Snatch to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (354, 9, 'Teaches Overheat to a compatible Pokémon. (Gen II: Nightmare Gen I: Substitute)', 'Teaches Overheat to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (355, 9, 'Teaches Ally Switch to a compatible Pokémon. (Gen IV: Roost)', 'Teaches Roost to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (356, 9, 'Teaches Focus Blast to a compatible Pokémon.', 'Teaches Focus Blast to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (357, 9, 'Teaches Energy Ball to a compatible Pokémon.', 'Teaches Energy Ball to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (358, 9, 'Teaches False Swipe to a compatible Pokémon.', 'Teaches False Swipe to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (359, 9, 'Teaches Scald to a compatible Pokémon. (Gen IV: Brine)', 'Teaches Brine to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (360, 9, 'Teaches Fling to a compatible Pokémon.', 'Teaches Fling to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (361, 9, 'Teaches Charge Beam to a compatible Pokémon.', 'Teaches Charge Beam to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (362, 9, 'Teaches Sky Drop to a compatible Pokémon. (Gen IV: Endure)', 'Teaches Endure to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (363, 9, 'Teaches Incinerate to a compatible Pokémon. (Gen IV: Dragon Pulse)', 'Teaches Dragon Pulse to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (364, 9, 'Teaches Quash to a compatible Pokémon. (Gen IV: Drain Punch)', 'Teaches Drain Punch to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (365, 9, 'Teaches Will-O-Wisp to a compatible Pokémon.', 'Teaches Will-O-Wisp to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (366, 9, 'Teaches Acrobatics to a compatible Pokémon. (Gen IV: Silver Wind)', 'Teaches Silver Wind to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (367, 9, 'Teaches Embargo to a compatible Pokémon.', 'Teaches Embargo to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (368, 9, 'Teaches Explosion to a compatible Pokémon.', 'Teaches Explosion to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (369, 9, 'Teaches Shadow Claw to a compatible Pokémon.', 'Teaches Shadow Claw to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (370, 9, 'Teaches Payback to a compatible Pokémon.', 'Teaches Payback to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (371, 9, 'Teaches Retaliate to a compatible Pokémon. (Gen IV: Recycle)', 'Teaches Recycle to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (372, 9, 'Teaches Giga Impact to a compatible Pokémon.', 'Teaches Giga Impact to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (373, 9, 'Teaches Rock Polish to a compatible Pokémon.', 'Teaches Rock Polish to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (374, 9, 'Teaches Flash to a compatible Pokémon.', 'Teaches Flash to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (375, 9, 'Teaches Stone Edge to a compatible Pokémon.', 'Teaches Stone Edge to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (376, 9, 'Teaches Volt Switch to a compatible Pokémon. (Gen IV: Avalanche)', 'Teaches Avalanche to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (377, 9, 'Teaches Thunder Wave to a compatible Pokémon.', 'Teaches Thunder Wave to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (378, 9, 'Teaches Gyro Ball to a compatible Pokémon.', 'Teaches Gyro Ball to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (379, 9, 'Teaches Swords Dance to a compatible Pokémon.', 'Teaches Swords Dance to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (380, 9, 'Teaches Struggle Bug to a compatible Pokémon. (Gen IV: Stealth Rock)', 'Teaches Stealth Rock to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (381, 9, 'Teaches Psych Up to a compatible Pokémon.', 'Teaches Psych Up to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (382, 9, 'Teaches Bulldoze to a compatible Pokémon. (Gen IV: Captivate)', 'Teaches Captivate to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (383, 9, 'Teaches Frost Breath to a compatible Pokémon. (Gen IV: Dark Pulse)', 'Teaches Dark Pulse to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (384, 9, 'Teaches Rock Slide to a compatible Pokémon.', 'Teaches Rock Slide to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (385, 9, 'Teaches X-Scissor to a compatible Pokémon.', 'Teaches X-Scissor to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (386, 9, 'Teaches Dragon Tail to a compatible Pokémon. (Gen IV: Sleep Talk)', 'Teaches Sleep Talk to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (387, 9, 'Teaches Work Up to a compatible Pokémon. (Gen IV: Natural Gift)', 'Teaches Natural Gift to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (388, 9, 'Teaches Poison Jab to a compatible Pokémon.', 'Teaches Poison Jab to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (389, 9, 'Teaches Dream Eater to a compatible Pokémon.', 'Teaches Dream Eater to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (390, 9, 'Teaches Grass Knot to a compatible Pokémon.', 'Teaches Grass Knot to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (391, 9, 'Teaches Swagger to a compatible Pokémon.', 'Teaches Swagger to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (392, 9, 'Teaches Pluck to a compatible Pokémon.', 'Teaches Pluck to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (393, 9, 'Teaches U-turn to a compatible Pokémon.', 'Teaches U-Turn to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (394, 9, 'Teaches Substitute to a compatible Pokémon.', 'Teaches Substitute to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (395, 9, 'Teaches Flash Cannon to a compatible Pokémon.', 'Teaches Flash Cannon to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (396, 9, 'Teaches Trick Room to a compatible Pokémon.', 'Teaches Trick Room to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (397, 9, 'Teaches Cut to a compatible Pokémon.', 'Teaches Cut to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (398, 9, 'Teaches Fly to a compatible Pokémon.', 'Teaches Fly to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (399, 9, 'Teaches Surf to a compatible Pokémon.', 'Teaches Surf to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (400, 9, 'Teaches Strength to a compatible Pokémon.', 'Teaches Strength to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (401, 9, 'Teaches Waterfall to a compatible Pokémon. (HS: Whirlpool DPP: Defog Gen III & II & I: Flash)', 'Teaches Defog to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (402, 9, 'Teaches Dive to a compatible Pokémon. (Gen IV & III: Rock Smash Gen II: Whirlpool)', 'Teaches Rock Smash to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (403, 9, 'Teaches a move to a compatible Pokémon. (Gen IV & III & II: Waterfall)', 'Teaches Waterfall to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (404, 9, 'Teaches a move to a compatible Pokémon. (Gen IV: Rock Climb Gen III: Dive)', 'Teaches Rock Climb to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (405, 9, 'Allows visiting the Underground.', 'Sends the trainer to the Underground.  Only usable outside.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (406, 9, 'Carries coal mine loot.', 'Unused.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (407, 9, 'List of battle types and their rules.', 'Unused.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (408, 9, 'Use to track down rare or shiny Pokémon. 50 steps to recharge.', 'Designates several nearby patches of grass as containing Pokémon, some of which may be special radar-only Pokémon.  Successive uses in a certain way create chains of encounters with the same species; longer chains increase the chance that a shiny Pokémon of that species will appear.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (409, 9, 'Keeps count of Battle Points earned.', 'Tracks Battle Points.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (410, 9, 'Records prior significant activities the player took.', 'Records some of the trainer''s activities for the day.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (411, 9, 'Stores Seals that can be applied to Poké Ball capsules.', 'Contains Seals used for decorating Pokéballs.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (412, 9, 'Holds Pokémon Accessories for use in Contests.', 'Contains Pokémon Accessories.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (413, 9, 'Holds ten Seals for Poké Balls.', 'Unused.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (414, 9, 'Use to record Friend Codes and check your own.', 'Contains friend codes for up to 32 other players, as well as their sprite, gender, and basic statistics for those that have been seen on WFC.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (415, 9, 'Grants access to Valley Windworks.', 'Opens the front door of the Valley Windworks.  Reusable.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (416, 9, 'Trade to Cynthia''s grandmother in Celestic Town for HM04 (Surf).', 'Given to Cynthia''s grandmother to get the Surf HM.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (417, 9, 'Grants access to Galactic HQ in Veilstone City.', 'Grants access to Galactic HQ in Veilstone City.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (418, 9, 'Used to bind Palkia and Dialga.', 'Unused.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (419, 9, 'Use to see the overworld map.', 'Displays a map of the region including the trainer''s position, location names, visited towns, gym locations, and where the trainer has been walking recently.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (420, 9, 'Allows rebattling of on-screen trainers. 100 steps to recharge.', 'Reveals trainers who want a rematch, by showing !! over their heads.  Each use drains the battery; requires 100 steps to charge.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (421, 9, 'Holds coins for the Game Corner.', 'Contains the Coins used by the Game Corner, to a maximum of 50,000.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (422, 9, 'Used to catch Pokémon in bodies of water.', 'Used to find Pokémon on the Old Rod list for an area, which are generally Magikarp or similar.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (423, 9, 'Used to catch Pokémon in bodies of water.', 'Used to find Pokémon on the Good Rod list for an area, which are generally mediocre.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (424, 9, 'Used to catch Pokémon in bodies of water.', 'Used to find Pokémon on the Super Rod list for an area, which are generally the best available there.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (425, 9, 'Used to water berries.', 'Waters Berry plants.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (426, 9, 'Holds Poffins.', 'Contains up to 100 Poffins.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (427, 9, 'Use for fast transit.', 'Increases movement speed outside or in caves.  In high gear, allows the trainer to hop over some rocks and ascend muddy slopes.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (428, 9, 'Opens a locked building in the Lakeside Resort.', 'Opens the locked building in the lakeside resort.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (429, 9, 'Allows access to Seabreak path, Flower Paradise, and Shaymin.', 'Grants access to Flower Paradise and Shaymin.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (430, 9, 'Cures sailor''s son of nightmares in Canalave City.', 'Cures the sailor''s son of his nightmares; no reward, only a side effect of seeing Cresselia.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (431, 9, 'Allows access to Newmoon Island and Darkrai.', 'Provides access to Newmoon Island and Darkrai.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (432, 9, 'Allows entry into the Hall of Origin. Unreleased.', 'Supposedly related to t');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (433, 9, 'Ticket for a ship. (RSE: S.S. Tidal LF: S.S. Anne HG: S.S. Aqua)', 'Allows passage on a ferry.

The same item is used for different ferries between different games.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (434, 9, 'Allows participation in Pokémon Contests.', 'Allows the trainer to enter Contests.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (435, 9, 'Magma is sealed inside.', 'Causes Heatran to appear at Reversal Mountain.

Unused prior to Black and White 2.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (436, 9, 'Given to the trainer''s rival in Jubilife City. Contains Town Maps.', 'Given to the trainer''s rival in Jubilife City.  Contains two Town Maps, one of which is given to the trainer upon delivery.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (437, 9, 'The first of three tickets used to obtain a Pokétch.', 'One of three coupons needed to receive a Pokétch.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (438, 9, 'The second of three tickets used to obtain a Pokétch.', 'One of three coupons needed to receive a Pokétch.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (439, 9, 'The last of three tickets used to obtain a Pokétch.', 'One of three coupons needed to receive a Pokétch.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (440, 9, 'Grants access to the Team Galactic warehouse in Veilstone City.', 'Grants access to the Team Galactic warehouse in Veilstone City.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (441, 9, 'Used to heal the Ampharos at the top of Olivine Lighthouse.', 'Required to cure the Psyducks blocking Route 210 of their chronic headaches.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (442, 9, 'Boosts the damage from Giratina''s Dragon-type and Ghost-type moves by 20%, and transforms it into Origin Forme.', 'Held by :pokemon:`Giratina`
    Holder''s :type:`dragon` and :type:`ghost` moves have 1.2× their base power.

    Holder is in Origin Forme.

This item cannot be held by any Pokémon but Giratina.  When you enter the Union Room or connect to Wi-Fi, this item returns to your bag.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (443, 9, 'Records wireless, Wi-Fi, or Battle Frontier battles, and stores points.', 'Optionally records wireless, Wi-Fi, and Battle Frontier battles.

Tracks Battle Points earned in the Battle Frontier, and stores commemorative prints.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (444, 9, 'Changes an unfrozen Shaymin to Sky Forme in the day.', 'Used by trainer on a :pokemon:`Shaymin`
    Changes the target Shaymin from Land Forme to Sky Forme.

    This item cannot be used on a :mechanic:`frozen` Shaymin or at night.  Sky Forme Shaymin will revert to Land Forme overnight, when frozen, and upon entering a link battle.  This item must be used again to change it back.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (445, 9, 'Gen IV: The key to Rotom''s appliance room. Gen III: The key to Cinnabar Gym.', 'Used by trainer in the Galactic Eterna Building, on the ground floor, to the left of the TV
    Unlocks the secret :pokemon:`Rotom` room, in which there are five appliances which can change Rotom''s form.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (446, 9, 'Holds Apricorns.', 'Stores Apricorns.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (447, 9, 'Allows portable berry growing.', 'Contains four portable pots of soil suitable for growing berries.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (448, 9, 'Use on Sudowoodo blocking the path on Route 36. Also waters berries.', 'Required to water berries within the :item:`Berry Pots`.

Required to battle the :pokemon:`Sudowoodo` on :location:`Route 36`.

This item cannot be directly used from the bag.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (449, 9, '3× effectiveness while fishing. Made from Blu Apricorn.', 'Used by trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.  If used in a trainer battle, nothing happens and the ball is lost.

    If the wild Pokémon was encountered by fishing, the wild Pokémon''s catch rate is 3× normal.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (450, 9, 'Success rate based off of fraction target Pokémon is of user''s Pokémon. Made from Red Apricorn.', 'Used by trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.  If used in a trainer battle, nothing happens and the ball is lost.

    If the trainer''s Pokémon''s level is higher than:
    * four times the wild Pokémon''s, the wild Pokémon''s catch rate is 8× normal.
    * than twice the wild Pokémon''s, the wild Pokémon''s catch rate is 4× normal.
    * the wild Pokémon''s, the wild Pokémon''s catch rate is 2× normal.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (451, 9, '4× effectiveness on familes of Pokémon with a Moon Stone evolution. Made from Ylw Apricorn.', 'Used by trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.  If used in a trainer battle, nothing happens and the ball is lost.

    If the wild Pokémon is a :pokemon:`Clefairy`, :pokemon:`Nidoran?`, :pokemon:`Nidoran?`, :pokemon:`Jigglypuff`, :pokemon:`Skitty`, or any evolution thereof, the wild Pokémon has 4× its catch rate.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (452, 9, 'Has flat bonus or penalty to catch rate depending on weight class of target. Made from Blk Apricorn.', 'Used by a trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.  If used in a trainer battle, nothing happens and the ball is lost.

    If the wild Pokémon weighs:
    * 409.6 kg (903.0 lb) or more, its catch rate is 40 more than normal.
    * 307.2 kg (677.3 lb) or more, its catch rate is 30 more than normal.
    * 204.8 kg (451.5 lb) or more, its catch rate is 20 more than normal.
    * less than 204.8 kg (451.5 lb), its catch rate is 20 less than normal.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (453, 9, '4× effectiveness on Pokémon with 100 or greater base speed. (Gen II: Roaming or Fleeing Pokémon). Made from Wht Apricorn.', 'Used by a trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.  If used in a trainer battle, nothing happens and the ball is lost.

    If the wild Pokémon''s base :mechanic:`Speed` is 100 or more, its catch rate is 4× normal.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (454, 9, 'Caught Pokémon start with 200 happiness. Made from Grn Apricorn.', 'Used by a trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.  If used in a trainer battle, nothing happens and the ball is lost.

    If caught, the wild Pokémon''s :mechanic:`happiness` starts at 200.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (455, 9, '8× effectiveness on opposite sex, same species targets of the Active Pokémon. Made from Pnk Apricorn.', 'Used by a trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.  If used in a trainer battle, nothing happens and the ball is lost.

    If the trainer''s Pokémon and wild Pokémon are of the same species but opposite genders, the wild Pokémon''s catch rate is 8× normal.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (456, 9, 'Catches Pokémon in the Pal Park every time.', 'Used by a trainer in battle
    :mechanic:`Catch`\ es a wild Pokémon.

This item can only be used in :location:`Pal Park`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (457, 9, 'Tries to catch a Pokémon in the Bug-Catching contest in National Park. (Gen II: Park Ball)', 'Used by a trainer in battle
    Attempts to :mechanic:`catch` a wild Pokémon.

    The wild Pokémon''s catch rate is 1.5× normal.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (458, 9, 'Used to make a Level Ball.', 'May be given to Kurt in :location:`Azalea Town` to produce a :item:`Level Ball`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (459, 9, 'Used to make a Lure Ball.', 'May be given to Kurt in :location:`Azalea Town` to produce a :item:`Lure Ball`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (460, 9, 'Used to make a Moon Ball.', 'May be given to Kurt in :location:`Azalea Town` to produce a :item:`Moon Ball`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (461, 9, 'Used to make a Friend Ball.', 'May be given to Kurt in :location:`Azalea Town` to produce a :item:`Friend Ball`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (462, 9, 'Used to make a Love Ball.', 'May be given to Kurt in :location:`Azalea Town` to produce a :item:`Love Ball`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (463, 9, 'Used to make a Fast Ball.', 'May be given to Kurt in :location:`Azalea Town` to produce a :item:`Fast Ball`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (464, 9, 'Used to make a Heavy Ball.', 'May be given to Kurt in :location:`Azalea Town` to produce a :item:`Heavy Ball`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (465, 9, 'Use to find hidden items on the field. AKA Itemfinder.', 'Used by trainer outside of battle
    Searches for hidden items.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (466, 9, 'HS: Traded for TM64. Gen II & Gen V: Acts as a Potion.', 'May be traded for a :item:`TM64` in the vertical Underground Path.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (467, 9, 'Summons Groudon to the Embedded Tower.', 'Causes :pokemon:`Groudon` to appear in the :location:`Embedded Tower`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (468, 9, 'Summons Kyogre to the Embedded Tower.', 'Causes :pokemon:`Kyogre` to appear in the :location:`Embedded Tower`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (469, 9, 'Summons Rayquaza to the Embedded Tower.', 'Causes :pokemon:`Rayquaza` to appear in the :location:`Embedded Tower`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (470, 9, 'S: Summons Latias H: Summons Latios.', 'When taken to the :location:`Pewter City` museum, causes :pokemon:`Latias` or :pokemon:`Latios` to attack the trainer.

The Pokémon to appear will be whicher can''t be encountered roaming in the wild.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (471, 9, 'Keeps track of Unown types caught.', 'Lists which :pokemon:`Unown` forms the trainer has caught.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (472, 9, 'Keeps track of points from Buena''s show.', 'Allows the trainer to answer the daily question on Buena''s radio show.  Records the points earned for correct answers.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (473, 9, 'A tasty tail that sells for a high price.', 'Does nothing.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (474, 9, 'HS: Allows Kimono-girls to summon Ho-oh. C: Summons Suicune to the Tin Tower.', 'May be given to the Kimono Girls to summon :pokemon:`Ho-Oh` to the top of the :location:`Bell Tower`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (475, 9, 'HS: Opens doors in the Radio Tower. Gen III: Unlocks Silph Co Doors.', 'Used by trainer outside of battle
    Opens doors in the :location:`Goldenrod City` Radio Tower.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (476, 9, 'HS: Key to the tunnel under Goldenrod City. Gen III: Key to New Mauville.', 'Used by trainer outside of battle
    Opens the door to the basement tunnel under :location:`Goldenrod City`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (477, 9, 'Trade to Mr. Pokémon for an Exp. Share.', 'May be traded to Mr. Pokémon for an :item:`Exp. Share`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (478, 9, 'A Poké Doll lost by the Copycat who lives in Saffron City. Trade for a Pass.', 'May be traded to the Copycat for a :item:`Pass`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (479, 9, 'Grants access to ride the Magnet Train between Goldenrod City and Saffron City.', 'Allows the trainer to ride the Magnet Train between :location:`Goldenrod City` and :location:`Saffron City`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (480, 9, 'Must be replaced in the Power Plant to power the Magnet Train.', 'Must be replaced in the :location:`Power Plant` to power the Magnet Train.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (481, 9, 'Summons Lugia to the Whirl Islands.', 'Causes :pokemon:`Lugia` to appear in the :location:`Whirl Islands`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (482, 9, 'Summons Ho-Oh at the top of the Bell Tower.', 'Causes :pokemon:`Ho-Oh` to appear at the top of :location:`Bell Tower`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (483, 9, 'Deliver to Professor Elm.', 'Must be obtained to trigger the break-in at Professor Elm''s lab, the first rival battle, and access to :location:`Route 31`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (484, 9, 'Use to listen to GameBoy era audio.', 'Used by trainer outside of battle
    Changes the background music to the equivalent 8-bit music.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (485, 9, 'Allows Kimono-girls to summon Lugia.', 'May be given to the Kimono Girls to summon :pokemon:`Lugia` to the top of the :location:`Bell Tower`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (486, 9, 'Records the number of times the trainer has come in first place overall in the Pokéathlon.', 'Records the number of times the trainer has come in first place overall in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (487, 9, 'Records the number of times the trainer has come in last place overall in the Pokéathlon.', 'Records the number of times the trainer has come in last place overall in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (488, 9, 'Records the number of times the trainer''s Pokémon have dashed in the Pokéathlon.', 'Records the number of times the trainer''s Pokémon have dashed in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (489, 9, 'Records the number of times the trainer''s Pokémon have jumped in the Pokéathlon.', 'Records the number of times the trainer''s Pokémon have jumped in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (490, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Hurdle Dash.', 'Records the number of times the trainer has come in first in the Pokéathlon Hurdle Dash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (491, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Relay Run.', 'Records the number of times the trainer has come in first in the Pokéathlon Relay Run.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (492, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Pennant Capture.', 'Records the number of times the trainer has come in first in the Pokéathlon Pennant Capture.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (493, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Block Smash.', 'Records the number of times the trainer has come in first in the Pokéathlon Block Smash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (494, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Disc Catch.', 'Records the number of times the trainer has come in first in the Pokéathlon Disc Catch.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (495, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Snow Throw.', 'Records the number of times the trainer has come in first in the Pokéathlon Snow Throw.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (496, 9, 'Records the number of points the trainer has earned in the Pokéathlon.', 'Records the number of points the trainer has earned in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (497, 9, 'Records the number of times the trainer''s Pokémon have messed up in the Pokéathlon.', 'Records the number of times the trainer''s Pokémon have messed up in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (498, 9, 'Records the number of times the trainer''s Pokémon have defeated themselves in the Pokéathlon.', 'Records the number of times the trainer''s Pokémon have defeated themselves in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (499, 9, 'Records the number of times the trainer''s Pokémon have tackled in the Pokéathlon.', 'Records the number of times the trainer''s Pokémon have tackled in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (500, 9, 'Records the number of times the trainer''s Pokémon have fallen in the Pokéathlon.', 'Records the number of times the trainer''s Pokémon have fallen in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (501, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Ring Drop.', 'Records the number of times the trainer has come in first in the Pokéathlon Ring Drop.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (502, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Lamp Jump.', 'Records the number of times the trainer has come in first in the Pokéathlon Lamp Jump.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (503, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Circle Push.', 'Records the number of times the trainer has come in first in the Pokéathlon Circle Push.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (504, 9, 'Records the number of times the trainer has come in first place overall in the Pokéathlon over wirelss.', 'Records the number of times the trainer has come in first place overall in the Pokéathlon over wirelss.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (505, 9, 'Records the number of times the trainer has come in last place overall in the Pokéathlon over wireless.', 'Records the number of times the trainer has come in last place overall in the Pokéathlon over wireless.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (506, 9, 'Records the number of times the trainer has come in first across all Pokéathlon events.', 'Records the number of times the trainer has come in first across all Pokéathlon events.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (507, 9, 'Records the number of times the trainer has come in last across all Pokéathlon events.', 'Records the number of times the trainer has come in last across all Pokéathlon events.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (508, 9, 'Records the number of times the trainer has switched Pokémon in the Pokéathlon.', 'Records the number of times the trainer has switched Pokémon in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (509, 9, 'Records the number of times the trainer has come in first in the Pokéathlon Goal Roll.', 'Records the number of times the trainer has come in first in the Pokéathlon Goal Roll.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (510, 9, 'Records the number of times the trainer''s Pokémon received prizes in the Pokéathlon.', 'Records the number of times the trainer''s Pokémon received prizes in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (511, 9, 'Records the number of times the trainer has instructed Pokémon in the Pokéathlon.', 'Records the number of times the trainer has instructed Pokémon in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (512, 9, 'Records the total time spent in the Pokéathlon.', 'Records the total time spent in the Pokéathlon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (513, 9, 'Contains TM95 (Snarl).', 'Does nothing.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (514, 9, 'Stores photos from your adventure.', 'Does nothing.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (515, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (516, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (517, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (518, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (519, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (520, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (521, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (522, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (523, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (524, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (525, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (526, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (527, 9, 'Faster than the Acro Bike, and can ride up sandy slopes and across cracked floors.', 'Increases movement speed outside or in caves.  Faster than the :item:`Acro Bike`.  Allows the trainer to ascend muddy slopes.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (528, 9, 'More maneuverable than the Mach Bike, and allows hopping along rails.', 'Increases movement speed outside or in caves.  Slower than the :item:`Mach Bike`.  Can perform various tricks, allowing the trainer to reach certain special areas.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (529, 9, 'Used to water berries.', 'Waters Berry plants.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (530, 9, 'Contains mechanical parts to be delivered to Captain Stern.', 'Contains a machine part to be delivered to Captain Stern.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (531, 9, 'Stores volcanic ash from Route 113.', 'Collects soot when walking through tall grass on :location:`Route 113`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (532, 9, 'Holds Pokéblocks.', 'Stores Pokéblocks.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (533, 9, 'A letter to Steven from the Devon Corp president.', 'Contains a letter to be delivered to Steven.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (534, 9, 'Provides access to Southern Island and Latias or Latios.', 'Provides access to :location:`Southern Island` and either :pokemon:`Latias` or :pokemon:`Latios`, whichever is not available roaming around Hoenn.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (535, 9, 'Trade to Captain Stern for a DeepSeaTooth or DeepSeaScale.', 'May be traded to Captain Stern for a :item:`DeepSeaTooth` or a :item:`DeepSeaScale`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (536, 9, 'Allows passage through windy deserts.', 'Allows the trainer to enter the desert on :location:`Route 111`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (537, 9, 'FL: Deliver to Lostelle''s father. RSE: Trade to Professor Cozmo for TM27 (Return).', 'RSE: May be traded to Professor Cozmo for :item:`TM27`.

FRLG: A meteorite to be delivered to Lostelle''s father.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (538, 9, 'Unlocks room 1 on the Abandoned Ship.', 'Unlocks room 1 on the :location:`Abandoned Ship`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (539, 9, 'Unlocks room 2 on the Abandoned Ship.', 'Unlocks room 2 on the :location:`Abandoned Ship`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (540, 9, 'Unlocks room 4 on the Abandoned Ship.', 'Unlocks room 4 on the :location:`Abandoned Ship`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (541, 9, 'Unlocks room 6 on the Abandoned Ship.', 'Unlocks room 6 on the :location:`Abandoned Ship`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (542, 9, 'Allows spotting of invisible Kecleon.', 'Reveals invisble :pokemon:`Kecleon` on the overworld.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (543, 9, 'Trade to Prof. Oak for a Pokédex.', 'A parcel to be delivered to Professor Oak for a Pokédex.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (544, 9, 'Use to awaken sleeping Pokémon, including Snorlax on roads.', 'Wakes up :mechanic:`sleeping` Pokémon.  Required to wake up sleeping :pokemon:`Snorlax` on the overworld.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (545, 9, 'Trade in Cerulean bike shop for a Bicycle.', 'May be traded for a :item:`Bicycle`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (546, 9, 'The Safari Zone Warden''s dentures. Trade for HM04 (Strength).', 'The Safari Zone warden''s teeth, to be returned to him for :item:`HM04`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (547, 9, 'Operates the elevator in Team Rocket''s Celadon Hideout.', 'Operates the elevator in the Celadon Rocket Hideout.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (548, 9, 'Used to identify the true forms of ghosts in Pokémon Tower.', 'Identifies ghosts in :location:`Pokémon Tower`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (549, 9, 'Records information about NPCs.', 'Records information on various famous people.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (550, 9, 'Holds TMs.', 'Stores TMs and HMs.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (551, 9, 'Holds berries.', 'Stores Berries.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (552, 9, 'Teachers basic trainer advice.', 'Teaches beginning trainers basic information.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (553, 9, 'Grants access to the first three Sevii Islands.', 'Provides access to the first three Sevii Islands.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (554, 9, 'Grants access to all of the Sevii Islands.', 'Provides access to the Sevii Islands.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (555, 9, 'Grants access to Saffron City.', 'Used to bribe the :location:`Saffron City` guards for entry to the city.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (556, 9, 'Allows access to Navel Rock and Lugia or Ho-oh.', 'Provides access to :location:`Navel Rock`, :pokemon:`Ho-Oh`, and :pokemon:`Lugia`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (557, 9, 'Allows access to Birth Island and Deoxys.', 'Provides access to :location:`Birth Island` and :pokemon:`Deoxys`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (558, 9, 'Stores Berry Powder made using a Berry Crusher.', 'Holds Berry Powder from Berry Crushing.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (559, 9, 'Give to Celio with Sapphire to activate Network Machine and get Rainbow Pass.', 'Deliver to Celio for use in the Network Machine.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (560, 9, 'Give to Celio with Ruby to activate Network Machine and get Rainbow Pass.', 'Deliver to Celio for use in the Network Machine.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (561, 9, 'Provides access to the Team Magma Hideout in the Jagged Pass.', 'Provides access to the :location:`Team Magma Hideout` in the :location:`Jagged Pass`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (562, 9, 'Allows access to Faraway Island and Mew. Unreleased outside of Japan.', 'Provides access to :location:`Faraway Island` and :pokemon:`Mew`.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (563, 9, 'Grants Genesect a blue, Water-type Techno Blast.', 'Held by []{pokemon:genesect}
:   Holder''s buster is blue, and its []{move:techno-blast} is []{type:water}-type.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (564, 9, 'Grants Genesect a yellow, Electric-type Techno Blast.', 'Held by []{pokemon:genesect}
:   Holder''s buster is yellow, and its []{move:techno-blast} is []{type:electric}-type.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (565, 9, 'Grants Genesect a red, Fire-type Techno Blast.', 'Held by []{pokemon:genesect}
:   Holder''s buster is red, and its []{move:techno-blast} is []{type:fire}-type.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (566, 9, 'Grants Genesect a white, Ice-type Techno Blast.', 'Held by []{pokemon:genesect}
:   Holder''s buster is white, and its []{move:techno-blast} becomes []{type:ice}-type.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (567, 9, 'Restores 20 HP.', 'Used on a friendly Pokémon
:   Restores 20 [HP]{mechanic:hp}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (568, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (569, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (570, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (571, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (572, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (573, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (574, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (575, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (576, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (577, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (578, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (579, 9, 'Lets a Trainer write a message and send it via Pokémon trade.', 'Used to send short messages to other players via Pokémon trading.  Trainer may compose a message from a finite list of words when giving this item to a Pokémon.  Once taken and read, a message may be erased and this item can be reused, or the message may be stored in the trainer''s PC.

Held
:   Holder cannot be placed in the PC.  Any move attempting to remove this item from the holder will fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (580, 9, 'Traded on a Feebas: Holder evolves into Milotic.', 'Held by []{pokemon:feebas}
:   Holder evolves into []{pokemon:milotic} when traded.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (581, 9, 'Held: Holder has 1.5× Defense and Special Defense, as long as it''s not fully evolved.', 'Held by a Pokémon that is not fully evolved
:   Holder has 1.5× [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (582, 9, 'Held: Holder has 0.5× weight.', 'Held
:   Holder has 0.5× weight.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (583, 9, 'Held: When the holder is hit by a contact move, the attacking Pokémon takes 1/6 its max HP in damage.', 'Held
:   When the holder is hit by a [contact]{mechanic:contact} move, the attacking Pokémon takes 1/6 its max [HP]{mechanic:hp} in damage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (584, 9, 'Held: Grants immunity to Ground-type moves, Spikes, and Toxic Spikes. Consumed when the holder takes damage from a move.', 'Held
:   Holder is immune to []{type:ground}-type moves, []{move:spikes}, []{move:toxic-spikes}, and []{ability:arena-trap}.

    This effect does not apply during []{move:gravity} or []{move:ingrain}.

    When the holder takes damage from a move, this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (585, 9, 'Held: When the holder takes damage from a move, the opponent switches out for another random party Pokémon. Consumed after use.', 'Held
:   When the holder takes damage directly from a move and does not faint, it [switches out]{mechanic:switching-out} for another random, non-fainted Pokémon in its party.
This effect does not activate if another effect prevents the holder from switching out.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (586, 9, 'Held: Negates the holder''s type immunities. Ability immunities are not removed.', 'Held
:   When one of the user''s types would render it immune to damage, that type is ignored for damage calculation.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (587, 9, 'Held: Doubles the per-turn damage of multi-turn trapping moves.', 'Held
:   Moves used by the holder that trap and damage a target for multiple turns (e.g. []{move:bind}, []{move:fire-spin}) inflict twice their usual per-turn damage.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (588, 9, 'Held: Raises the holder''s Special Attack by one stage when it takes Water-type damage.', 'Held
:   When the holder takes []{type:water}-type damage from a move, its [Special Attack]{mechanic:special-attack} rises by one [stage]{mechanic:stage} and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (589, 9, 'Held: Raises the holder''s Attack by one stage when it takes Electric-type damage.', 'Held
:   When the holder takes []{type:electric}-type damage from a move, its [Attack]{mechanic:attack} rises by one [stage]{mechanic:stage} and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (590, 9, 'Held: When the holder takes damage from a move, it switches out for a party Pokémon of the Trainer''s choice.', 'Held
:   When the holder takes damage directly from a move and does not faint, it [switches out]{mechanic:switching-out} for another non-fainted Pokémon in its party, as chosen by the Trainer.
This effect does not activate if another effect prevents the holder from switching out.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (591, 9, 'Held: When the holder uses a damaging []{type:fire}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:fire}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (592, 9, 'Held: When the holder uses a damaging []{type:water}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:water}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (593, 9, 'Held: When the holder uses a damaging []{type:electric}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:electric}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (594, 9, 'Held: When the holder uses a damaging []{type:grass}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:grass}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (595, 9, 'Held: When the holder uses a damaging []{type:ice}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:ice}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (596, 9, 'Held: When the holder uses a damaging []{type:fighting}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:fighting}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (597, 9, 'Held: When the holder uses a damaging []{type:poison}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:poison}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (598, 9, 'Held: When the holder uses a damaging []{type:ground}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:ground}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (599, 9, 'Held: When the holder uses a damaging []{type:flying}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:flying}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (600, 9, 'Held: When the holder uses a damaging []{type:psychic}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:psychic}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (601, 9, 'Held: When the holder uses a damaging []{type:bug}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:bug}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (602, 9, 'Held: When the holder uses a damaging []{type:rock}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:rock}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (603, 9, 'Held: When the holder uses a damaging []{type:ghost}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:ghost}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (604, 9, 'Held: When the holder uses a damaging []{type:dark}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:dark}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (605, 9, 'Held: When the holder uses a damaging []{type:steel}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:steel}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (606, 9, 'Increases [HP]{mechanic:hp} [effort]{mechanic:effort} by 1.', 'Used on a party Pokémon
:   Increases the target''s [HP]{mechanic:hp} [effort]{mechanic:effort} by 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (607, 9, 'Increases [Attack]{mechanic:attack} [effort]{mechanic:effort} by 1.', 'Used on a party Pokémon
:   Increases the target''s [Attack]{mechanic:attack} [effort]{mechanic:effort} by 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (608, 9, 'Increases [Defense]{mechanic:defense} [effort]{mechanic:effort} by 1.', 'Used on a party Pokémon
:   Increases the target''s [Defense]{mechanic:defense} [effort]{mechanic:effort} by 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (609, 9, 'Increases [Special Attack]{mechanic:special-attack} [effort]{mechanic:effort} by 1.', 'Used on a party Pokémon
:   Increases the target''s [Special Attack]{mechanic:special-attack} [effort]{mechanic:effort} by 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (610, 9, 'Increases [Special Defense]{mechanic:special-defense} [effort]{mechanic:effort} by 1.', 'Used on a party Pokémon
:   Increases the target''s [Special Defense]{mechanic:special-defense} [effort]{mechanic:effort} by 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (611, 9, 'Increases [Speed]{mechanic:speed} [effort]{mechanic:effort} by 1.', 'Used on a party Pokémon
:   Increases the target''s [Speed]{mechanic:speed} [effort]{mechanic:effort} by 1.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (612, 9, 'Sell for 100 Pokédollars.', 'Vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (613, 9, 'Can be revived into a []{pokemon:tirtouga}.', 'Give to a scientist in a museum to receive a []{pokemon:tirtouga}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (614, 9, 'Can be revived into a []{pokemon:archen}.', 'Give to a scientist in a museum to receive a []{pokemon:archen}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (615, 9, 'Allows access to Liberty Garden and Victini.', 'Allows passage on the []{location:castelia-city} ship, which leads to []{location:liberty-garden} and []{pokemon:victini}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (616, 9, 'Activates Pass Powers.', 'Acts as currency to activate Pass Powers in the Entralink.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (617, 9, 'Catches Pokémon found in the Dream World.', 'Can only be used in Entree Forest, to catch Pokémon encountered in the Dream World.

Used in battle
:   [Catches]{mechanic:catch} a wild Pokémon without fail.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (618, 9, 'Ends a wild battle.', 'Used in battle
:   Ends a wild battle.  Cannot be used in trainer battles.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (619, 9, 'Stores props for the Pokémon Musical.', 'Stores props for the Pokémon Musical.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (620, 9, 'Return to the museum in Nacrene City.', 'Only used as a plot point; this item is given to the player and taken away in the same cutscene.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (621, 9, 'Sell to Hungry Maid for 25000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (622, 9, 'Sell to Ore Collector for 30000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (623, 9, 'Sell to Ore Collector for 25000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (624, 9, 'Sell to Ore Collector for 60000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (625, 9, 'Sell to Villa Owner for 1000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (626, 9, 'Sell to Villa Owner 5000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (627, 9, 'Sell to Villa Owner 10000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (628, 9, 'Sell to Villa Owner 50000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (629, 9, 'Sell to Villa Owner for 100000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (630, 9, 'Sell to Villa Owner 200000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (631, 9, 'Sell to Villa Owner for 300000 Pokédollars.', 'Cult vendor trash.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (632, 9, 'Cures any status ailment and confusion.', 'Used on a party Pokémon
:   Cures any [status ailment]{mechanic:status-ailment} and [confusion]{mechanic:confusion}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (633, 9, 'Raises [critical hit]{mechanic:critical-hit} rate by two [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [critical hit]{mechanic:critical-hit} rate by two [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (634, 9, 'Raises [Speed]{mechanic:speed} by two [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Speed]{mechanic:speed} by two [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (635, 9, 'Raises [Special Attack]{mechanic:special-attack} by two [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Special Attack]{mechanic:special-attack} by two [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (636, 9, 'Raises [Special Defense]{mechanic:special-defense} by two [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Special Defense]{mechanic:special-defense} by two [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (637, 9, 'Raises [Defense]{mechanic:defense} by two [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Defense]{mechanic:defense} by two [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (638, 9, 'Raises [Attack]{mechanic:attack} by two [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Attack]{mechanic:attack} by two [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (639, 9, 'Raises [accuracy]{mechanic:accuracy} by two [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [accuracy]{mechanic:accuracy} by two [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (640, 9, 'Raises [Speed]{mechanic:speed} by three [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Speed]{mechanic:speed} by three [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (641, 9, 'Raises [Special Attack]{mechanic:special-attack} by three [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Special Attack]{mechanic:special-attack} by three [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (642, 9, 'Raises [Special Defense]{mechanic:special-defense} by three [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Special Defense]{mechanic:special-defense} by three [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (643, 9, 'Raises [Defense]{mechanic:defense} by three [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Defense]{mechanic:defense} by three [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (644, 9, 'Raises [Attack]{mechanic:attack} by three [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Attack]{mechanic:attack} by three [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (645, 9, 'Raises [accuracy]{mechanic:accuracy} by three [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [accuracy]{mechanic:accuracy} by three [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (646, 9, 'Raises [Speed]{mechanic:speed} by six [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Speed]{mechanic:speed} by six [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (647, 9, 'Raises [Special Attack]{mechanic:special-attack} by six [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Special Attack]{mechanic:special-attack} by six [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (648, 9, 'Raises [Special Defense]{mechanic:special-defense} by six [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Special Defense]{mechanic:special-defense} by six [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (649, 9, 'Raises [Defense]{mechanic:defense} by six [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Defense]{mechanic:defense} by six [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (650, 9, 'Raises [Attack]{mechanic:attack} by six [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [Attack]{mechanic:attack} by six [stages]{mechanic:stage}.

This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (651, 9, 'Raises [accuracy]{mechanic:accuracy} by six [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [accuracy]{mechanic:accuracy} by six [stages]{mechanic:stage}.

This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (652, 9, 'Forcibly activates a friendly Pokémon''s ability.', 'Used on a party Pokémon in battle
:   Selects another friendly Pokémon at random.  If that Pokémon''s ability is normally activated by some condition—i.e., is not continuous and passive—its effect is forcibly activated.

This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (653, 9, 'Forces a friendly Pokémon to drop its held item.', 'Used on a party Pokémon in battle
:   Selects another friendly Pokémon at random.  If that Pokémon is holding an item, that item is removed for the duration of the battle.

This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (654, 9, 'Forcibly activates a friendly Pokémon''s held item.', 'Used on a party Pokémon in battle
:   Selects another friendly Pokémon at random.  If that Pokémon is holding an item normally activated by some condition—i.e., not continuous and passive—its effect is forcibly activated.

This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (655, 9, 'Resets a friendly Pokémon''s stat changes.', 'Used on a party Pokémon in battle
:   Selects another friendly Pokémon at random.  Removes all of that Pokémon''s stat changes.

This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (656, 9, 'Raises [critical hit]{mechanic:critical-hit} rate by three [stages]{mechanic:stage} in battle.  Wonder Launcher only.', 'Used on a party Pokémon in battle
:   Raises the target''s [critical hit]{mechanic:critical-hit} rate by three [stages]{mechanic:stage}.
This item can only be obtained or used via the Wonder Launcher.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (657, 9, 'Summons Reshiram for the final battle against N.', 'Summons []{pokemon:reshiram} for the final battle against N.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (658, 9, 'Summons Zekrom for the final battle against N.', 'Summons []{pokemon:zekrom} for the final battle against N.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (659, 9, 'Teaches Wild Charge to a compatible Pokémon.', 'Teaches []{move:wild-charge} to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (660, 9, 'Teaches Rock Smash to a compatible Pokémon.', 'Teaches []{move:rock-smash} to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (661, 9, 'Teaches Snarl to a compatible Pokémon.', 'Teaches []{move:snarl} to a compatible Pokémon.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (662, 9, 'Makes four-way video calls.', 'Makes four-way video calls.  Used for plot advancement in-game, but also works with other players via the C-Gear.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (663, 9, 'Unknown.  Currently unused.', 'Unknown.  Currently unused.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (664, 9, 'Part of a sidequest to obtain []{item:tm89}.', 'Give to the []{pokemon:wingull} on []{location:unova-route-13}, along with []{item:gram-2} and []{item:gram-3}, to receive []{item:tm89}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (665, 9, 'Part of a sidequest to obtain []{item:tm89}.', 'Give to the []{pokemon:wingull} on []{location:unova-route-13}, along with []{item:gram-1} and []{item:gram-3}, to receive []{item:tm89}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (666, 9, 'Part of a sidequest to obtain []{item:tm89}.', 'Give to the []{pokemon:wingull} on []{location:unova-route-13}, along with []{item:gram-1} and []{item:gram-2}, to receive []{item:tm89}.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (668, 9, 'Held: When the holder uses a damaging []{type:dragon}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:dragon}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (669, 9, 'Held: When the holder uses a damaging []{type:normal}-type move, the move has 1.5× power and this item is consumed.', 'Held
:   When the holder uses a damaging []{type:normal}-type move, the move has 1.5× power and this item is consumed.');
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (670, 9, 'Holds medals recieved in the medal rally.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (671, 9, 'Fuses Kyurem with Reshiram or Zekrom, or splits them apart again.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (673, 9, 'Grants access to the Nature Preserve.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (674, 9, 'Doubles the chance of two Pokémon producing an egg at the daycare every 255 steps.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (675, 9, 'Raises the chance of finding a shiny Pokémon.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (676, 9, 'Required to progress in the Plasma Frigate.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (677, 9, 'Appears in the Café Warehouse on Sunday; return to the customer with a Patrat on Thursday.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (678, 9, 'Wakes up the Crustle blocking the way in Seaside Cave.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (679, 9, 'Returned to Curtis or Yancy as part of a sidequest.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (681, 9, 'Switches Tornadus, Thundurus, and Landorus between Incarnate and Therian Forme.', null);
INSERT INTO [item_prose] ([item_id], [local_language_id], [short_effect], [effect]) VALUES (1, 10, null, 'B?hem zápasu: Chytí jednoho Pokémona, bez možnosti neúsp?chu. Má stupe? chytitelnosti 255.');
