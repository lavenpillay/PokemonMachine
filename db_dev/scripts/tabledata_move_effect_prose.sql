BEGIN TRANSACTION;
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('1', '9', 'Inflicts regular damage with no additional effect.', 'Inflicts [regular damage]{mechanic:regular-damage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('2', '9', 'Puts the target to sleep.', 'Puts the target to [sleep]{mechanic:sleep}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('3', '9', 'Has a $effect_chance% chance to [poison]{mechanic:poison} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [poison]{mechanic:poison} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('4', '9', 'Drains half the damage inflicted to heal the user.', 'Inflicts [regular damage]{mechanic:regular-damage}.  [Drains]{mechanic:drain} half the damage inflicted to heal the user.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('5', '9', 'Has a $effect_chance% chance to [burn]{mechanic:burn} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [burn]{mechanic:burn} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('6', '9', 'Has a $effect_chance% chance to [freeze]{mechanic:freeze} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [freeze]{mechanic:freeze} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('7', '9', 'Has a $effect_chance% chance to [paralyze]{mechanic:paralysis} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [paralyze]{mechanic:paralyze} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('8', '9', 'User faints.', 'User [faint]{mechanic:faint}s, even if the attack [fail]{mechanic:fail}s or [miss]{mechanic:miss}es.  Inflicts [regular damage]{mechanic:regular-damage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('9', '9', 'Only works on sleeping Pokémon.  Drains half the damage inflicted to heal the user.', '[Fails]{mechanic:fail} if not used on a [sleep]{mechanic:sleep}ing Pokémon.  Inflicts [regular damage]{mechanic:regular-damage}.  [Drains]{mechanic:drain} half the damage inflicted to heal the user.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10', '9', 'Uses the target''s last used move.', 'Uses the last move targeted at the user by a Pokémon still on the [field]{mechanic:field}.  A move counts as targeting the user even if it hit multiple Pokémon, as long as the user was one of them; however, moves targeting the [field]{mechanic:field} itself do not count.  If the user has not been targeted by an appropriate move since entering the [field]{mechanic:field}, or if no Pokémon that targeted the user remains on the [field]{mechanic:field}, this move will [fail]{mechanic:fail}.

Moves that [fail]{mechanic:fail}ed, [miss]{mechanic:miss}ed, had [no effect]{mechanic:no-effect}, or were [block]{mechanic:block}ed are still copied.

Assist moves, time-delayed moves, “meta” moves that operate on other moves/Pokémon/abilities, and some other special moves cannot be copied and are ignored; if the last move to hit the user was such a move, the previous move will be used instead.  The full list of ignored moves is: []{move:acupressure}, []{move:assist}, []{move:chatter}, []{move:copycat}, []{move:counter}, []{move:curse}, []{move:doom-desire}, []{move:feint}, []{move:focus-punch}, []{move:future-sight}, []{move:helping-hand}, []{move:magic-coat}, []{move:me-first}, []{move:metronome}, []{move:mimic}, []{move:mirror-coat}, []{move:mirror-move}, []{move:nature-power}, []{move:perish-song}, []{move:psych-up}, []{move:role-play}, []{move:sketch}, []{move:sleep-talk}, []{move:snatch}, []{move:spit-up}, []{move:struggle}, and []{move:transform}.

This move cannot be selected by []{move:assist}, []{move:metronome}, or []{move:sleep-talk}, nor forced by []{move:encore}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('11', '9', 'Raises the user''s Attack by one stage.', 'Raises the user''s [Attack]{mechanic:attack} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('12', '9', 'Raises the user''s Defense by one stage.', 'Raises the user''s [Defense]{mechanic:defense} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('14', '9', 'Raises the user''s Special Attack by one stage.', 'Raises the user''s [Special Attack]{mechanic:special-attack} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('17', '9', 'Raises the user''s evasion by one stage.', 'Raises the user''s [evasion]{mechanic:evasion} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('18', '9', 'Never misses.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('19', '9', 'Lowers the target''s Attack by one stage.', 'Lowers the target''s [Attack]{mechanic:attack} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('20', '9', 'Lowers the target''s Defense by one stage.', 'Lowers the target''s [Defense]{mechanic:defense} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('21', '9', 'Lowers the target''s Speed by one stage.', 'Lowers the target''s [Speed]{mechanic:speed} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('24', '9', 'Lowers the target''s accuracy by one stage.', 'Lowers the target''s [accuracy]{mechanic:accuracy} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('25', '9', 'Lowers the target''s evasion by one stage.', 'Lowers the target''s [evasion]{mechanic:evasion} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('26', '9', 'Resets all Pokémon''s stats, accuracy, and evasion.', 'Removes [stat]{mechanic:stat}, [accuracy]{mechanic:accuracy}, and [evasion]{mechanic:evasion} modifiers from every Pokémon on the [field]{mechanic:field}.

This does not count as a stat reduction for the purposes of []{ability:clear-body} or []{ability:white-smoke}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('27', '9', 'User waits for two turns, then hits back for twice the damage it took.', 'User waits for two turns.  On the second turn, the user inflicts twice the damage it accumulated on the last Pokémon to hit it.  Damage inflicted is [typeless]{mechanic:typeless}.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('28', '9', 'Hits every turn for 2-3 turns, then confuses the user.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User is forced to attack with this move for 2–3 turns,selected at random.  After the last hit, the user becomes [confused]{mechanic:confused}.

[]{move:safeguard} does not protect against the [confusion]{mechanic:confusion} from this move.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('29', '9', 'Immediately ends wild battles.  Forces trainers to switch Pokémon.', '[Switch]{mechanic:switch}es the target out for another of its trainer''s Pokémon selected at random.  Wild battles end immediately.

Doesn''t affect Pokémon with []{ability:suction-cups} or under the effect of []{move:ingrain}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('30', '9', 'Hits 2-5 times in one turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('31', '9', 'User''s type changes to the type of one of its moves at random.', 'User''s [type]{mechanic:type} changes to the [type]{mechanic:type} of one of its moves, selected at random.  []{move:hidden-power} and []{move:weather-ball} are treated as []{type:normal}.  Only moves with a different [type]{mechanic:type} are eligible, and []{move:curse} is never eligible.  If the user has no suitable moves, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('32', '9', 'Has a $effect_chance% chance to make the target flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to make the target []{mechanic:flinch}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('33', '9', 'Heals the user by half its max HP.', 'Heals the user for half its max [HP]{mechanic:hp}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('34', '9', 'Badly poisons the target, inflicting more damage every turn.', '[Badly poisons]{mechanic:badly-poisons} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('35', '9', 'Scatters money on the ground worth five times the user''s level.', 'Inflicts [regular damage]{mechanic:regular-damage}.  After the battle ends, the winner receives five times the user''s level in extra money for each time this move was used.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('36', '9', 'Reduces damage from special attacks by 50% for five turns.', 'Erects a barrier around the user''s side of the field that reduces damage from [special]{mechanic:special} attacks by half for five turns.  In double battles, the reduction is 1/3.  [Critical hit]{mechanic:critical-hit}s are not affected by the barrier.

If the user is holding []{item:light-clay}, the barrier lasts for eight turns.

[]{move:brick-break} or []{move:defog} used by an opponent will destroy the barrier.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('37', '9', 'Has a $effect_chance% chance to [burn]{mechanic:burn}, [freeze]{mechanic:freeze}, or [paralyze]{mechanic:paralysis} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [burn]{mechanic:burn}, [freeze]{mechanic:freeze}, or [paralyze]{mechanic:paralyze} the target.  One of these effects is selected at random; they do not each have independent chances to occur.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('38', '9', 'User sleeps for two turns, completely healing itself.', 'User falls to [sleep]{mechanic:sleep} and immediately regains all its [HP]{mechanic:hp}.  If the user has another [major status effect]{mechanic:major-status-effect}, [sleep]{mechanic:sleep} will replace it.  The user will always wake up after two turns, or one turn with []{ability:early-bird}.

This move [fail]{mechanic:fail}s if the Pokémon cannot fall asleep due to []{move:uproar}, []{ability:insomnia}, or []{ability:vital-spirit}.  It also fails if the Pokémon is at full health or is already asleep.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('39', '9', 'Causes a one-hit KO.', 'Inflicts damage equal to the target''s max [HP]{mechanic:hp}.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.  This move''s [accuracy]{mechanic:accuracy} is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will [fail]{mechanic:fail}.

Because this move inflicts a specific and finite amount of damage, []{move:endure} still prevents the target from fainting.

The effects of []{move:lock-on}, []{move:mind-reader}, and []{ability:no-guard} still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through []{move:detect} or []{move:protect}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('40', '9', 'Requires a turn to charge before attacking.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User''s [critical hit]{mechanic:critical-hit} rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('41', '9', 'Inflicts damage equal to half the target''s HP.', 'Inflicts [typeless]{mechanic:typeless} damage equal to half the target''s remaining [HP]{mechanic:hp}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('42', '9', 'Inflicts 40 points of damage.', 'Inflicts exactly 40 damage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('43', '9', 'Prevents the target from fleeing and inflicts damage for 2-5 turns.', 'Inflicts [regular damage]{mechanic:regular-damage}.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the [field]{mechanic:field}, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

[]{move:rapid-spin} cancels this effect.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('44', '9', 'Has an increased chance for a critical hit.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User''s [critical hit]{mechanic:critical-hit} rate is one level higher when using this move.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('45', '9', 'Hits twice in one turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Hits twice in one turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('46', '9', 'If the user misses, it takes half the damage it would have inflicted in recoil.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If this move misses, is blocked by []{move:protect} or []{move:detect}, or has no effect, the user takes half the damage it would have inflicted in recoil.  This recoil damage will not exceed half the user''s max HP.

This move cannot be used while []{move:gravity} is in effect.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('47', '9', 'Protects the user''s stats from being changed by enemy moves.', 'Pokémon on the user''s side of the [field]{mechanic:field} are immune to stat-lowering effects for five turns.

[]{move:guard-swap}, []{move:heart-swap}, and []{move:power-swap} may still be used.

[]{move:defog} used by an opponent will end this effect.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('48', '9', 'Increases the user''s chance to score a critical hit.', 'User''s [critical hit]{mechanic:critical-hit} rate is two levels higher until it leaves the field.  If the user has already used []{move:focus-energy} since entering the field, this move will [fail]{mechanic:fail}.

This effect is passed on by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('49', '9', 'User receives 1/4 the damage it inflicts in recoil.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User takes 1/4 the damage it inflicts in recoil.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('50', '9', 'Confuses the target.', '[Confuse]{mechanic:confuse}s the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('51', '9', 'Raises the user''s Attack by two stages.', 'Raises the user''s [Attack]{mechanic:attack} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('52', '9', 'Raises the user''s Defense by two stages.', 'Raises the user''s [Defense]{mechanic:defense} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('53', '9', 'Raises the user''s Speed by two stages.', 'Raises the user''s [Speed]{mechanic:speed} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('54', '9', 'Raises the user''s Special Attack by two stages.', 'Raises the user''s [Special Attack]{mechanic:special-attack} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('55', '9', 'Raises the user''s Special Defense by two stages.', 'Raises the user''s [Special Defense]{mechanic:special-defense} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('58', '9', 'User becomes a copy of the target until it leaves battle.', 'User copies the target''s species, weight, type, [ability]{mechanic:ability}, [calculated stats]{mechanic:calculated-stats} (except [HP]{mechanic:hp}), and moves.  Copied moves will all have 5 [PP]{mechanic:pp} remaining.  [IV]{mechanic:iv}s are copied for the purposes of []{move:hidden-power}, but stats are not recalculated.

[]{item:choice-band}, []{item:choice-scarf}, and []{item:choice-specs} stay in effect, and the user must select a new move.

This move cannot be copied by []{move:mirror-move}, nor forced by []{move:encore}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('59', '9', 'Lowers the target''s Attack by two stages.', 'Lowers the target''s [Attack]{mechanic:attack} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('60', '9', 'Lowers the target''s Defense by two stages.', 'Lowers the target''s [Defense]{mechanic:defense} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('61', '9', 'Lowers the target''s Speed by two stages.', 'Lowers the target''s [Speed]{mechanic:speed} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('63', '9', 'Lowers the target''s Special Defense by two stages.', 'Lowers the target''s [Special Defense]{mechanic:special-defense} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('66', '9', 'Reduces damage from physical attacks by half.', 'Erects a barrier around the user''s side of the field that reduces damage from [physical]{mechanic:physical} attacks by half for five turns.  In double battles, the reduction is 1/3.  [Critical hit]{mechanic:critical-hit}s are not affected by the barrier.

If the user is holding []{item:light-clay}, the barrier lasts for eight turns.

[]{move:brick-break} or []{move:defog} used by an opponent will destroy the barrier.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('67', '9', 'Poisons the target.', '[Poisons]{mechanic:poisons} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('68', '9', 'Paralyzes the target.', '[Paralyzes]{mechanic:paralyzes} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('69', '9', 'Has a $effect_chance% chance to lower the target''s Attack by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to lower the target''s [Attack]{mechanic:attack} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('70', '9', 'Has a $effect_chance% chance to lower the target''s Defense by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to lower the target''s [Defense]{mechanic:defense} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('71', '9', 'Has a $effect_chance% chance to lower the target''s Speed by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to lower the target''s [Speed]{mechanic:speed} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('72', '9', 'Has a $effect_chance% chance to lower the target''s Special Attack by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to lower the target''s [Special Attack]{mechanic:special-attack} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('73', '9', 'Has a $effect_chance% chance to lower the target''s Special Defense by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to lower the target''s [Special Defense]{mechanic:special-defense} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('74', '9', 'Has a $effect_chance% chance to lower the target''s accuracy by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to lower the target''s [accuracy]{mechanic:accuracy} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('76', '9', 'User charges for one turn before attacking.  Has a $effect_chance% chance to make the target flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User charges for one turn before attacking.  [Critical hit chance]{mechanic:critical-hit-chance} is one level higher than normal.  Has a $effect_chance% chance to make the target [flinch]{mechanic:flinch}.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('77', '9', 'Has a $effect_chance% chance to confuse the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [confuse]{mechanic:confuse} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('78', '9', 'Hits twice in the same turn.  Has a $effect_chance% chance to poison the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Hits twice in the same turn.  Has a $effect_chance% chance to [poison]{mechanic:poison} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('79', '9', 'Never misses.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('80', '9', 'Transfers 1/4 of the user''s max HP into a doll, protecting the user from further damage or status changes until it breaks.', 'Transfers 1/4 the user''s max [HP]{mechanic:hp} into a doll that absorbs damage and causes most negative move effects to [fail]{mechanic:fail}.  If the user leaves the [field]{mechanic:field}, the doll will vanish.  If the user cannot pay the [HP]{mechanic:hp} cost, this move will fail.

The doll takes damage as normal, using the user''s stats and types, and will break when its [HP]{mechanic:hp} reaches zero.  Self-inflicted damage from [confusion]{mechanic:confusion} or recoil is not absorbed.  Healing effects from opponents ignore the doll and heal the user as normal.  Moves that work based on the user''s [HP]{mechanic:hp} still do so; the doll''s [HP]{mechanic:hp} does not influence any move.

The doll will block [major status effect]{mechanic:major-status-effect}s, [confusion]{mechanic:confusion}, and [flinch]{mechanic:flinch}ing.  The effects of []{move:smelling-salts} and []{move:wake-up-slap} do not trigger against a doll, even if the Pokémon behind the doll has the appropriate [major status effect]{mechanic:major-status-effect}.  Multi-turn trapping moves like []{move:wrap} will hit the doll for their [regular damage]{mechanic:regular-damage}, but the multi-turn trapping and damage effects will not activate.

Moves blocked or damage absorbed by the doll do not count as hitting the user or inflicting damage for any effects that respond to such, e.g., []{move:avalanche}, []{move:counter}, or a []{item:rowap-berry}.  []{move:magic-coat} still works as normal, even against moves the doll would block.  Opposing Pokémon that damage the doll with a leech move like []{move:absorb} are healed as normal.

It will also block []{move:acupressure}, []{move:block}, the curse effect of []{move:curse}, []{move:dream-eater}, []{move:embargo}, []{move:flatter}, []{move:gastro-acid}, []{move:grudge}, []{move:heal-block}, []{move:leech-seed}, []{move:lock-on}, []{move:mean-look}, []{move:mimic}, []{move:mind-reader}, []{move:nightmare}, []{move:pain-split}, []{move:psycho-shift}, []{move:spider-web}, []{move:sketch}, []{move:swagger}, []{move:switcheroo}, []{move:trick}, []{move:worry-seed}, and []{move:yawn}.  A Pokémon affected by []{move:yawn} before summoning the doll will still fall to [sleep]{mechanic:sleep}.

The doll blocks []{ability:intimidate}, but all other abilities act as though the doll did not exist.  If the user has an ability that absorbs moves of a certain type for [HP]{mechanic:hp} (such as []{ability:volt-absorb} absorbing []{move:thunder-wave}), such moves will not be blocked.

[]{item:life-orb} and berries that cause [confusion]{mechanic:confusion} still work as normal, but their respective [HP]{mechanic:hp} loss and [confusion]{mechanic:confusion} are absorbed/blocked by the doll.

The user is still vulnerable to damage inflicted when entering or leaving the [field]{mechanic:field}, such as by []{move:pursuit} or []{move:spikes}; however, the doll will block the [poison]{mechanic:poison} effect of []{move:toxic-spikes}.

The doll is passed on by []{move:baton-pass}.  It keeps its existing [HP]{mechanic:hp}, but uses the replacement Pokémon''s stats and types for damage calculation.

All other effects work as normal.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('81', '9', 'User foregoes its next turn to recharge.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User loses its next turn to "recharge", and cannot attack or [switch]{mechanic:switch} out during that turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('82', '9', 'If the user is hit after using this move, its Attack rises by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Every time the user is hit after it uses this move but before its next action, its [Attack]{mechanic:attack} raises by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('83', '9', 'Copies the target''s last used move.', 'This move is replaced by the target''s last successfully used move, and its PP changes to 5.  If the target hasn''t used a move since entering the field, if it tried to use a move this turn and [failed]{mechanic:fail}, or if the user already knows the targeted move, this move will fail.  This effect vanishes when the user leaves the field.

If []{move:chatter}, []{move:metronome}, []{move:mimic}, []{move:sketch}, or []{move:struggle} is selected, this move will [fail]{mechanic:fail}.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist} or []{move:metronome}, nor forced by []{move:encore}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('84', '9', 'Randomly selects and uses any move in the game.', 'Selects any move at random and uses it.  Moves the user already knows are not eligible.  Assist, meta, protection, and reflection moves are also not eligible; specifically, []{move:assist}, []{move:chatter}, []{move:copycat}, []{move:counter}, []{move:covet}, []{move:destiny-bond}, []{move:detect}, []{move:endure}, []{move:feint}, []{move:focus-punch}, []{move:follow-me}, []{move:helping-hand}, []{move:me-first}, []{move:metronome}, []{move:mimic}, []{move:mirror-coat}, []{move:mirror-move}, []{move:protect}, []{move:quick-guard}, []{move:sketch}, []{move:sleep-talk}, []{move:snatch}, []{move:struggle}, []{move:switcheroo}, []{move:thief}, []{move:trick}, and []{move:wide-guard} will not be selected by this move.

This move cannot be copied by []{move:mimic} or []{move:mirror-move}, nor selected by []{move:assist}, []{move:metronome}, or []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('85', '9', 'Seeds the target, stealing HP from it every turn.', 'Plants a seed on the target that [drains]{mechanic:drain} 1/8 of its max [HP]{mechanic:hp} at the end of every turn and heals the user for the amount taken.  Has no effect on []{type:grass} Pokémon.  The seed remains until the target leaves the field.

The user takes damage instead of being healed if the target has []{ability:liquid-ooze}.

[]{move:rapid-spin} will remove this effect.

This effect is passed on by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('86', '9', 'Does nothing.', 'Does nothing.

This move cannot be used while []{move:gravity} is in effect.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('87', '9', 'Disables the target''s last used move for 1-8 turns.', 'Disables the target''s last used move, preventing its use for 4–7 turns, selected at random, or until the target leaves the [field]{mechanic:field}.  If the target hasn''t used a move since entering the [field]{mechanic:field}, if it tried to use a move this turn and [failed]{mechanic:failed},  if its last used move has 0 PP remaining, or if it already has a move disabled, this move will fail.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('88', '9', 'Inflicts damage equal to the user''s level.', 'Inflicts damage equal to the user''s level.  Type immunity applies, but other type effects are ignored.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('89', '9', 'Inflicts damage between 50% and 150% of the user''s level.', 'Inflicts [typeless]{mechanic:typeless} damage between 50% and 150% of the user''s level, selected at random in increments of 10%.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('90', '9', 'Inflicts twice the damage the user received from the last physical hit it took.', 'Targets the last opposing Pokémon to hit the user with a [physical]{mechanic:physical} move this turn.  Inflicts twice the damage that move did to the user.  If there is no eligible target, this move will [fail]{mechanic:fail}.  Type immunity applies, but other type effects are ignored.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('91', '9', 'Forces the target to repeat its last used move every turn for 2 to 6 turns.', 'The next 4–8 times (selected at random) the target attempts to move, it is forced to repeat its last used move.  If the selected move allows the trainer to select a target, an opponent will be selected at random each turn.  If the target is prevented from using the selected move by some other effect, []{move:struggle} will be used instead.  This effect ends if the selected move runs out of [PP]{mechanic:pp}.

If the target hasn''t used a move since entering the [field]{mechanic:field}, if it tried to use a move this turn and [failed]{mechanic:failed}, if it does not know the selected move, or if the selected move has 0 [PP]{mechanic:pp} remaining, this move will fail.  If the target''s last used move was []{move:encore}, []{move:mimic}, []{move:mirror-move}, []{move:sketch}, []{move:struggle}, or []{move:transform}, this move will fail.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('92', '9', 'Sets the user''s and targets''s HP to the average of their current HP.', 'Changes the user''s and target''s remaining [HP]{mechanic:hp} to the average of their current remaining [HP]{mechanic:hp}.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.  This effect does not count as inflicting damage for other moves and effects that respond to damage taken.

This effect [fail]{mechanic:fail}s against a []{move:substitute}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('93', '9', 'Has a $effect_chance% chance to make the target flinch.  Only works if the user is sleeping.', 'Only usable if the user is [sleep]{mechanic:sleep}ing.  Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to make the target []{mechanic:flinch}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('94', '9', 'Changes the user''s type to a random type either resistant or immune to the last move used against it.', 'Changes the user''s type to a type either resistant or immune to the last damaging move that hit it.  The new type is selected at random and cannot be a type the user already is.  If there is no eligible new type, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('95', '9', 'Ensures that the user''s next move will hit the target.', 'If the user targets the same target again before the end of the next turn, the move it uses is guaranteed to hit.  This move itself also ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.

One-hit KO moves are also guaranteed to hit, as long as the user is equal or higher level than the target.  This effect also allows the user to hit Pokémon that are off the field due to moves such as []{move:dig} or []{move:fly}.

If the target uses []{move:detect} or []{move:protect} while under the effect of this move, the user is not guaranteed to hit, but has a (100 - accuracy)% chance to break through the protection.

This effect is passed on by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('96', '9', 'Permanently becomes the target''s last used move.', 'Permanently replaces itself with the target''s last used move.  If that move is []{move:chatter} or []{move:struggle}, this move will [fail]{mechanic:fail}.

This move cannot be copied by []{move:mimic} or []{move:mirror-move}, nor selected by []{move:assist} or []{move:metronome}, nor forced by []{move:encore}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('98', '9', 'Randomly uses one of the user''s other three moves.  Only works if the user is sleeping.', 'Only usable if the user is [sleep]{mechanic:sleep}ing.  Randomly selects and uses one of the user''s other three moves.  Use of the selected move requires and costs 0 [PP]{mechanic:pp}.

This move will not select []{move:assist}, []{move:bide}, []{move:bounce}, []{move:chatter}, []{move:copycat}, []{move:dig}, []{move:dive}, []{move:fly}, []{move:focus-punch}, []{move:me-first}, []{move:metronome}, []{move:mirror-move}, []{move:shadow-force}, []{move:skull-bash}, []{move:sky-attack}, []{move:sky-drop}, []{move:sleep-talk}, []{move:solar-beam}, []{move:razor-wind}, or []{move:uproar}.

If the selected move requires a recharge turn—i.e., one of []{move:blast-burn}, []{move:frenzy-plant}, []{move:giga-impact}, []{move:hydro-cannon}, []{move:hyper-beam}, []{move:roar-of-time}, or []{move:rock-wrecker}—and the user is still [sleep]{mechanic:sleep}ing next turn, then it''s forced to use this move again and pay another [PP]{mechanic:pp} for the recharge turn.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist}, []{move:metronome}, or []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('99', '9', 'If the user faints this turn, the target automatically will, too.', 'If the user [faints]{mechanic:faints} before its next move, the Pokémon that [faint]{mechanic:faint}ed it will automatically [faint]{mechanic:faint}.  End-of-turn damage is ignored.

This move cannot be selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('100', '9', 'Inflicts more damage when the user has less HP remaining, with a maximum of 200 power.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power varies inversely with the user''s proportional remaining [HP]{mechanic:hp}.

64 * current HP / max HP | Power
-----------------------: | ----:
 0– 1                    |  200
 2– 5                    |  150
 6–12                    |  100
13–21                    |   80
22–42                    |   40
43–64                    |   20
');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('101', '9', 'Lowers the PP of the target''s last used move by 4.', 'Lowers the PP of the target''s last used move by 4.  If the target hasn''t used a move since entering the [field]{mechanic:field}, if it tried to use a move this turn and [failed]{mechanic:failed}, or if its last used move has 0 PP remaining, this move will fail.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('102', '9', 'Cannot lower the target''s HP below 1.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Will not reduce the target''s [HP]{mechanic:hp} below 1.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('103', '9', 'Cures the entire party of major status effects.', 'Removes [major status effects]{mechanic:major-status-effects} and [confusion]{mechanic:confusion} from every Pokémon in the user''s party.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('104', '9', 'Inflicts regular damage with no additional effect.', 'Inflicts [regular damage]{mechanic:regular-damage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('105', '9', 'Hits three times, increasing power by 100% with each successful hit.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Hits three times in the same turn.  The second hit has double power, and the third hit has triple power.  Each hit has a separate [accuracy]{mechanic:accuracy} check, and this move stops if a hit misses.

[]{ability:skill-link} does not apply.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('106', '9', 'Takes the target''s item.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target is holding an item and the user is not, the user will permanently take the item.  Damage is still inflicted if an item cannot be taken.

Pokémon with []{ability:sticky-hold} or []{ability:multitype} are immune to the item theft effect.

The target cannot recover its item with []{move:recycle}.

This move cannot be selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('107', '9', 'Prevents the target from leaving battle.', 'The target cannot [switch out]{mechanic:switch-out} normally.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.  This effect ends when the user leaves the [field]{mechanic:field}.

The target may still escape by using []{move:baton-pass}, []{move:u-turn}, or a []{item:shed-shell}.

Both the user and the target pass on this effect with []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('108', '9', 'Target loses 1/4 its max HP every turn as long as it''s asleep.', 'Only works on [sleep]{mechanic:sleep}ing Pokémon.  Gives the target a nightmare, damaging it for 1/4 its max [HP]{mechanic:hp} every turn.  If the target wakes up or leaves the [field]{mechanic:field}, this effect ends.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('109', '9', 'Raises the user''s evasion by two stages.', 'Raises the user''s [evasion]{mechanic:evasion} by two [stages]{mechanic:stage}.

[]{move:stomp} and []{move:steamroller} have double power against Pokémon that have used this move since entering the [field]{mechanic:field}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('110', '9', 'Ghosts pay half their max HP to hurt the target every turn.  Others decrease Speed but raise Attack and Defense.', 'If the user is a []{type:ghost}: user pays half its max [HP]{mechanic:hp} to place a curse on the target, damaging it for 1/4 its max [HP]{mechanic:hp} every turn.
Otherwise: Lowers the user''s [Speed]{mechanic:speed} by one [stage]{mechanic:stage}, and raises its [Attack]{mechanic:attack} and [Defense]{mechanic:defense} by one [stage]{mechanic:stage} each.

The curse effect is passed on by []{move:baton-pass}.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('112', '9', 'Prevents any moves from hitting the user this turn.', 'No moves will hit the user for the remainder of this turn.  If the user is last to act this turn, this move will [fail]{mechanic:fail}.

If the user successfully used []{move:detect}, []{move:endure}, []{move:protect}, []{move:quick-guard}, or []{move:wide-guard} on the last turn, this move has a 50% chance to [fail]{mechanic:fail}.

[]{move:lock-on}, []{move:mind-reader}, and []{ability:no-guard} provide a (100 – accuracy)% chance for moves to break through this move.  This does not apply to one-hit KO moves ([]{move:fissure}, []{move:guillotine}, []{move:horn-drill}, and []{move:sheer-cold}); those are always blocked by this move.

[]{move:thunder} during []{move:rain-dance} and []{move:blizzard} during []{move:hail} have a 30% chance to break through this move.

The following effects are not prevented by this move:

* []{move:acupressure} from an ally
* []{move:curse}''s curse effect
* Delayed damage from []{move:doom-desire} and []{move:future-sight}; however, these moves will be prevented if they are used this turn
* []{move:feint}, which will also end this move''s protection after it hits
* []{move:imprison}
* []{move:perish-song}
* []{move:shadow-force}
* Moves that merely copy the user, such as []{move:transform} or []{move:psych-up}

This move cannot be selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('113', '9', 'Scatters Spikes, hurting opposing Pokémon that switch in.', 'Scatters spikes around the opposing [field]{mechanic:field}, which damage opposing Pokémon that enter the [field]{mechanic:field} for 1/8 of their max [HP]{mechanic:hp}.  Pokémon immune to []{type:ground} moves are immune to this damage, except during []{move:gravity}.  Up to three layers of spikes may be laid down, adding 1/16 to the damage done: two layers of spikes damage for 3/16 max [HP]{mechanic:hp}, and three layers damage for 1/4 max [HP]{mechanic:hp}.

[]{ability:wonder-guard} does not block damage from this effect.

[]{move:rapid-spin} removes this effect from its user''s side of the [field]{mechanic:field}.  []{move:defog} removes this effect from its target''s side of the [field]{mechanic:field}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('114', '9', 'Forces the target to have no Evade, and allows it to be hit by Normal and Fighting moves even if it''s a Ghost.', 'Resets the target''s [evasion]{mechanic:evasion} to normal and prevents any further boosting until the target leaves the [field]{mechanic:field}.  A []{type:ghost} under this effect takes normal damage from []{type:normal} and []{type:fighting} moves.  This move itself ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('115', '9', 'User and target both faint after three turns.', 'Every Pokémon is given a counter that starts at 3 and decreases by 1 at the end of every turn, including this one.  When a Pokémon''s counter reaches zero, that Pokémon [faint]{mechanic:faint}s.  A Pokémon that leaves the [field]{mechanic:field} will lose its counter; its replacement does not inherit the effect, and other Pokémon''s counters remain.

This effect is passed on by []{move:baton-pass}.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('116', '9', 'Changes the weather to a sandstorm for five turns.', 'Changes the weather to a sandstorm for five turns.  Pokémon that are not []{type:ground}, []{type:rock}, or []{type:steel} take 1/16 their max [HP]{mechanic:hp} at the end of every turn.  Every []{type:rock} Pokémon''s original [Special Defense]{mechanic:special-defense} is raised by 50% for the duration of this effect.

[]{move:solar-beam}''s power is halved.

[]{move:moonlight}, []{move:morning-sun}, and []{move:synthesis} only heal 1/4 the user''s max [HP]{mechanic:hp}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('117', '9', 'Prevents the user''s HP from lowering below 1 this turn.', 'The user''s [HP]{mechanic:hp} cannot be lowered below 1 by any means for the remainder of this turn.

If the user successfully used []{move:detect}, []{move:endure}, []{move:protect}, []{move:quick-guard}, or []{move:wide-guard} on the last turn, this move has a 50% chance to [fail]{mechanic:fail}.

This move cannot be selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('118', '9', 'Power doubles every turn this move is used in succession after the first, resetting after five turns.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User is forced to use this move for five turns.  Power doubles every time this move is used in succession to a maximum of 16x, and resets to normal after the lock-in ends.  If this move misses or becomes unusable, the lock-in ends.

If the user has used []{move:defense-curl} since entering the field, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('119', '9', 'Raises the target''s Attack by two stages and confuses the target.', 'Raises the target''s [Attack]{mechanic:attack} by two [stages]{mechanic:stage}, then [confuses]{mechanic:confuses} it.  If the target''s [Attack]{mechanic:attack} cannot be [raised]{mechanic:raised} by two [stages]{mechanic:stage}, the [confusion]{mechanic:confusion} is not applied.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('120', '9', 'Power doubles every turn this move is used in succession after the first, maxing out after five turns.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power doubles after every time this move is used, whether consecutively or not, maxing out at 16x.  If this move misses or the user leaves the [field]{mechanic:field}, power resets.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('121', '9', 'Target falls in love if it has the opposite gender, and has a 50% chance to refuse attacking the user.', 'Causes the target to fall in love with the user, giving it a 50% chance to do nothing each turn.  If the user and target are the same gender, or either is genderless, this move will [fail]{mechanic:fail}.  If either Pokémon leaves the [field]{mechanic:field}, this effect ends.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('122', '9', 'Power increases with happiness, up to a maximum of 102.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power increases with [happiness]{mechanic:happiness}, given by `happiness * 2 / 5`, to a maximum of 102.  Power bottoms out at 1.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('123', '9', 'Randomly inflicts damage with power from 40 to 120 or heals the target for 1/4 its max HP.', 'Randomly uses one of the following effects.

Effect                                             | Chance
-------------------------------------------------- | -----:
Inflicts [regular damage]{mechanic:regular-damage} with 40 power  |    40%
Inflicts [regular damage]{mechanic:regular-damage} with 80 power  |    30%
Inflicts [regular damage]{mechanic:regular-damage} with 120 power |    10%
Heals the target for 1/4 its max [HP]{mechanic:hp}    |    20%

On average, this move inflicts [regular damage]{mechanic:regular-damage} with 52 power and heals the target for 1/20 its max [HP]{mechanic:hp}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('124', '9', 'Power increases as happiness decreases, up to a maximum of 102.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power increases inversely with [happiness]{mechanic:happiness}, given by `(255 - happiness) * 2 / 5`, to a maximum of 102.  Power bottoms out at 1.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('125', '9', 'Protects the user''s field from major status ailments and confusion for five turns.', 'Protects Pokémon on the user''s side of the [field]{mechanic:field} from [major status]{mechanic:major-status} effects and [confusion]{mechanic:confusion} for five turns.  Does not cancel existing ailments.  This effect remains even if the user leaves the [field]{mechanic:field}.

If []{move:yawn} is used while this move is in effect, it will immediately [fail]{mechanic:fail}.

[]{move:defog} used by an opponent will end this effect.

This effect does not prevent the [confusion]{mechanic:confusion} caused by []{move:outrage}, []{move:petal-dance}, or []{move:thrash}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('126', '9', 'Has a $effect_chance% chance to [burn]{mechanic:burn} the target.  Lets frozen Pokémon thaw themselves.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [burn]{mechanic:burn} the target.  [Frozen]{mechanic:frozen} Pokémon may use this move, in which case they will thaw.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('127', '9', 'Power varies randomly from 10 to 150.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power is selected at random between 10 and 150, with an average of 71:

Magnitude | Power | Chance
--------: | ----: | -----:
        4 |    10 |     5%
        5 |    30 |    10%
        6 |    50 |    20%
        7 |    70 |    30%
        8 |    90 |    20%
        9 |   110 |    10%
       10 |   150 |     5%

This move has double power against Pokémon currently underground due to []{move:dig}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('128', '9', 'Allows the trainer to switch out the user and pass effects along to its replacement.', 'User [switches out]{mechanic:switches-out}, and the trainer selects a replacement Pokémon from the party.  [Stat]{mechanic:stat} changes, [confusion]{mechanic:confusion}, and persistent move effects are passed along to the replacement Pokémon.

The following move effects are passed:

* []{move:aqua-ring}
* both the user''s and target''s effect of []{move:block}, []{move:mean-look}, and []{move:spider-web}
* the curse effect of []{move:curse}
* []{move:embargo}
* []{move:focus-energy} or an activated []{item:lansat-berry}
* []{move:gastro-acid}
* []{move:ingrain}
* being sapped by []{move:leech-seed}
* being targeted by []{move:lock-on} or []{move:mind-reader}
* []{move:magnet-rise}
* []{move:perish-song}''s counter
* []{move:power-trick}
* []{move:substitute}; the doll''s HP is unchanged

The replacement Pokémon does not trigger effects that respond to Pokémon switching in.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('129', '9', 'Has double power against, and can hit, Pokémon attempting to switch out.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target attempts to [switch out]{mechanic:switch-out} this turn before the user acts, this move hits the target before it leaves and has double power.

This effect can still hit a Pokémon that [switches out]{mechanic:switches-out} when it has a []{move:substitute} up or when an ally has used []{move:follow-me}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('130', '9', 'Frees the user from binding moves, removes Leech Seed, and blows away Spikes.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Removes []{move:leech-seed} from the user, frees the user from []{move:bind}, []{move:clamp}, []{move:fire-spin}, []{move:magma-storm}, []{move:sand-tomb}, []{move:whirlpool}, and []{move:wrap}, and clears []{move:spikes}, []{move:stealth-rock}, and []{move:toxic-spikes} from the user''s side of the [field]{mechanic:field}.  If this move misses or has [no effect]{mechanic:no-effect}, its effect doesn''t activate.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('131', '9', 'Inflicts 20 points of damage.', 'Inflicts exactly 20 damage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('133', '9', 'Heals the user by half its max HP.  Affected by weather.', 'Heals the user for half its max [HP]{mechanic:hp}.

During []{move:sunny-day}, the healing is increased to 2/3 max [HP]{mechanic:hp}.

During []{move:hail}, []{move:rain-dance}, or []{move:sandstorm}, the healing is decreased to 1/4 max [HP]{mechanic:hp}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('136', '9', 'Power and type depend upon user''s IVs.  Power can range from 30 to 70.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power and type are determined by the user''s [IV]{mechanic:iv}s.

Power is given by `x * 40 / 63 + 30`.  `x` is obtained by arranging bit 1 from the [IV]{mechanic:iv} for each of [Special Defense]{mechanic:special-defense}, [Special Attack]{mechanic:special-attack}, [Speed]{mechanic:speed}, [Defense]{mechanic:defense}, [Attack]{mechanic:attack}, and [HP]{mechanic:hp} in that order.  (Bit 1 is 1 if the [IV]{mechanic:iv} is of the form `4n + 2` or `4n + 3`.  `x` is then 64 * [Special Defense]{mechanic:special-defense} [IV]{mechanic:iv} bit 1, plus 32 * [Special Attack]{mechanic:special-attack} [IV]{mechanic:iv} bit 1, etc.)

Power is always between 30 and 70, inclusive.  Average power is 49.5.

Type is given by `y * 15 / 63`, where `y` is similar to `x` above, except constructed from bit 0.  (Bit 0 is 1 if the [IV]{mechanic:iv} is odd.)  The result is looked up in the following table.

Value | Type
----: | --------
    0 | []{type:fighting}
    1 | []{type:flying}
    2 | []{type:poison}
    3 | []{type:ground}
    4 | []{type:rock}
    5 | []{type:bug}
    6 | []{type:ghost}
    7 | []{type:steel}
    8 | []{type:fire}
    9 | []{type:water}
   10 | []{type:grass}
   11 | []{type:electric}
   12 | []{type:psychic}
   13 | []{type:ice}
   14 | []{type:dragon}
   15 | []{type:dark}

This move thus cannot be []{type:normal}.  Most other types have an equal 1/16 chance to be selected, given random [IV]{mechanic:iv}s.  However, due to the flooring used here, []{type:bug}, []{type:fighting}, and []{type:grass} appear 5/64 of the time, and []{type:dark} only 1/64 of the time.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('137', '9', 'Changes the weather to rain for five turns.', 'Changes the weather to rain for five turns, during which []{type:water} moves inflict 50% extra damage, and []{type:fire} moves inflict half damage.

If the user is holding []{item:damp-rock}, this effect lasts for eight turns.

[]{move:thunder} has 100% accuracy.  If the target has used []{move:detect} or []{move:protect}, []{move:thunder} has a (100 - accuracy)% chance to break through the protection.

[]{move:solar-beam} has half power.

[]{move:moonlight}, []{move:morning-sun}, and []{move:synthesis} heal only 1/4 of the user''s max [HP]{mechanic:hp}.

Pokémon with []{ability:swift-swim} have doubled original [Speed]{mechanic:speed}.

Pokémon with []{ability:forecast} become []{type:water}.

Pokémon with []{ability:dry-skin} heal 1/8 max [HP]{mechanic:hp}, Pokémon with []{ability:hydration} are cured of [major status effects]{mechanic:major-status-effects}, and Pokémon with []{ability:rain-dish} heal 1/16 max [HP]{mechanic:hp} at the end of each turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('138', '9', 'Changes the weather to sunny for five turns.', 'Changes the weather to sunshine for five turns, during which []{type:fire} moves inflict 50% extra damage, and []{type:water} moves inflict half damage.

If the user is holding []{item:heat-rock}, this effect lasts for eight turns.

Pokémon cannot become [frozen]{mechanic:frozen}.

[]{move:thunder} has 50% accuracy.

[]{move:solar-beam} skips its charge turn.

[]{move:moonlight}, []{move:morning-sun}, and []{move:synthesis} heal 2/3 of the user''s max [HP]{mechanic:hp}.

Pokémon with []{ability:chlorophyll} have doubled original [Speed]{mechanic:speed}.

Pokémon with []{ability:forecast} become []{type:fire}.

Pokémon with []{ability:leaf-guard} are not affected by [major status effects]{mechanic:major-status-effects}.

Pokémon with []{ability:flower-gift} change form; every Pokémon on their side of the [field]{mechanic:field} have their original [Attack]{mechanic:attack} and [Special Attack]{mechanic:special-attack} increased by 50%.

Pokémon with []{ability:dry-skin} lose 1/8 max [HP]{mechanic:hp} at the end of each turn.

Pokémon with []{ability:solar-power} have their original [Special Attack]{mechanic:special-attack} raised by 50% but lose 1/8 their max [HP]{mechanic:hp} at the end of each turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('139', '9', 'Has a $effect_chance% chance to raise the user''s Defense by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}. Has a $effect_chance% chance to raise the user''s [Defense]{mechanic:defense} one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('140', '9', 'Has a $effect_chance% chance to raise the user''s Attack by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}. Has a $effect_chance% chance to raise the user''s [Attack]{mechanic:attack} one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('141', '9', 'Has a $effect_chance% chance to raise all of the user''s stats by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}. Has a $effect_chance% chance to raise all of the user''s stats one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('143', '9', 'User pays half its max HP to max out its Attack.', 'User pays half its max [HP]{mechanic:hp} to raise its [Attack]{mechanic:attack} to +6 [stages]{mechanic:stage}.  If the user cannot pay the [HP]{mechanic:hp} cost, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('144', '9', 'Discards the user''s stat changes and copies the target''s.', 'Discards the user''s [stat changes]{mechanic:stat-changes} and copies the target''s.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('145', '9', 'Inflicts twice the damage the user received from the last special hit it took.', 'Targets the last opposing Pokémon to hit the user with a [special]{mechanic:special} move this turn.  Inflicts twice the damage that move did to the user.  If there is no eligible target, this move will [fail]{mechanic:fail}.  Type immunity applies, but other type effects are ignored.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('146', '9', 'Raises the user''s Defense by one stage.  User charges for one turn before attacking.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Raises the user''s [Defense]{mechanic:defense} by one [stage]{mechanic:stage}.  User then charges for one turn before attacking.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('147', '9', 'Has a $effect_chance% chance to make the target flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to make each target [flinch]{mechanic:flinch}.

If the target is under the effect of []{move:bounce}, []{move:fly}, or []{move:sky-drop}, this move will hit with double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('148', '9', 'Inflicts regular damage and can hit Dig users.', 'Inflicts [regular damage]{mechanic:regular-damage}.

If the target is in the first turn of []{move:dig}, this move will hit with double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('149', '9', 'Hits the target two turns later.', 'Inflicts [typeless]{mechanic:typeless} [regular damage]{mechanic:regular-damage} at the end of the third turn, starting with this one.  This move cannot score a [critical hit]{mechanic:critical-hit}.  If the target [switches out]{mechanic:switches-out}, its replacement will be hit instead.  Damage is calculated at the time this move is used; [stat changes]{mechanic:stat-changes} and [switching out]{mechanic:switching-out} during the delay won''t change the damage inflicted.  No move with this effect can be used against the same target again until after the end of the third turn.

This effect breaks through []{ability:wonder-guard}.

If the target is protected by []{move:protect} or []{move:detect} on the turn this move is used, this move will [fail]{mechanic:fail}.  However, the damage on the third turn will break through protection.

The damage is applied at the end of the turn, so it ignores []{move:endure} and []{item:focus-sash}.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('150', '9', 'Inflicts regular damage and can hit Pokémon in the air.', 'Inflicts [regular damage]{mechanic:regular-damage}.

If the target is under the effect of []{move:bounce}, []{move:fly}, or []{move:sky-drop}, this move will hit with double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('151', '9', 'Has a $effect_chance% chance to make the target flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to make the target [flinch]{mechanic:flinch}.

Power is doubled against Pokémon that have used []{move:minimize} since entering the [field]{mechanic:field}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('152', '9', 'Requires a turn to charge before attacking.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User charges for one turn before attacking.

During []{move:sunny-day}, the charge turn is skipped.

During []{move:hail}, []{move:rain-dance}, or []{move:sandstorm}, power is halved.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('153', '9', 'Has a $effect_chance% chance to paralyze the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [paralyze]{mechanic:paralyze} the target.

During []{move:rain-dance}, this move has 100% accuracy.  It also has a (100 - accuracy)% chance to break through the protection of []{move:protect} and []{move:detect}.

During []{move:sunny-day}, this move has 50% accuracy.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('154', '9', 'Immediately ends wild battles.  No effect otherwise.', 'Does nothing.  Wild battles end immediately.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('155', '9', 'Hits once for every conscious Pokémon the trainer has.', 'Inflicts [typeless]{mechanic:typeless} [regular damage]{mechanic:regular-damage}.  Every Pokémon in the user''s party, excepting those that have fainted or have a [major status effect]{mechanic:major-status-effect}, attacks the target.  Calculated stats are ignored; the base stats for the target and assorted attackers are used instead.  The random factor in the damage formula is not used.  []{type:dark} Pokémon still get [STAB]{mechanic:stab}.

This effect breaks through []{ability:wonder-guard}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('156', '9', 'User flies high into the air, dodging all attacks, and hits next turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, []{move:gust}, []{move:hurricane}, []{move:sky-uppercut}, []{move:smack-down}, []{move:thunder}, []{move:twister}, and []{move:whirlwind} still hit the user normally.  []{move:gust} and []{move:twister} also have double power against the user.

The damage from []{move:hail} and []{move:sandstorm} still applies during the immune turn.

The user may be hit during its immune turn if under the effect of []{move:lock-on}, []{move:mind-reader}, or []{ability:no-guard}.

This move cannot be used while []{move:gravity} is in effect.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('157', '9', 'Raises user''s Defense by one stage.', 'Raises user''s [Defense]{mechanic:defense} by one [stage]{mechanic:stage}.

After this move is used, the power of []{move:ice-ball} and []{move:rollout} are doubled until the user leaves the [field]{mechanic:field}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('159', '9', 'Can only be used as the first move after the user enters battle.  Causes the target to flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Causes the target to []{mechanic:flinch}.  Can only be used on the user''s first turn after entering the [field]{mechanic:field}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('160', '9', 'Forced to use this move for several turns.  Pokémon cannot fall asleep in that time.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User is forced to use this move for 2–5 turns, selected at random.  All Pokémon on the [field]{mechanic:field} wake up, and none can fall to [sleep]{mechanic:sleep} until the lock-in ends.

Pokémon cannot use []{move:rest} during this effect.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('161', '9', 'Stores energy up to three times for use with Spit Up and Swallow.', 'Raises the user''s [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} by one [stage]{mechanic:stage} each.  Stores energy for use with []{move:spit-up} and []{move:swallow}.  Up to three levels of energy can be stored, and all are lost if the user leaves the [field]{mechanic:field}.  Energy is still stored even if the stat boosts cannot be applied.

If the user uses []{move:baton-pass}, the stat boosts are passed as normal, but the stored energy is not.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('162', '9', 'Power is 100 times the amount of energy Stockpiled.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power is equal to 100 times the amount of energy stored by []{move:stockpile}.  Ignores the random factor in the damage formula.  Stored energy is consumed, and the user''s [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} are reset to what they would be if []{move:stockpile} had not been used.  If the user has no energy stored, this move will [fail]{mechanic:fail}.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('163', '9', 'Recovers 1/4 HP after one Stockpile, 1/2 HP after two Stockpiles, or full HP after three Stockpiles.', 'Heals the user depending on the amount of energy stored by []{move:stockpile}: 1/4 its max [HP]{mechanic:hp} after one use, 1/2 its max [HP]{mechanic:hp} after two uses, or fully after three uses.  Stored energy is consumed, and the user''s [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} are reset to what they would be if []{move:stockpile} had not been used.  If the user has no energy stored, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('165', '9', 'Changes the weather to a hailstorm for five turns.', 'Changes the weather to hail for five turns, during which non-[]{type:ice} Pokémon are damaged for 1/16 their max [HP]{mechanic:hp} at the end of every turn.

If the user is holding []{item:icy-rock}, this effect lasts for eight turns.

[]{move:blizzard} has 100% accuracy.  If the target has used []{move:detect} or []{move:protect}, []{move:blizzard} has a (100 - accuracy)% chance to break through the protection.

[]{move:moonlight}, []{move:morning-sun}, and []{move:synthesis} heal only 1/4 of the user''s max [HP]{mechanic:hp}.

Pokémon with []{ability:snow-cloak} are exempt from this effect''s damage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('166', '9', 'Prevents the target from using the same move twice in a row.', 'Prevents the target from attempting to use the same move twice in a row.  When the target leaves the [field]{mechanic:field}, this effect ends.

If the target is forced to attempt a repeated move due to []{item:choice-band}, []{item:choice-scarf}, []{item:choice-specs}, []{move:disable}, []{move:encore}, []{move:taunt}, only having [PP]{mechanic:pp} remaining for one move, or any other effect, the target will use []{move:struggle} instead.  The target is then free to use the forced move next turn, as it didn''t use that move this turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('167', '9', 'Raises the target''s Special Attack by one stage and confuses the target.', 'Raises the target''s [Special Attack]{mechanic:special-attack} by one [stage]{mechanic:stage}, then [confuses]{mechanic:confuses} it.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('168', '9', 'Burns the target.', '[Burns]{mechanic:burns} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('169', '9', 'Lowers the target''s Attack and Special Attack by two stages.  User faints.', 'Lowers the target''s [Attack]{mechanic:attack} and [Special Attack]{mechanic:special-attack} by two [stages]{mechanic:stage}.  User faints.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('170', '9', 'Power doubles if user is burned, paralyzed, or poisoned.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the user is [burned]{mechanic:burned}, [paralyzed]{mechanic:paralyzed}, or [poisoned]{mechanic:poisoned}, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('171', '9', 'If the user takes damage before attacking, the attack is canceled.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the user takes damage this turn before hitting, this move will [fail]{mechanic:fail}.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist}, []{move:metronome}, or []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('172', '9', 'If the target is paralyzed, inflicts double damage and cures the paralysis.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target is [paralyzed]{mechanic:paralyzed}, this move has double power, and the target is cured of its [paralysis]{mechanic:paralysis}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('173', '9', 'Redirects the target''s single-target effects to the user for this turn.', 'Until the end of this turn, any moves that opposing Pokémon target solely at the user''s ally will instead target the user.  If both Pokémon on the same side of the [field]{mechanic:field} use this move on the same turn, the Pokémon that uses it last will become the target.

This effect takes priority over []{ability:lightningrod} and []{ability:storm-drain}.

If the user''s ally [switches out]{mechanic:switches-out}, opposing Pokémon may still hit it with []{move:pursuit}.

This move cannot be selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('174', '9', 'Uses a move which depends upon the terrain.', 'Uses another move chosen according to the terrain.

Terrain        | Selected move
-------------- | ------------------
Building       | []{move:tri-attack}
Cave           | []{move:rock-slide}
Deep water     | []{move:hydro-pump}
Desert         | []{move:earthquake}
Grass          | []{move:seed-bomb}
Mountain       | []{move:rock-slide}
Road           | []{move:earthquake}
Shallow water  | []{move:hydro-pump}
Snow           | []{move:blizzard}
Tall grass     | []{move:seed-bomb}

In Pokémon Battle Revolution:

Terrain        | Selected move
-------------- | ------------------
Courtyard      | []{move:tri-attack}
Crystal        | []{move:rock-slide}
Gateway        | []{move:hydro-pump}
Magma          | []{move:rock-slide}
Main Street    | []{move:tri-attack}
Neon           | []{move:tri-attack}
Stargazer      | []{move:rock-slide}
Sunny Park     | []{move:seed-bomb}
Sunset         | []{move:earthquake}
Waterfall      | []{move:seed-bomb}

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('175', '9', 'Raises the user''s Special Defense by one stage.  User''s Electric moves have doubled power next turn.', 'Raises the user''s [Special Defense]{mechanic:special-defense} by one [stage]{mechanic:stage}.  If the user uses an []{type:electric} move next turn, its power will be doubled.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('176', '9', 'For the next few turns, the target can only use damaging moves.', 'Target is forced to only use damaging moves for the next 3–5 turns, selected at random.  Moves that select other moves not known in advance do not count as damaging.

[]{move:assist}, []{move:copycat}, []{move:me-first}, []{move:metronome}, []{move:mirror-move}, and []{move:sleep-talk} do not directly inflict damage and thus may not be used.

[]{move:bide}, []{move:counter}, []{move:endeavor}, []{move:metal-burst}, and []{move:mirror-coat} are allowed.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('177', '9', 'Ally''s next move inflicts half more damage.', 'Boosts the power of the target''s moves by 50% until the end of this turn.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('178', '9', 'User and target swap items.', 'User and target permanently swap [held item]{mechanic:held-item}s.  Works even if one of the Pokémon isn''t holding anything.  If either Pokémon is holding mail, this move will [fail]{mechanic:fail}.

If either Pokémon has []{ability:multitype} or []{ability:sticky-hold}, this move will [fail]{mechanic:fail}.

If this move results in a Pokémon obtaining []{item:choice-band}, []{item:choice-scarf}, or []{item:choice-specs}, and that Pokémon was the latter of the pair to move this turn, then the move it used this turn becomes its chosen forced move.  This applies even if both Pokémon had a choice item before this move was used.  If the first of the two Pokémon gains a choice item, it may select whatever choice move it wishes next turn.

Neither the user nor the target can recover its item with []{move:recycle}.

This move cannot be selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('179', '9', 'Copies the target''s ability.', 'User''s ability is replaced with the target''s until the user leaves the [field]{mechanic:field}.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.

If the target has []{ability:wonder-guard}, this move will [fail]{mechanic:fail}.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('180', '9', 'User will recover half its max HP at the end of the next turn.', 'At the end of the next turn, user will be healed for half its max [HP]{mechanic:hp}.  If the user is [switched out]{mechanic:switched-out}, its replacement will be healed instead for half of the user''s max HP.  If the user [faint]{mechanic:faint}s or is forcefully switched by []{move:roar} or []{move:whirlwind}, this effect will not activate.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('181', '9', 'Randomly selects and uses one of the trainer''s other Pokémon''s moves.', 'Uses a move from another Pokémon in the user''s party, both selected at random.  Moves from fainted Pokémon can be used.  If there are no eligible Pokémon or moves, this move will [fail]{mechanic:fail}.

This move will not select []{move:assist}, []{move:chatter}, []{move:circle-throw}, []{move:copycat}, []{move:counter}, []{move:covet}, []{move:destiny-bond}, []{move:detect}, []{move:dragon-tail}, []{move:endure}, []{move:feint}, []{move:focus-punch}, []{move:follow-me}, []{move:helping-hand}, []{move:me-first}, []{move:metronome}, []{move:mimic}, []{move:mirror-coat}, []{move:mirror-move}, []{move:protect}, []{move:quick-guard}, []{move:sketch}, []{move:sleep-talk}, []{move:snatch}, []{move:struggle}, []{move:switcheroo}, []{move:thief}, []{move:trick}, or []{move:wide-guard}.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:metronome} or []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('182', '9', 'Prevents the user from leaving battle.  User regains 1/16 of its max HP every turn.', 'Prevents the user from [switching out]{mechanic:switching-out}.  User regains 1/16 of its max [HP]{mechanic:hp} at the end of every turn.  If the user was immune to []{type:ground} attacks, it will now take normal damage from them.

[]{move:roar} and []{move:whirlwind} will not affect the user.  The user cannot use []{move:magnet-rise}.

The user may still use []{move:u-turn} to leave the [field]{mechanic:field}.

This effect can be passed with []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('183', '9', 'Lowers the user''s Attack and Defense by one stage after inflicting damage.', 'Inflicts [regular damage]{mechanic:regular-damage}, then lowers the user''s [Attack]{mechanic:attack} and [Defense]{mechanic:defense} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('184', '9', 'Reflects back the first effect move used on the user this turn.', 'The first non-damaging move targeting the user this turn that inflicts [major status effect]{mechanic:major-status-effect}s, [stat change]{mechanic:stat-change}s, or [trap]{mechanic:trap}ping effects will be reflected at its user.

[]{move:defog}, []{move:memento}, and []{move:teeter-dance} are not reflected.

[]{move:attract}, []{move:flatter}, []{move:gastro-acid}, []{move:leech-seed}, []{move:swagger}, []{move:worry-seed}, and []{move:yawn} are reflected.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('185', '9', 'User recovers the item it last used up.', 'User recovers the last item consumed by the user or a Pokémon in its position on the [field]{mechanic:field}.  The item must be used again before it can be recovered by this move again.  If the user is holding an item, this move [fail]{mechanic:fail}s.

Items taken or given away by []{move:covet}, []{move:knock-off}, []{move:switcheroo}, []{move:thief}, or []{move:trick} may not be recovered.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('186', '9', 'Inflicts double damage if the user takes damage before attacking this turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target damaged the user this turn and was the last to do so, this move has double power.

[]{move:pain-split} does not count as damaging the user.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('187', '9', 'Destroys Reflect and Light Screen.', 'Destroys any []{move:light-screen} or []{move:reflect} on the target''s side of the [field]{mechanic:field}, then inflicts [regular damage]{mechanic:regular-damage}.  The barriers are destroyed even if this move has [no effect]{mechanic:no-effect}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('188', '9', 'Target sleeps at the end of the next turn.', 'Puts the target to [sleep]{mechanic:sleep} at the end of the next turn.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.  If the target leaves the [field]{mechanic:field}, this effect is canceled.  If the target has a status effect when this move is used, this move will [fail]{mechanic:fail}.

If the target is protected by []{move:safeguard} when this move is used, this move will [fail]{mechanic:fail}.

[]{ability:insomnia} and []{ability:vital-spirit} prevent the [sleep]{mechanic:sleep} if the target has either at the end of the next turn, but will not cause this move to [fail]{mechanic:fail} on use.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('189', '9', 'Target drops its held item.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Target loses its [held item]{mechanic:held-item}.

Neither the user nor the target can recover its item with []{move:recycle}.

If the target has []{ability:multitype} or []{ability:sticky-hold}, it will take damage but not lose its item.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('190', '9', 'Lowers the target''s HP to equal the user''s.', 'Inflicts exactly enough damage to lower the target''s [HP]{mechanic:hp} to equal the user''s.  If the target''s HP is not higher than the user''s, this move has no effect.  Type immunity applies, but other type effects are ignored.  This effect counts as damage for moves that respond to damage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('191', '9', 'Inflicts more damage when the user has more HP remaining, with a maximum of 150 power.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power increases with the user''s remaining [HP]{mechanic:hp} and is given by `150 * HP / max HP`, to a maximum of 150 when the user has full HP.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('192', '9', 'User and target swap abilities.', 'User and target switch abilities.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.

If either Pokémon has []{ability:multitype} or []{ability:wonder-guard}, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('193', '9', 'Prevents the target from using any moves that the user also knows.', 'Prevents any Pokémon on the opposing side of the [field]{mechanic:field} from using any move the user knows until the user leaves the [field]{mechanic:field}.  This effect is live; if the user obtains new moves while on the [field]{mechanic:field}, these moves become restricted.  If no opposing Pokémon knows any of the user''s moves when this move is used, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('194', '9', 'Cleanses the user of a burn, paralysis, or poison.', 'Removes a [burn]{mechanic:burn}, [paralysis]{mechanic:paralysis}, or [poison]{mechanic:poison} from the user.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('195', '9', 'If the user faints this turn, the PP of the move that fainted it drops to 0.', 'If the user [faint]{mechanic:faint}s before it next acts, the move that fainted it will have its [PP]{mechanic:pp} dropped to 0.  End-of-turn damage does not trigger this effect.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('196', '9', 'Steals the target''s move, if it''s self-targeted.', 'The next time a Pokémon uses a beneficial move on itself or itself and its ally this turn, the user of this move will steal the move and use it itself.  Moves which may be stolen by this move are identified by the "snatchable" flag.

If two Pokémon use this move on the same turn, the faster Pokémon will steal the first beneficial move, and the slower Pokémon will then steal it again—thus, only the slowest Pokémon using this move ultimately gains a stolen move''s effect.

If the user steals []{move:psych-up}, it will target the Pokémon that used []{move:psych-up}.  If the user was the original target of []{move:psych-up}, and the Pokémon that originally used it''s affected by []{ability:pressure}, it will only lose 1 [PP]{mechanic:pp}.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('197', '9', 'Inflicts more damage to heavier targets, with a maximum of 120 power.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power increases with the target''s weight in kilograms, to a maximum of 120.

Target''s weight | Power
--------------- | ----:
Up to 10kg      |    20
Up to 25kg      |    40
Up to 50kg      |    60
Up to 100kg     |    80
Up to 200kg     |   100
Above 200kg     |   120
');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('198', '9', 'Has a $effect_chance% chance to inflict a status effect which depends upon the terrain.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to inflict an effect chosen according to the terrain.

Terrain        | Effect
-------------- | -------------------------------------------------------------
Building       | [Paralyze]{mechanic:paralyze}s target
Cave           | Makes target [flinch]{mechanic:flinch}
Deep water     | Lowers target''s [Attack]{mechanic:attack} by one [stage]{mechanic:stage}
Desert         | Lowers target''s [accuracy]{mechanic:accuracy} by one [stage]{mechanic:stage}
Grass          | Puts target to [sleep]{mechanic:sleep}
Mountain       | Makes target [flinch]{mechanic:flinch}
Road           | Lowers target''s [accuracy]{mechanic:accuracy} by one [stage]{mechanic:stage}
Shallow water  | Lowers target''s [Attack]{mechanic:attack} by one [stage]{mechanic:stage}
Snow           | [Freezes]{mechanic:freezes} target
Tall grass     | Puts target to [sleep]{mechanic:sleep}

In Pokémon Battle Revolution:

Terrain        | Effect
-------------- | -------------------------------------------------------------
Courtyard      | [Paralyze]{mechanic:paralyze}s target
Crystal        | Makes target [flinch]{mechanic:flinch}
Gateway        | Lowers target''s [Attack]{mechanic:attack} by one [stage]{mechanic:stage}
Magma          | Makes target [flinch]{mechanic:flinch}
Main Street    | [Paralyze]{mechanic:paralyze}s target
Neon           | [Paralyze]{mechanic:paralyze}s target
Stargazer      | Makes target [flinch]{mechanic:flinch}
Sunny Park     | Puts target to [sleep]{mechanic:sleep}
Sunset         | Lowers target''s [accuracy]{mechanic:accuracy} by one [stage]{mechanic:stage}
Waterfall      | Puts target to [sleep]{mechanic:sleep}
');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('199', '9', 'User receives 1/3 the damage inflicted in recoil.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User takes 1/3 the damage it inflicts in recoil.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('200', '9', 'Confuses the target.', '[Confuse]{mechanic:confuse}s all targets.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('201', '9', 'Has an increased chance for a critical hit and a $effect_chance% chance to [burn]{mechanic:burn} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User''s [critical hit]{mechanic:critical-hit} rate is one level higher when using this move. Has a $effect_chance% chance to [burn]{mechanic:burn} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('202', '9', 'Halves all Electric-type damage.', '[]{type:electric} moves inflict half damage, regardless of target.  If the user leaves the [field]{mechanic:field}, this effect ends.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('203', '9', 'Has a $effect_chance% chance to badly poison the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [badly poison]{mechanic:badly-poison} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('204', '9', 'If there be weather, this move has doubled power and the weather''s type.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If a weather move is active, this move has double power, and its type becomes the type of the weather move.  []{move:shadow-sky} is typeless for the purposes of this move.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('205', '9', 'Lowers the user''s Special Attack by two stages after inflicting damage.', 'Inflicts [regular damage]{mechanic:regular-damage}, then lowers the user''s [Special Attack]{mechanic:special-attack} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('206', '9', 'Lowers the target''s Attack and Defense by one stage.', 'Lowers the target''s [Attack]{mechanic:attack} and [Defense]{mechanic:defense} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('207', '9', 'Raises the user''s Defense and Special Defense by one stage.', 'Raises the user''s [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('208', '9', 'Inflicts regular damage and can hit Bounce and Fly users.', 'Inflicts [regular damage]{mechanic:regular-damage}.

This move can hit Pokémon under the effect of []{move:bounce}, []{move:fly}, or []{move:sky-drop}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('209', '9', 'Raises the user''s Attack and Defense by one stage.', 'Raises the user''s [Attack]{mechanic:attack} and [Defense]{mechanic:defense} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('210', '9', 'Has an increased chance for a critical hit and a $effect_chance% chance to poison the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User''s [critical hit]{mechanic:critical-hit} rate is one level higher when using this move. Has a $effect_chance% chance to [poison]{mechanic:poison} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('211', '9', 'Halves all Fire-type damage.', '[]{type:fire} moves inflict half damage, regardless of target.  If the user leaves the [field]{mechanic:field}, this effect ends.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('212', '9', 'Raises the user''s Special Attack and Special Defense by one stage.', 'Raises the user''s [Special Attack]{mechanic:special-attack} and [Special Defense]{mechanic:special-defense} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('213', '9', 'Raises the user''s Attack and Speed by one stage.', 'Raises the user''s [Attack]{mechanic:attack} and [Speed]{mechanic:speed} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('214', '9', 'User''s type changes to match the terrain.', 'User''s type changes according to the terrain.

Terrain        | New type
-------------- | --------------
Building       | []{type:normal}
Cave           | []{type:rock}
Desert         | []{type:ground}
Grass          | []{type:grass}
Mountain       | []{type:rock}
Ocean          | []{type:water}
Pond           | []{type:water}
Road           | []{type:ground}
Snow           | []{type:ice}
Tall grass     | []{type:grass}

In Pokémon Battle Revolution:

Terrain        | New type
-------------- | --------------
Courtyard      | []{type:normal}
Crystal        | []{type:rock}
Gateway        | []{type:water}
Magma          | []{type:rock}
Main Street    | []{type:normal}
Neon           | []{type:normal}
Stargazer      | []{type:rock}
Sunny Park     | []{type:grass}
Sunset         | []{type:ground}
Waterfall      | []{type:grass}
');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('215', '9', 'Heals the user by half its max HP.', 'Heals the user for half its max [HP]{mechanic:hp}.  If the user is []{type:flying}, its []{type:flying} type is ignored until the end of this turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('216', '9', 'Disables moves and immunities that involve flying or levitating for five turns.', 'For five turns (including this one), all immunities to []{type:ground} moves are disabled.  For the duration of this effect, the [evasion]{mechanic:evasion} of every Pokémon on the field is lowered by two [stages]{mechanic:stage}.  Cancels the effects of []{move:bounce}, []{move:fly}, and []{move:sky-drop}.

Specifically, []{type:flying} Pokémon and those with []{ability:levitate} or that have used []{move:magnet-rise} are no longer immune to []{type:ground} attacks, []{ability:arena-trap}, []{move:spikes}, or []{move:toxic-spikes}.

[]{move:bounce}, []{move:fly}, []{move:sky-drop}, []{move:high-jump-kick}, []{move:jump-kick}, and []{move:splash} cannot be used while this move is in effect.

*Bug*: If this move is used during a double or triple battle while Pokémon are under the effect of []{move:sky-drop}, Sky Drop''s effect is not correctly canceled on its target, and it remains high in the air indefinitely.  As Sky Drop prevents the target from acting, the only way to subsequently remove it from the field is to faint it.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('217', '9', 'Forces the target to have no evasion, and allows it to be hit by Psychic moves even if it''s Dark.', 'Resets the target''s [evasion]{mechanic:evasion} to normal and prevents any further boosting until the target leaves the [field]{mechanic:field}.  A []{type:dark} Pokémon under this effect takes normal damage from []{type:psychic} moves.  This move itself ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('218', '9', 'If the target is asleep, has double power and wakes it up.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target is [sleep]{mechanic:sleep}ing, this move has double power, and the target wakes up.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('219', '9', 'Lowers user''s Speed by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}, then lowers the user''s [Speed]{mechanic:speed} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('220', '9', 'Power raises when the user has lower Speed, up to a maximum of 150.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power increases with the target''s current [Speed]{mechanic:speed} compared to the user, given by `1 + 25 * target Speed / user Speed`, capped at 150.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('221', '9', 'User faints.  Its replacement has its HP fully restored and any major status effect removed.', 'User faints.  Its replacement''s [HP]{mechanic:hp} is fully restored, and any [major status effect]{mechanic:major-status-effect} is removed.  If the replacement Pokémon is immediately fainted by a switch-in effect, the next replacement is healed by this move instead.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('222', '9', 'Has double power against Pokémon that have less than half their max HP remaining.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target has less than half its max [HP]{mechanic:hp} remaining, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('223', '9', 'Power and type depend on the held berry.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power and type are determined by the user''s held berry.  The berry is consumed.  If the user is not holding a berry, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('224', '9', 'Hits through Protect and Detect.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Removes the effects of []{move:detect} or []{move:protect} from the target before hitting.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('225', '9', 'If target has a berry, inflicts double damage and uses the berry.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a []{item:jaboca-berry} or []{item:rowap-berry}, the berry is still removed, but has no effect.

If this move is [super effective]{mechanic:super-effective} and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('226', '9', 'For three turns, friendly Pokémon have doubled Speed.', 'For the next three turns, all Pokémon on the user''s side of the [field]{mechanic:field} have their original [Speed]{mechanic:speed} doubled.  This effect remains if the user leaves the [field]{mechanic:field}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('227', '9', 'Raises one of a friendly Pokémon''s stats at random by two stages.', 'Raises one of the target''s stats by two [stages]{mechanic:stage}.  The raised stat is chosen at random from any stats that can be raised by two stages.  If no stat is eligible, this move will [fail]{mechanic:fail}.

If the target has a []{move:substitute}, this move will have no effect, even if the user is the target.

This move cannot be copied by []{move:mirror-move}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('228', '9', 'Strikes back at the last Pokémon to hit the user this turn with 1.5× the damage.', 'Targets the last opposing Pokémon to hit the user with a damaging move this turn.  Inflicts 1.5× the damage that move did to the user.  If there is no eligible target, this move will [fail]{mechanic:fail}.  Type immunity applies, but other type effects are ignored.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('229', '9', 'User must switch out after attacking.', 'Inflicts [regular damage]{mechanic:regular-damage}, then the user immediately [switches out]{mechanic:switches-out}, and the trainer selects a replacement Pokémon from the party.  If the target [faint]{mechanic:faint}s from this attack, the user''s trainer selects the new Pokémon to send out first.  If the user is the last Pokémon in its party that can battle, it will not [switch out]{mechanic:switch-out}.

The user may be hit by []{move:pursuit} when it [switches out]{mechanic:switches-out}, if it has been targeted and []{move:pursuit} has not yet been used.

This move may be used even if the user is under the effect of []{move:ingrain}.  []{move:ingrain}''s effect will end.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('230', '9', 'Lowers the user''s Defense and Special Defense by one stage after inflicting damage.', 'Inflicts [regular damage]{mechanic:regular-damage}, then lowers the user''s [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('231', '9', 'Power is doubled if the target has already moved this turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target uses a move or [switches out]{mechanic:switches-out} this turn before this move is used, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('232', '9', 'Power is doubled if the target has already received damage this turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target takes damage this turn for any reason before this move is used, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('233', '9', 'Target cannot use held items.', 'Target cannot use its held item for five turns.  If the target leaves the [field]{mechanic:field}, this effect ends.

If a Pokémon under this effect uses []{move:bug-bite} or []{move:pluck} on a Pokémon holding a berry, the berry is destroyed but not used.  If a Pokémon under this effect uses []{move:fling}, it will [fail]{mechanic:fail}.

This effect is passed by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('234', '9', 'Throws held item at the target; power depends on the item.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power and type are determined by the user''s [held item]{mechanic:held-item}.  The item is consumed.  If the user is not holding an item, or its item has no set type and power, this move will [fail]{mechanic:fail}.

This move ignores []{ability:sticky-hold}.

If the user is under the effect of []{move:embargo}, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('235', '9', 'Transfers the user''s major status effect to the target.', 'If the user has a [major status effect]{mechanic:major-status-effect} and the target does not, the user''s status is transferred to the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('236', '9', 'Power increases when this move has less PP, up to a maximum of 200.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power is determined by the [PP]{mechanic:pp} remaining for this move, after its [PP]{mechanic:pp} cost is deducted.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.

PP remaining | Power
------------ | ----:
4 or more    |    40
3            |    50
2            |    60
1            |    80
0            |   200

If this move is activated by another move, the activating move''s [PP]{mechanic:pp} is used to calculate power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('237', '9', 'Prevents target from restoring its HP for five turns.', 'For the next five turns, the target may not use any moves that only restore [HP]{mechanic:hp}, and move effects that heal the target are disabled.  Moves that steal [HP]{mechanic:hp} may still be used, but will only inflict damage and not heal the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('238', '9', 'Power increases against targets with more HP remaining, up to a maximum of 121 power.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power directly relates to the target''s relative remaining [HP]{mechanic:hp}, given by `1 + 120 * current HP / max HP`, to a maximum of 121.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('239', '9', 'User swaps Attack and Defense.', 'The user''s original [Attack]{mechanic:attack} and [Defense]{mechanic:defense} are swapped.

This effect is passed on by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('240', '9', 'Nullifies target''s ability until it leaves battle.', 'The target''s ability is disabled as long as it remains on the [field]{mechanic:field}.

This effect is passed on by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('241', '9', 'Prevents the target from scoring critical hits for five turns.', 'For five turns, opposing Pokémon cannot score [critical hits]{mechanic:critical-hit}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('242', '9', 'Uses the target''s move against it before it attacks, with power increased by half.', 'If the target has selected a damaging move this turn, the user will copy that move and use it against the target, with a 50% increase in power.

If the target moves before the user, this move will [fail]{mechanic:fail}.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist}, []{move:metronome}, or []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('243', '9', 'Uses the target''s last used move.', 'Uses the last move that was used successfully by any Pokémon, including the user.

This move cannot copy itself.

This move cannot be copied by []{move:mirror-move}, nor selected by []{move:assist}, []{move:metronome}, or []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('244', '9', 'User swaps Attack and Special Attack changes with the target.', 'User swaps its [Attack]{mechanic:attack} and [Special Attack]{mechanic:special-attack} [stat modifiers]{mechanic:stat-modifiers} modifiers with the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('245', '9', 'User swaps Defense and Special Defense changes with the target.', 'User swaps its [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} modifiers with the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('246', '9', 'Power increases against targets with more raised stats, up to a maximum of 200.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power starts at 60 and is increased by 20 for every [stage]{mechanic:stage} any of the target''s stats has been raised, capping at 200.  [Accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers do not increase this move''s power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('247', '9', 'Can only be used after all of the user''s other moves have been used.', 'Inflicts [regular damage]{mechanic:regular-damage}.  This move can only be used if each of the user''s other moves has been used at least once since the user entered the [field]{mechanic:field}.  If this is the user''s only move, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('248', '9', 'Changes the target''s ability to Insomnia.', 'Changes the target''s ability to []{ability:insomnia}.

If the target''s ability is []{ability:truant} or []{ability:multitype}, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('249', '9', 'Only works if the target is about to use a damaging move.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target has not selected a damaging move this turn, or if the target has already acted this turn, this move will [fail]{mechanic:fail}.

This move is not affected by []{ability:iron-fist}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('250', '9', 'Scatters poisoned spikes, poisoning opposing Pokémon that switch in.', 'Scatters poisoned spikes around the opposing [field]{mechanic:field}, which [poison]{mechanic:poison} opposing Pokémon that enter the [field]{mechanic:field}.  A second layer of these spikes may be laid down, in which case Pokémon will be [badly poison]{mechanic:badly-poison}ed instead.  Pokémon immune to either []{type:ground} moves or being [poison]{mechanic:poison}ed are immune to this effect.  Pokémon otherwise immune to []{type:ground} moves are affected during []{move:gravity}.

If a []{type:poison} Pokémon not immune to []{type:ground} moves enters a [field]{mechanic:field} covered with poisoned spikes, the spikes are removed.

[]{move:rapid-spin} will remove this effect from its user''s side of the [field]{mechanic:field}.  []{move:defog} will remove this effect from its target''s side of the [field]{mechanic:field}.

This move does not trigger []{ability:synchronize}, unless the Pokémon with []{ability:synchronize} was forced to enter the [field]{mechanic:field} by another effect such as []{move:roar}.

Pokémon entering the [field]{mechanic:field} due to []{move:baton-pass} are not affected by this effect.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('251', '9', 'User and target swap stat changes.', 'User swaps its [stat modifiers]{mechanic:stat-modifiers} with the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('252', '9', 'Restores 1/16 of the user''s max HP each turn.', 'Restores 1/16 of the user''s max [HP]{mechanic:hp} at the end of each turn.  If the user leaves the [field]{mechanic:field}, this effect ends.

This effect is passed on by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('253', '9', 'User is immune to Ground moves and effects for five turns.', 'For five turns, the user is immune to []{type:ground} moves.

If the user is under the effect of []{move:ingrain} or has []{ability:levitate}, this move will [fail]{mechanic:fail}.

This effect is temporarily disabled by and cannot be used during []{move:gravity}.

This effect is passed on by []{move:baton-pass}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('254', '9', 'User takes 1/3 the damage inflicted in recoil.  Has a $effect_chance% chance to [burn]{mechanic:burn} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User takes 1/3 the damage it inflicts in recoil.  Has a $effect_chance% chance to [burn]{mechanic:burn} the target.  [Frozen]{mechanic:frozen} Pokémon may use this move, in which case they will thaw.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('255', '9', 'User takes 1/4 its max HP in recoil.', 'Inflicts [typeless]{mechanic:typeless} [regular damage]{mechanic:regular-damage}.  User takes 1/4 its max [HP]{mechanic:hp} in recoil.  Ignores [accuracy]{mechanic:accuracy} and [evasion]{mechanic:evasion} modifiers.

This move is used automatically when a Pokémon cannot use any other move legally, e.g., due to having no [PP]{mechanic:pp} remaining or being under the effect of both []{move:encore} and []{move:torment} at the same time.

This move''s recoil is not treated as recoil for the purposes of anything that affects recoil, such as the ability []{ability:rock-head}.  It also is not prevented by []{ability:magic-guard}.

This move cannot be copied by []{move:mimic}, []{move:mirror-move}, or []{move:sketch}, nor selected by []{move:assist} or []{move:metronome}, nor forced by []{move:encore}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('256', '9', 'User dives underwater, dodging all attacks, and hits next turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User dives underwater for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, []{move:surf}, and []{move:whirlpool} still hit the user normally, and their power is doubled if appropriate.

The user may be hit during its immune turn if under the effect of []{move:lock-on}, []{move:mind-reader}, or []{ability:no-guard}.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('257', '9', 'User digs underground, dodging all attacks, and hits next turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User digs underground for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, []{move:earthquake}, []{move:fissure}, and []{move:magnitude} still hit the user normally, and their power is doubled if appropriate.

The user may be hit during its immune turn if under the effect of []{move:lock-on}, []{move:mind-reader}, or []{ability:no-guard}.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('258', '9', 'Inflicts regular damage and can hit Dive users.', 'Inflicts [regular damage]{mechanic:regular-damage}.

If the target is in the first turn of []{move:dive}, this move will hit with double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('259', '9', 'Lowers the target''s evasion by one stage.  Removes field effects from the enemy field.', 'Lowers the target''s [evasion]{mechanic:evasion} by one [stage]{mechanic:stage}.  Clears away fog.  Removes the effects of []{move:mist}, []{move:light-screen}, []{move:reflect}, []{move:safeguard}, []{move:spikes}, []{move:stealth-rock}, and []{move:toxic-spikes} from the target''s side of the [field]{mechanic:field}.

If the target is protected by []{move:mist}, it will prevent the [evasion]{mechanic:evasion} change, then be removed by this move.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('260', '9', 'For five turns, slower Pokémon will act before faster Pokémon.', 'For five turns (including this one), slower Pokémon will act before faster Pokémon.  Move priority is not affected.  Using this move when its effect is already active will end the effect.

Pokémon holding []{item:full-incense}, []{item:lagging-tail}, or []{item:quick-claw} and Pokémon with []{ability:stall} ignore this effect.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('261', '9', 'Has a $effect_chance% chance to freeze the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [freeze]{mechanic:freeze} the target.

During []{move:hail}, this move has 100% accuracy.  It also has a (100 - accuracy)% chance to break through the protection of []{move:protect} and []{move:detect}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('262', '9', 'Prevents the target from leaving battle and inflicts 1/16 its max HP in damage for 2-5 turns.', 'Inflicts [regular damage]{mechanic:regular-damage}.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the [field]{mechanic:field}, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

If the target is in the first turn of []{move:dive}, this move will hit with double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('263', '9', 'User takes 1/3 the damage inflicted in recoil.  Has a $effect_chance% chance to paralyze the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User takes 1/3 the damage it inflicts in recoil.  Has a $effect_chance% chance to [paralyze]{mechanic:paralyze} the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('264', '9', 'User bounces high into the air, dodging all attacks, and hits next turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User bounces high into the air for one turn, becoming immune to attack, and hits on the second turn.  Has a $effect_chance% chance to [paralyze]{mechanic:paralyze} the target.

During the immune turn, []{move:gust}, []{move:hurricane}, []{move:sky-uppercut}, []{move:smack-down}, []{move:thunder}, and []{move:twister} still hit the user normally.  []{move:gust} and []{move:twister} also have double power against the user.

The damage from []{move:hail} and []{move:sandstorm} still applies during the immune turn.

The user may be hit during its immune turn if under the effect of []{move:lock-on}, []{move:mind-reader}, or []{ability:no-guard}.

This move cannot be used while []{move:gravity} is in effect.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('266', '9', 'Lowers the target''s Special Attack by two stages if it''s the opposite gender.', 'Lowers the target''s [Special Attack]{mechanic:special-attack} by two [stages]{mechanic:stage}.  If the user and target are the same gender, or either is genderless, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('267', '9', 'Causes damage when opposing Pokémon switch in.', 'Spreads sharp rocks around the opposing [field]{mechanic:field}, damaging any Pokémon that enters the [field]{mechanic:field} for 1/8 its max [HP]{mechanic:hp}.  This damage is affected by the entering Pokémon''s susceptibility to []{type:rock} moves.

[]{move:rapid-spin} removes this effect from its user''s side of the [field]{mechanic:field}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('268', '9', 'Has a higher chance to confuse the target when the recorded sound is louder.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has either a 1%, 11%, or 31% chance to [confuse]{mechanic:confuse} the target, based on the volume of the recording made for this move; louder recordings increase the chance of [confusion]{mechanic:confusion}.  If the user is not a []{pokemon:chatot}, this move will not cause [confusion]{mechanic:confusion}.

This move cannot be copied by []{move:mimic}, []{move:mirror-move}, or []{move:sketch}, nor selected by []{move:assist}, []{move:metronome}, or []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('269', '9', 'If the user is holding a appropriate plate or drive, the damage inflicted will match it.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the user is holding a plate or a drive, this move''s type is the type corresponding to that item.

Note: This effect is technically shared by both []{move:techno-blast} and []{move:judgment}; however, Techno Blast is only affected by drives, and Judgment is only affected by plates.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('270', '9', 'User receives 1/2 the damage inflicted in recoil.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User takes 1/2 the damage it inflicts in recoil.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('271', '9', 'User faints, and its replacement is fully healed.', 'User [faint]{mechanic:faint}s.  Its replacement''s [HP]{mechanic:hp} and [PP]{mechanic:pp} are fully restored, and any [major status effect]{mechanic:major-status-effect} is removed.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('272', '9', 'Has a $effect_chance% chance to lower the target''s Special Defense by two stages.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to lower the target''s [Special Defense]{mechanic:special-defense} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('273', '9', 'User vanishes, dodging all attacks, and hits next turn.  Hits through Protect and Detect.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User vanishes for one turn, becoming immune to attack, and hits on the second turn.

This move ignores the effects of []{move:detect} and []{move:protect}.

This move cannot be selected by []{move:sleep-talk}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('274', '9', 'Has a $effect_chance% chance to [burn]{mechanic:burn} the target and a $effect_chance% chance to make the target flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [burn]{mechanic:burn} the target and a separate $effect_chance% chance to make the target [flinch]{mechanic:flinch}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('275', '9', 'Has a $effect_chance% chance to freeze the target and a $effect_chance% chance to make the target flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [freeze]{mechanic:freeze} the target and a separate $effect_chance% chance to make the target [flinch]{mechanic:flinch}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('276', '9', 'Has a $effect_chance% chance to paralyze the target and a $effect_chance% chance to make the target flinch.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [paralyze]{mechanic:paralyze} the target and a separate $effect_chance% chance to make the target [flinch]{mechanic:flinch}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('277', '9', 'Has a $effect_chance% chance to raise the user''s Special Attack by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to raise the user''s [Special Attack]{mechanic:special-attack} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('278', '9', 'Raises the user''s Attack and accuracy by one stage.', 'Raises the user''s [Attack]{mechanic:attack} and [accuracy]{mechanic:accuracy} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('279', '9', 'Prevents any multi-target moves from hitting friendly Pokémon this turn.', 'Moves with multiple targets will not hit friendly Pokémon for the remainder of this turn.  If the user is last to act this turn, this move will [fail]{mechanic:fail}.

If the user successfully used []{move:detect}, []{move:endure}, []{move:protect}, []{move:quick-guard}, or []{move:wide-guard} on the last turn, this move has a 50% chance to [fail]{mechanic:fail}.

This move cannot be selected by []{move:assist} or []{move:metronome}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('280', '9', 'Averages Defense and Special Defense with the target.', 'Averages the user''s unmodified [Defense]{mechanic:defense} with the target''s unmodified Defense; the value becomes the unmodified Defense for both Pokémon. Unmodified [Special Defense]{mechanic:special-defense} is averaged the same way.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('281', '9', 'Averages Attack and Special Attack with the target.', 'Averages the user''s unmodified [Attack]{mechanic:attack} with the target''s unmodified Attack; the value becomes the unmodified Attack for both Pokémon. Unmodified [Special Attack]{mechanic:special-attack} is averaged the same way.

This effect applies before any other persistent changes to unmodified Attack or Special Attack, such as []{ability:flower-gift} during []{move:sunny-day}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('282', '9', 'All Pokémon''s Defense and Special Defense are swapped for 5 turns.', 'For five turns (including this one), every Pokémon''s [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} are swapped.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('283', '9', 'Inflicts damage based on the target''s Defense, not Special Defense.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Damage calculation always uses the target''s [Defense]{mechanic:defense}, regardless of this move''s damage class.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('284', '9', 'Inflicts double damage if the target is Poisoned.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target is [poisoned]{mechanic:poisoned}, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('285', '9', 'Raises the user''s Speed by two stages and halves the user''s weight.', 'Raises the user''s [Speed]{mechanic:speed} by two [stages]{mechanic:stage}.  Halves the user''s weight; this effect does not stack.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('286', '9', 'Moves have 100% accuracy against the target for three turns.', 'For three turns (including this one), moves used against the target have 100% [accuracy]{mechanic:accuracy}, but the target is immune to []{type:ground} damage.  Accuracy of one-hit KO moves is exempt from this effect.

This effect is removed by []{move:gravity}.  If Gravity is already in effect, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('287', '9', 'Negates held items for five turns.', 'For five turns (including this one), passive effects of held items are ignored, and Pokémon will not use their held items.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('288', '9', 'Removes any immunity to Ground damage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Removes the target''s [immunity]{mechanic:immune} to []{type:ground}-type damage.  This effect removes any existing Ground immunity due to []{ability:levitate}, []{move:magnet-rise}, or []{move:telekinesis}, and causes the target''s []{type:flying} type to be ignored when it takes Ground damage.

If the target isn''t immune to Ground damage, this move will [fail]{mechanic:fail}.

This move can hit Pokémon under the effect of []{move:bounce}, []{move:fly}, or []{move:sky-drop}, and ends the effect of Bounce or Fly.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('289', '9', 'Always scores a critical hit.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Always scores a [critical hit]{mechanic:critical-hit}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('290', '9', 'Deals splash damage to Pokémon next to the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If this move successfully hits the target, any Pokémon adjacent to the target are damaged for 1/16 their max [HP]{mechanic:hp}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('291', '9', 'Raises the user''s Special Attack, Special Defense, and Speed by one stage each.', 'Raises the user''s [Special Attack]{mechanic:special-attack}, [Special Defense]{mechanic:special-defense}, and [Speed]{mechanic:speed} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('292', '9', 'Power is higher when the user weighs more than the target, up to a maximum of 120.', 'Inflicts [regular damage]{mechanic:regular-damage}.  The greater the user''s weight compared to the target''s, the higher power this move has, to a maximum of 120.

User''s weight                    | Power
-------------------------------- | ----:
Up to 2× the target''s weight     |    40
Up to 3× the target''s weight     |    60
Up to 4× the target''s weight     |    80
Up to 5× the target''s weight     |   100
More than 5× the target''s weight |   120
');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('293', '9', 'Hits any Pokémon that shares a type with the user.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Only Pokémon that share a type with the user will take damage from this move.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('294', '9', 'Power is higher when the user has greater Speed than the target, up to a maximum of 150.', 'Inflicts [regular damage]{mechanic:regular-damage}.  The greater the user''s [Speed]{mechanic:speed} compared to the target''s, the higher power this move has, to a maximum of 150.

User''s Speed                     | Power
-------------------------------- | ----:
Up to 2× the target''s Speed      |    60
Up to 3× the target''s Speed      |    80
Up to 4× the target''s Speed      |   120
More than 4× the target''s Speed  |   150
');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('295', '9', 'Changes the target''s type to Water.', 'Changes the target to pure []{type:water}-type until it leaves the field.  If the target has []{ability:multitype}, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('296', '9', 'Inflicts regular damage.  Raises the user''s Speed by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Raises the user''s [Speed]{mechanic:speed} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('297', '9', 'Lowers the target''s Special Defense by two stages.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Lowers the target''s [Special Defense]{mechanic:special-defense} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('298', '9', 'Calculates damage with the target''s attacking stat.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Damage is calculated using the target''s attacking stat rather than the user''s.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('299', '9', 'Changes the target''s ability to Simple.', 'Changes the target''s ability to []{ability:simple}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('300', '9', 'Copies the user''s ability onto the target.', 'Changes the target''s ability to match the user''s.  This effect ends when the target leaves battle.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('301', '9', 'Makes the target act next this turn.', 'The target will act next this turn, regardless of [Speed]{mechanic:speed} or move priority.
If the target has already acted this turn, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('302', '9', 'Has double power if it''s used more than once per turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If []{move:round} has already been used this turn, this move''s power is doubled.  After this move is used, any other Pokémon using it this turn will immediately do so (in the order they would otherwise act), regardless of [Speed]{mechanic:speed} or priority.  Pokémon using other moves will then continue to act as usual.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('303', '9', 'Power increases by 100% for each consecutive use by any friendly Pokémon, to a maximum of 200.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If any friendly Pokémon used this move earlier this turn or on the previous turn, that use''s power is added to this move''s power, to a maximum of 200.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('304', '9', 'Ignores the target''s stat modifiers.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Damage calculation ignores the target''s [stat modifiers]{mechanic:stat-modifiers}, including [evasion]{mechanic:evasion}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('305', '9', 'Removes all of the target''s stat modifiers.', 'Inflicts [regular damage]{mechanic:regular-damage}.  All of the target''s [stat modifiers]{mechanic:stat-modifiers} are reset to zero.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('306', '9', 'Power is higher the more the user''s stats have been raised, to a maximum of 31×.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Power is increased by 100% its original value for every [stage]{mechanic:stage} any of the user''s stats have been raised.  [Accuracy]{mechanic:accuracy}, [evasion]{mechanic:evasion}, and lowered stats do not affect this move''s power.  For a Pokémon with all five stats modified to +6, this move''s power is 31×.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('307', '9', 'Prevents any priority moves from hitting friendly Pokémon this turn.', 'Moves with priority greater than 0 will not hit friendly Pokémon for the remainder of this turn.  If the user is last to act this turn, this move will [fail]{mechanic:fail}.

If the user successfully used []{move:detect}, []{move:endure}, []{move:protect}, []{move:quick-guard}, or []{move:wide-guard} on the last turn, this move has a 50% chance to [fail]{mechanic:fail}.

This move cannot be selected by []{move:assist} or []{move:metronome}.
');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('308', '9', 'User switches places with the friendly Pokémon opposite it.', 'User switches position on the field with the friendly Pokémon opposite it.  If the user is in the middle position in a triple battle, or there are no other friendly Pokémon, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('309', '9', 'Raises user''s Attack, Special Attack, and Speed by two stages.  Lower user''s Defense and Special Defense by one stage.', 'Raises the user''s [Attack]{mechanic:attack}, [Special Attack]{mechanic:special-attack}, and [Speed]{mechanic:speed} by two [stages]{mechanic:stage} each.  Lowers the user''s [Defense]{mechanic:defense} and [Special Defense]{mechanic:special-defense} by one []{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('310', '9', 'Heals the target for half its max HP.', 'Heals the target for half its max [HP]{mechanic:hp}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('311', '9', 'Has double power if the target has a major status ailment.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target has a [major status ailment]{mechanic:major-status-ailment}, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('312', '9', 'Carries the target high into the air, dodging all attacks against either, and drops it next turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User carries the target high into the air for one turn, during which no moves will hit either Pokémon and neither can act.  On the following turn, the user drops the target, inflicting damage and ending the effect.

If the target is []{type:flying}-type, this move will function as normal but inflict no damage.

[]{move:gust}, []{move:hurricane}, []{move:sky-uppercut}, []{move:smack-down}, []{move:thunder}, []{move:twister}, and []{move:whirlwind} can hit both the user and the target during this effect.  []{move:gust} and []{move:twister} will additionally have double power.

The damage from []{move:hail} and []{move:sandstorm} still applies during this effect.

Either Pokémon may be hit during this effect if also under the effect of []{move:lock-on}, []{move:mind-reader}, or []{ability:no-guard}.

This move cannot be used while []{move:gravity} is in effect.

This move cannot be selected by []{move:sleep-talk}.

*Bug*: If []{move:gravity} is used during a double or triple battle while this move is in effect, this move is not correctly canceled on the target, and it remains high in the air indefinitely.  As this move prevents the target from acting, the only way to subsequently remove it from the field is to faint it.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('313', '9', 'Raises the user''s Attack by one stage and its Speed by two stages.', 'Raises the user''s [Attack]{mechanic:attack} by one [stage]{mechanic:stage} and its [Speed]{mechanic:speed} by two stages.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('314', '9', 'Ends wild battles.  Forces trainers to switch Pokémon.', 'Inflicts [regular damage]{mechanic:regular-damage}, then [switches]{mechanic:switch-out} the target out for another of its trainer''s Pokémon, selected at random.

If the target is under the effect of []{move:ingrain} or []{ability:suction-cups}, or it has a []{move:substitute}, or its Trainer has no more usable Pokémon, it will not be switched out.  If the target is a wild Pokémon, the battle ends instead.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('315', '9', 'Destroys the target''s held berry.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the target is [holding]{mechanic:held-item} a [berry]{mechanic:berry}, it''s destroyed and cannot be used in response to this move.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('316', '9', 'Makes the target act last this turn.', 'Forces the target to act last this turn, regardless of [Speed]{mechanic:speed} or move [priority]{mechanic:priority}.  If the target has already acted this turn, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('317', '9', 'Raises the user''s Attack and Special Attack by one stage.', 'Raises the user''s [Attack]{mechanic:attack} and [Special Attack]{mechanic:special-attack} by one [stage]{mechanic:stage} each.  During []{move:sunny-day}, raises both stats by two stages.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('318', '9', 'Has double power if the user has no held item.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If the user has no [held item]{mechanic:held-item}, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('319', '9', 'User becomes the target''s type.', 'User''s type changes to match the target''s.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('320', '9', 'Has double power if a friendly Pokémon fainted last turn.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If a friendly Pokémon fainted on the previous turn, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('321', '9', 'Inflicts damage equal to the user''s remaining HP.  User faints.', 'Inflicts damage equal to the user''s remaining [HP]{mechanic:hp}.  User faints.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('322', '9', 'Raises the user''s Special Attack by three stages.', 'Raises the user''s [Special Attack]{mechanic:special-attack} by three [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('323', '9', 'Raises the user''s Attack, Defense, and accuracy by one stage each.', 'Raises the user''s [Attack]{mechanic:attack}, [Defense]{mechanic:defense}, and [accuracy]{mechanic:accuracy} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('324', '9', 'Gives the user''s held item to the target.', 'Transfers the user''s [held item]{mechanic:held-item} to the target.  If the user has no held item, or the target already has a held item, this move will [fail]{mechanic:fail}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('325', '9', 'With [Grass Pledge]{move:grass-pledge}, halves opposing Pokémon''s Speed for four turns.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If a friendly Pokémon used []{move:grass-pledge} earlier this turn, all opposing Pokémon have halved [Speed]{mechanic:speed} for four turns (including this one).');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('326', '9', 'With [Water Pledge]{move:water-pledge}, doubles the effect chance of friendly Pokémon''s moves for four turns.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If a friendly Pokémon used []{move:water-pledge} earlier this turn, moves used by any friendly Pokémon have doubled effect chance for four turns (including this one).');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('327', '9', 'With [Fire Pledge]{move:fire-pledge}, damages opposing Pokémon for 1/8 their max HP every turn for four turns.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If a friendly Pokémon used []{move:fire-pledge} earlier this turn, all opposing Pokémon will take 1/8 their max [HP]{mechanic:hp} in damage at the end of every turn for four turns (including this one).');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('328', '9', 'Raises the user''s Attack and Special Attack by one stage each.', 'Raises the user''s [Attack]{mechanic:attack} and [Special Attack]{mechanic:special-attack} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('329', '9', 'Raises the user''s Defense by three stages.', 'Raises the user''s [Defense]{mechanic:defense} by three [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('330', '9', 'Has a $effect_chance% chance to put the target to sleep.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to put the target to [sleep]{mechanic:sleep}.
If the user is a []{pokemon:meloetta}, it will toggle between Aria and Pirouette Forme.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('331', '9', 'Lowers the target''s Speed by one stage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Lowers the target''s [Speed]{mechanic:speed} by one [stage]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('332', '9', 'Requires a turn to charge before attacking.  Has a $effect_chance% chance to paralyze the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [paralyze]{mechanic:paralysis} the target.  User charges for one turn before attacking.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('333', '9', 'Requires a turn to charge before attacking.  Has a $effect_chance% chance to [burn]{mechanic:burn} the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [burn]{mechanic:burn} the target.  User charges for one turn before attacking.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('335', '9', 'Lowers the user''s Defense, Special Defense, and Speed by one stage each.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Lowers the user''s [Defense]{mechanic:defense}, [Special Defense]{mechanic:special-defense}, and [Speed]{mechanic:speed} by one [stage]{mechanic:stage} each.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('336', '9', 'With [Fusion Bolt]{move:fusion-bolt}, inflicts double damage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If a friendly Pokémon used []{move:fusion-bolt} earlier this turn, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('337', '9', 'With [Fusion Flare]{move:fusion-flare}, inflicts double damage.', 'Inflicts [regular damage]{mechanic:regular-damage}.  If a friendly Pokémon used []{move:fusion-flare} earlier this turn, this move has double power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('338', '9', 'Has a $effect_chance% chance to confuse the target.', 'Inflicts [regular damage]{mechanic:regular-damage}.  Has a $effect_chance% chance to [confuse]{mechanic:confuse} the target.

This move can hit Pokémon under the effect of []{move:bounce}, []{move:fly}, or []{move:sky-drop}.

During []{move:rain-dance}, this move has 100% accuracy.  During []{move:sunny-day}, this move has 50% accuracy.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('339', '9', 'Deals both []{type:fighting} and []{type:flying}-type damage.', 'Deals both []{type:fighting} and []{type:flying}-type damage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('340', '9', 'Protects all friendly Pokémon from damaging moves.  Only works on the first turn after the user is sent out.', 'Protects all friendly Pokémon from damaging moves.  Only works on the first turn after the user is sent out.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('341', '9', 'Uses up the user''s berry.  Fails if it is not holding one.', 'Uses up the user''s berry.  Fails if it is not holding one.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('342', '9', 'Raises friendly []{type:grass} Pokémon''s Attack and Special Attack.', 'Raises friendly []{type:grass} Pokémon''s Attack and Special Attack.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('343', '9', 'Lowers opponents'' Speed by one stage when they enter battle.', 'Lowers opponents'' Speed by one stage when they enter battle.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('344', '9', 'Raises the user''s Attack by two stages if it KOs the target.', 'Raises the user''s Attack by two stages if it KOs the target.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('345', '9', 'Adds []{type:ghost} to the target''s types.', 'Adds []{type:ghost} to the target''s types.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('346', '9', 'Lower''s the target''s Attack and Special Attack by one stage.', 'Lower''s the target''s Attack and Special Attack by one stage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('347', '9', 'Changes []{type:normal} moves to []{type:electric} moves.', 'Changes []{type:normal} moves to []{type:electric} moves.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('348', '9', 'Heals the user for half the total damage dealt to all targets.', 'Heals the user for half the total damage dealt to all targets.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('349', '9', 'Adds []{type:grass} to the target''s types.', 'Adds []{type:grass} to the target''s types.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('350', '9', 'Super-effective against []{type:water}-types.', 'Super-effective against []{type:water}-types.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('351', '9', 'Lowers all targets'' Attack and Special Attack by one stage.  Makes the user switch out.', 'Lowers all targets'' Attack and Special Attack by one stage.  Makes the user switch out.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('352', '9', 'Inverts the target''s stat modifiers.', 'Inverts the target''s stat modifiers.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('353', '9', 'Drains 75% of the damage inflicted to heal the user.', 'Drains 75% of the damage inflicted to heal the user.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('354', '9', 'Protects all friendly Pokémon from non-damaging moves.', 'Protects all friendly Pokémon from non-damaging moves.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('355', '9', 'Raises friendly []{type:grass} Pokémon''s Defense.', 'Raises friendly []{type:grass} Pokémon''s Defense.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('356', '9', 'For five turns, heals all Pokémon on the ground for 1/16 their max HP each turn and strengthens their []{type:grass} moves to 1.5× their power.', 'For five turns, heals all Pokémon on the ground for 1/16 their max HP each turn and strengthens their []{type:grass} moves to 1.5× their power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('357', '9', 'For five turns, protects all Pokémon on the ground from major status ailments and confusion and weakens their []{type:dragon} moves to 0.5× their power.', 'For five turns, protects all Pokémon on the ground from major status ailments and confusion and weakens their []{type:dragon} moves to 0.5× their power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('358', '9', 'Changes the target''s move''s type to []{type:electric} if it hasn''t moved yet this turn.', 'Changes the target''s move''s type to []{type:electric} if it hasn''t moved yet this turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('359', '9', 'Prevents all Pokémon from fleeing or switching out during the next turn.', 'Prevents all Pokémon from fleeing or switching out during the next turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('360', '9', 'Blocks damaging attacks and lowers attacking Pokémon''s Attack by two stages on contact.  Switches Aegislash to Shield Forme.', 'Blocks damaging attacks and lowers attacking Pokémon''s Attack by two stages on contact.  Switches Aegislash to Shield Forme.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('361', '9', 'Lowers the target''s Special Attack by one stage.', 'Lowers the target''s Special Attack by one stage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('362', '9', 'Blocks damaging attacks and damages attacking Pokémon for 1/8 their max HP.', 'Blocks damaging attacks and damages attacking Pokémon for 1/8 their max HP.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('363', '9', 'Raises all friendly Pokémon''s Special Defense by one stage.', 'Raises all friendly Pokémon''s Special Defense by one stage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('364', '9', 'Lowers the target''s Attack, Special Attack, and Speed by one stage if it is poisoned.', 'Lowers the target''s Attack, Special Attack, and Speed by one stage if it is poisoned.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('365', '9', 'Damages the target if it uses a []{type:fire} move.', 'Damages the target if it uses a []{type:fire} move.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('366', '9', 'Takes one turn to charge, then raises the user''s Special Attack, Special Defense, and Speed by one stage.', 'Takes one turn to charge, then raises the user''s Special Attack, Special Defense, and Speed by one stage.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('367', '9', 'Raises Defense and Special Defense by one stage for friendly Pokémon with with []{ability:plus} or []{ability:minus}.', 'Raises Defense and Special Defense by one stage for friendly Pokémon with with []{ability:plus} or []{ability:minus}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('368', '9', 'For five turns, prevents Pokémon on the ground from sleeping and strengthens their []{type:electric} moves to 1.5× their power.', 'For five turns, prevents Pokémon on the ground from sleeping and strengthens their []{type:electric} moves to 1.5× their power.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10001', '9', 'Has an increased chance for a critical hit in Hyper Mode.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User''s [critical hit]{mechanic:critical-hit} rate is one level higher when using this move while in [hyper mode]{mechanic:hyper-mode}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10002', '9', 'User receives 1/2 its HP in recoil.', 'Inflicts [regular damage]{mechanic:regular-damage}.  User takes 1/2 of its current [HP]{mechanic:hp} in recoil.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10003', '9', 'Halves HP of all Pokémon on the field.  Must recharge', 'Halves [HP]{mechanic:hp} of all Pokémon on the field.  User loses its next turn to "recharge", and cannot attack or [switch]{mechanic:switch} out during that turn.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10004', '9', 'Lowers the target''s evasion by two stages.', 'Lowers the target''s [evasion]{mechanic:evasion} by two [stages]{mechanic:stage}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10005', '9', 'Removes [Light Screen]{move:light-screen}, [Reflect]{move:reflect}, and [Safeguard]{move:safeguard}.', 'Removes the effects of []{move:light-screen}, []{move:reflect}, and []{move:safeguard}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10006', '9', 'Changes the weather to Shadow Sky for five turns.', 'Changes the weather to Shadow Sky for five turns.  Pokémon other than []{type:shadow} Pokémon take 1/16 their max [HP]{mechanic:hp} at the end of every turn.  This move is typeless for the purposes of []{move:weather-ball}.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('107', '10', 'Zabrání protivníkovi opustit zápas.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('112', '10', 'Znemožní jakémukoli útoku trefit toto kolo uživatele.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('61', '10', 'Sníží protivníkovi Obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('66', '10', 'Na pět kol sníží zranění z fyzických útoků o 50%.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('73', '10', 'Má $effect_chance% šanci snížit protivníkovu Speciální obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('186', '10', 'Způsobí dvojnásobné zranění, pokud uživatel už byl toto kolo zraněn.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('118', '10', 'Kdy je tento útok používán stále dokola, jeho síla se prvních 5 kol vždy zdvojnásobí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('205', '10', 'Po zranění protivníka sníží uživatelův Speciální útok o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('6', '10', 'Má $effect_chance% šanci zmrazit protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('116', '10', 'Na pět kol způsobí písečnou bouři.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('288', '10', 'Zruší imunitu na Zemní typ.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('4', '10', 'Vyléčí uživatele o polovinu způsobeného zranění.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('101', '10', 'Sníží PP protivníkova posledně použitého útoku o 4.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('106', '10', 'Vezme protivníkovi drženou věc.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('28', '10', 'Zaútočí každé kolo, 2-3×; poté zmate uživatele.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('35', '10', 'Rozsype peníze v hodnotě 5× úrovně uživatele.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('125', '10', 'Po pět kol chrání pokémony uživatelově straně proti změnám stavu a zmatení.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('40', '10', 'První kolo se nabíjí, zaútočí až v druhém.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('148', '10', 'Normálně zraňuje; zasáhne i pokémony pod zemí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('59', '10', 'Sníží protivníkův Útok o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('18', '10', 'Vždy se trefí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('25', '10', 'Sníží protivníkovu Mrštnost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10006', '10', 'Na pět kol zatemní oblohu.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('133', '10', 'Uzdraví uživatele za 1/2 max. HP. Ovlivněno počasím.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('138', '10', 'Na pět kol způsobí, že slunce svítí jasněji než normálně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('49', '10', 'Zraní uživatele za 1/4 způsobeného zranění.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('323', '10', 'Zvýší uživatelův Útok, Obranu a Přesnost útok po jednom stupni.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('70', '10', 'Má $effect_chance% šanci snížit protivníkovu Obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('157', '10', 'Zvýší uživatelovu Obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('328', '10', 'Zvýší uživatelův Útok a Speciální útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('169', '10', 'Sníží protivníkův Útok a Speciální útok o dva stupně. Uživatel omdlí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('190', '10', 'Sníží protivníkovo HP na tolik, kolik má uživatel.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('63', '10', 'Sníží protivníkovu Speciální obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('313', '10', 'Zvýší uživateli Útok o jednu a Rychlost o dvě úrovně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('104', '10', 'Normálně zraňuje, bez vedlejších účinků.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('207', '10', 'Zvýší uživatelovu Obranu a Speciální obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('212', '10', 'Zvýší uživatelův Speciální útok a Speciální obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('53', '10', 'Zvýší uživateli Rychlost o dvě úrovně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('231', '10', 'Má dvojnásobnou sílu, pokud protivník už toto kolo útočil.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('77', '10', 'Má $effect_chance% šanci zmást protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('248', '10', 'Změní protivníkovu schopnost na Insomnii.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('82', '10', 'Pokud je uživatel po použití tohoto útoku zasažen, zvýší se mu Útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('11', '10', 'Zvýší uživatelův Útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('110', '10', 'Duchové obětují 1/2 max. HP na kletbu, která protivníka zraňuje každé kolo. Ostatním sníží Rychlost a zvýší Útok a Obranu.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('197', '10', 'Silnější proti těžším protivníkům. Maximální síla je 120.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('136', '10', 'Síla a typ závisí na uživatelových genech. Síla může být od 30 do 70.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('160', '10', 'Používá se po několik kol stále dokola. Mezitím pokémoni nemohou usnout.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('1', '10', 'Normálně zraňuje, bez vedlejších účinků.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('304', '10', 'Ignoruje změny protivníkových statů.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('145', '10', 'Způsobí dvakrát více speciálního zranění, než kolik utržil uživatel když byl naposledy zasažen.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('258', '10', 'Normálně zraňuje. Zasáhne i protivníky pod vodou.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('20', '10', 'Sníží protivníkovu Obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('117', '10', 'Uživateli toto kolo zůstane aspoň 1 HP.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('39', '10', 'Vyřadí protivníka na jeden zásah.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('122', '10', 'Tím silnější, čím je uživatel ochočenější. Maximální síla je 102.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('44', '10', 'Má vysokou šanci na kritický zásah.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('51', '10', 'Zvýší uživatelův Útok o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('80', '10', 'Převede 1/4 uživatelova HP do figurky, která ho chrání před dalším zraněním a změnami stavu, dokud se nerozbije.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('183', '10', 'Po zranění sníží uživateli Útok a Obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('29', '10', 'Okamžitě ukončí zápas s divokým pokémonem. Trenéry donutí vyměnit pokémona.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('303', '10', 'Síla se zvýší o 100% za každé po sobě jdoucí použití pokémonem na uživatelově straně, až do max. síly 200.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('34', '10', 'Vážně otráví protivníka; jed ubere každé kolo více zranění.', '[Těžce otráví]{mechanic:bad-poison} protivníka.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('219', '10', 'Sníží uživatelovu Rychlost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('332', '10', 'První kolo se nabíjí, zaútočí až ve druhém. Má $effect_chance% šanci paralyzovat protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('206', '10', 'Sníží protivníkův Útok a Obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('209', '10', 'Zvýší uživatelův Útok a Obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('317', '10', 'Zvýší uživatelův Útok a Speciální útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('79', '10', 'Vždy se trefí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('322', '10', 'Zvýší uživatelův Speciální útok o tři stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('329', '10', 'Zvýší uživatelovu Obranu o tři stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('120', '10', 'Kdy je tento útok používán stále dokola, jeho síla se prvních 5 kol vždy zdvojnásobí; poté zůstane 32× silnější.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('223', '10', 'Síla a typ závisí na drženém ovoci.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('69', '10', 'Má $effect_chance% šanci snížit protivníkův Útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('74', '10', 'Má $effect_chance% šanci snížit protivníkovu Přesnost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('3', '10', 'Má $effect_chance% šanci otrávit protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('262', '10', 'Po 2-5 kol nedovolí protivníkovi opustit zápas a uděluje mu zranění ve výši 1/16 max. HP za kolo.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('93', '10', 'Má $effect_chance% šanci, že se protivník zalekne. Povede se pouze při spánku.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('98', '10', 'Použije náhodný z uživatelových ostatních útoků. Povede se pouze ze spánku.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('213', '10', 'Zvýší uživatelů Útok a Rychlost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('32', '10', 'Má $effect_chance% šanci, že se protivník zalekne.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('147', '10', 'Má $effect_chance% šanci, že se protivník zalekne.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('152', '10', 'První kolo se nabíjí, zaútočí až v druhém.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('171', '10', 'Pokud uživatel před zaútočením utrží zranění, tento útok se nepovede.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('14', '10', 'Zvýší uživatelův Speciální útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('17', '10', 'Zvýší uživatelovu Mrštnost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('284', '10', 'Způsobí dvojnásobné zranění, pokud je protivník otávený.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('291', '10', 'Zvýší uživatelův Speciální útok, Speciální obranu a Rychlost po jednom stupni.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('38', '10', 'Uživatel na dvě kola usne, čímž se úplně vyléčí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('296', '10', 'Nomálně zraňuje. Zvýší uživatelovu Rychlost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('137', '10', 'Na pět kol způsobí déšť.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('315', '10', 'Zničí protivníkovi držené ovoce.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('182', '10', 'Nedovolí uživateli opustit zápas a léčí ho za 1/16 max. HP za kolo.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('36', '10', 'Na pět kol sníží zranění ze speciálních útoků o 50%.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('302', '10', 'Má dvojnásobnou sílu, pokud se použije vícekrát v jednom kole.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('55', '10', 'Zvýší uživatelovu Speciální obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('60', '10', 'Sníží protivníkovu Obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('67', '10', 'Otráví protivníka.', '[Otráví]{mechanic:poison} protivníka.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('72', '10', 'Má $effect_chance% šanci snížit protivníkův Speciální útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('175', '10', 'Zvýší uživatelovu Speciální obranu o jeden stupeň. Jeho Elektrické útoky mají v příštím kole dvojnásobnou sílu.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('21', '10', 'Sníží protivníkovu Rychlost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('165', '10', 'Na pět kol přivolá padající kroupy.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('170', '10', 'Při popálení, paralýze nebo otravě má dvojnásobnou sílu.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('81', '10', 'Uživatel se vzdá následujícího kola; musí dobít energii.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('189', '10', 'Přinutí protivníka pustit drženou věc.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('309', '10', 'Zvýší uživatelův Útok, Obranu a Rychlost o dva stupně. Sníží mu Obranu a Speciální obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('314', '10', 'Ukončí zápas s divokým pokémonem. Trenéry donutí vyměnit pokémona.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('338', '10', 'Má $effect_chance% šanci zmást protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('267', '10', 'Zraňuje protivníkovy pokémony, když jsou vysláni do zápasu.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('119', '10', 'Zvýší protivníkův Útok o dva stupně, a zmate ho.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('124', '10', 'Tím silnější, čím je uživatel méně ochočený. Maximální síla je 102.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('85', '10', 'Zasadí do protivníka semínka, která mu každé kolo ubírají HP a léčí uživatele.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('7', '10', 'Má $effect_chance% šanci paralyzovat protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('90', '10', 'Způsobí dvakrát více fyzického zranění, než kolik utržil uživatel když byl naposledy zasažen.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('257', '10', 'Uživatel se zahrabe pod zem, kde se vyhýbá všem útokům. V následujícím kole zaútočí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('12', '10', 'Zvýší uživatelovu Obranu o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('19', '10', 'Sníží protivníkův Útok o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('278', '10', 'Zvýší uživatelův Útok a Přesnost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('109', '10', 'Zvýší uživatelovu Mrštnost obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('24', '10', 'Sníží protivníkovu Přesnost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('121', '10', 'Protivník se zamiluje do uživatele. Poté má 50% šanci na něj nezaútočit.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('151', '10', 'Má $effect_chance% šanci, že se protivník zalekne.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('234', '10', 'Hodí na protivníka drženou věc; síla závisí na druhu věci.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('2', '10', 'Uspí protivníka.', '[Uspí]{mechanic:sleep} protivníka.');
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('9', '10', 'Funguje jen na spící protivníky. Vyléčí uživatele o polovinu způsobeného zranění.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('10004', '10', 'Sníží protivníkovu Mrštnost o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('187', '10', 'Zruší Reflect a Light Screen.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('30', '10', 'Zaútočí 2-5× za sebou.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('54', '10', 'Zvýší uživatelův Speciální útok o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('141', '10', 'Má $effect_chance% šanci uživateli zvýšit všechny staty o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('146', '10', 'Zvýší uživateli Obranu o jeden stupeň. Zaútočí až v následujícím kole.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('153', '10', 'Má $effect_chance% šanci paralyzovat protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('331', '10', 'Sníží protivníkovi Obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('174', '10', 'Použije útok závislý na okolním prostředí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('261', '10', 'Má $effect_chance% šanci zmrazit protivníka.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('266', '10', 'Sníží protivníkův Speciální útok o dva stupně, pokud je opačného pohlaví.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('198', '10', 'Má $effect_chance% šanci způsobit změnu stavu. Jakou, to závisí na okolním prostředí.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('285', '10', 'Zvýší uživatelovu Rychlost o dva stupně a sníží mu hmotnost na polovinu.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('297', '10', 'Sníží protivníkovu Speciální obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('52', '10', 'Zvýší uživatelovu Obranu o dva stupně.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('71', '10', 'Má $effect_chance% šanci snížit protivníkovu Rychlost o jeden stupeň.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('83', '10', 'Zkopíruje posledně použitý protivníkův útok.', NULL);
insert into move_effect_prose ("move_effect_id", "local_language_id", "short_effect", "effect") values ('88', '10', 'Udělí zranění v HP rovné uživatelovi úrovni.', 'Udělí zranění v HP rovné uživatelovi úrovni. Typové imunity platí, ale ostatní efekty typů jsou ignorovány.');
COMMIT;
