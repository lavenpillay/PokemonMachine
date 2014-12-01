
-- Table: ability_prose
CREATE TABLE ability_prose ( 
    ability_id        INTEGER NOT NULL,
    local_language_id INTEGER NOT NULL,
    short_effect      TEXT,
    effect            TEXT,
    PRIMARY KEY ( ability_id, local_language_id ),
    FOREIGN KEY ( ability_id ) REFERENCES abilities ( id ),
    FOREIGN KEY ( local_language_id ) REFERENCES languages ( id ) 
);

INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (1, 9, 'Has a 10% chance of making target Pok�mon [flinch]{mechanic:flinch} with each hit.', 'This Pok�mon''s damaging moves have a 10% chance to make the target [flinch]{mechanic:flinch} with each hit if they do not already cause flinching as a secondary effect.

This ability does not stack with a held item.

Overworld: The wild encounter rate is halved while this Pok�mon is first in the party.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (2, 9, 'Summons [rain]{mechanic:rain} that lasts indefinitely upon entering battle.', 'The [weather]{mechanic:weather} changes to [rain]{mechanic:rain} when this Pok�mon enters battle and does not end unless replaced by another weather condition.

If multiple Pok�mon with this ability, []{ability:drought}, []{ability:sand-stream}, or []{ability:snow-warning} are sent out at the same time, the abilities will activate in order of [Speed]{mechanic:speed}, respecting []{move:trick-room}.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pok�mon will stay.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (3, 9, 'Raises [Speed]{mechanic:speed} one [stage]{mechanic:stat-modifier} after each turn.', 'This Pok�mon''s [Speed]{mechanic:speed} rises one [stage]{mechanic:stat-modifier} after each turn.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (4, 9, 'Protects against [critical hits]{mechanic:critical-hit}.', 'Moves cannot score [critical hits]{mechanic:critical-hit} against this Pok�mon.

This ability functions identically to []{ability:shell-armor}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (5, 9, 'Prevents being KOed from full [HP]{mechanic:hp}, leaving 1 HP instead.  Protects against the one-hit KO moves regardless of HP.', 'When this Pok�mon is at full [HP]{mechanic:hp}, any hit that would knock it out will instead leave it with 1 HP.  Regardless of its current HP, it is also immune to the one-hit KO moves: []{move:fissure}, []{move:guillotine}, []{move:horn-drill}, and []{move:sheer-cold}.

If this Pok�mon is holding a []{item:focus-sash}, this ability takes precedence and the item will not be consumed.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (6, 9, 'Prevents []{move:self-destruct}, []{move:explosion}, and []{ability:aftermath} from working while the Pok�mon is in battle.', 'While this Pok�mon is in battle, []{move:self-destruct} and []{move:explosion} will fail and []{ability:aftermath} will not take effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (7, 9, 'Prevents [paralysis]{mechanic:paralysis}.', 'This Pok�mon cannot be [paralyzed]{mechanic:paralysis}.

If a Pok�mon is paralyzed and acquires this ability, its paralysis is healed; this includes when regaining a lost ability upon leaving battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (8, 9, 'Increases [evasion]{mechanic:evasion} to 1.25� during a [sandstorm]{mechanic:sandstorm}.  Protects against sandstorm damage.', 'During a [sandstorm]{mechanic:sandstorm}, this Pok�mon has 1.25� its [evasion]{mechanic:evasion}, and it does not take sandstorm damage regardless of type.

The evasion bonus does not count as a [stat modifier]{mechanic:stat-modifier}.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is halved in a sandstorm.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (9, 9, 'Has a 30% chance of [paralyzing]{mechanic:paralysis} attacking Pok�mon on contact.', 'Whenever a move makes contact with this Pok�mon, the move''s user has a 30% chance of being [paralyzed]{mechanic:paralysis}.

Pok�mon that are immune to []{type:electric}-type moves can still be paralyzed by this ability.

Overworld: If the lead Pok�mon has this ability, there is a 50% chance that encounters will be with an []{type:electric} Pok�mon, if applicable.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (10, 9, 'Absorbs []{type:electric} moves, healing for 1/4 max [HP]{mechanic:hp}.', 'Whenever an []{type:electric}-type move hits this Pok�mon, it heals for 1/4 of its maximum [HP]{mechanic:hp}, negating any other effect on it.

This ability will not take effect if this Pok�mon is []{type:ground}-type and thus immune to Electric moves.  Electric moves will ignore this Pok�mon''s []{move:substitute}.

This effect includes non-damaging moves, i.e. []{move:thunder-wave}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (11, 9, 'Absorbs []{type:water} moves, healing for 1/4 max [HP]{mechanic:hp}.', 'Whenever a []{type:water}-type move hits this Pok�mon, it heals for 1/4 of its maximum [HP]{mechanic:hp}, negating any other effect on it.

Water moves will ignore this Pok�mon''s []{move:substitute}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (12, 9, 'Prevents [infatuation]{mechanic:infatuation} and protects against []{move:captivate}.', 'This Pok�mon cannot be [infatuated]{mechanic:infatuation} and is immune to []{move:captivate}.

If a Pok�mon is infatuated and acquires this ability, its infatuation is cleared.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (13, 9, 'Negates all effects of [weather]{mechanic:weather}, but does not prevent the weather itself.', 'While this Pok�mon is in battle, [weather]{mechanic:weather} can still be in play, but will not have any of its effects.

This ability functions identically to []{ability:air-lock}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (14, 9, 'Increases moves'' [accuracy]{mechanic:accuracy} to 1.3�.', 'This Pok�mon''s moves have 1.3� their [accuracy]{mechanic:accuracy}.

This ability has no effect on the one-hit KO moves ([]{move:fissure}, []{move:guillotine}, []{move:horn-drill}, and []{move:sheer-cold}).

Overworld: If the first Pok�mon in the party has this ability, the chance of a wild Pok�mon holding a particular item is raised from 50%, 5%, or 1% to 60%, 20%, or 5%, respectively.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (15, 9, 'Prevents [sleep]{mechanic:sleep}.', 'This Pok�mon cannot be [asleep]{mechanic:sleep}.

This causes []{move:rest} to fail altogether.  If a Pok�mon is asleep and acquires this ability, it will immediately wake up; this includes when regaining a lost ability upon leaving battle.

This ability functions identically to []{ability:vital-spirit} in battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (16, 9, 'Changes type to match when hit by a damaging move.', 'Whenever this Pok�mon takes damage from a move, the Pok�mon''s type changes to match the move.

If the Pok�mon has two types, both are overridden.  The Pok�mon must directly take damage; for example, moves blocked by a []{move:substitute} will not trigger this ability, nor will moves that deal damage indirectly, such as []{move:spikes}.

This ability takes effect on only the last hit of a multiple-hit attack.

In Pok�mon Colosseum and XD: Gale of Darkness, this ability does not take effect on Shadow-type moves.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (17, 9, 'Prevents [poison]{mechanic:poison}.', 'This Pok�mon cannot be [poisoned]{mechanic:poison}.  This includes bad poison.

If a Pok�mon is poisoned and acquires this ability, its poison is healed; this includes when regaining a lost ability upon leaving battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (18, 9, 'Protects against []{type:fire} moves.  Once one has been blocked, the Pok�mon''s own Fire moves inflict 1.5� damage until it leaves battle.', 'This Pok�mon is immune to []{type:fire}-type moves.  Once this Pok�mon has been hit by a Fire move, its own Fire moves will inflict 1.5� as much damage until it leaves battle.

This ability has no effect while the Pok�mon is [frozen]{mechanic:freezing}.  The Fire damage bonus is retained even if the Pok�mon is frozen and thawed or the ability is lost or disabled.  Fire moves will ignore this Pok�mon''s []{move:substitute}.  This ability takes effect even on non-damaging moves, i.e. []{move:will-o-wisp}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (19, 9, 'Protects against incoming moves'' extra effects.', 'This Pok�mon is immune to the extra effects of moves used against it.

An extra effect is a move''s chance, listed as an "effect chance", to inflict a [status ailment]{mechanic:status-ailment}, cause a [stat change]{mechanic:stat-modifier}, or make the target [flinch]{mechanic:flinching} in addition to the move''s main effect.  For example, []{move:thunder-shock}''s [paralysis]{mechanic:paralysis} is an extra effect, but []{move:thunder-wave}''s is not, nor are []{move:knock-off}''s item removal and []{move:air-cutter}''s increased [critical hit]{mechanic:critial-hit} rate.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (20, 9, 'Prevents [confusion]{mechanic:confusion}.', 'This Pok�mon cannot be [confused]{mechanic:confusion}.

If a Pok�mon is confused and acquires this ability, its confusion will immediately be healed.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (21, 9, 'Prevents being forced out of battle by other Pok�mon''s moves.', 'This Pok�mon cannot be forced out of battle by moves such as []{move:whirlwind}.

[]{move:dragon-tail} and []{move:circle-throw} still inflict damage against this Pok�mon.

Overworld: If the lead Pok�mon has this ability, the success rate while fishing is increased.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (22, 9, 'Lowers opponents'' [Attack]{mechanic:attack} one [stage]{mechanic:stat-modifier} upon entering battle.', 'When this Pok�mon enters battle, the opponent''s [Attack]{mechanic:attack} is lowered by one [stage]{mechanic:stat-modifier}.  In a double battle, both opponents are affected.

This ability also takes effect when acquired during a battle, but will not take effect again if lost and reobtained without leaving battle.

This ability has no effect on an opponent that has a []{move:substitute}.

Overworld: If the first Pok�mon in the party has this ability, any random encounter with a Pok�mon five or more levels lower than it has a 50% chance of being skipped.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (23, 9, 'Prevents opponents from fleeing or switching out.', 'While this Pok�mon is in battle, opposing Pok�mon cannot flee or switch out.

Other Pok�mon with this ability are unaffected.  Pok�mon with []{ability:run-away} can still flee.  Pok�mon can still switch out with the use of a move or item.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (24, 9, 'Damages attacking Pok�mon for 1/8 their max [HP]{mechanic:hp} on contact.', 'Whenever a move makes contact with this Pok�mon, the move''s user takes 1/8 of its maximum [HP]{mechanic:hp} in damage.

This ability functions identically to []{ability:iron-barbs}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (25, 9, 'Protects against damaging moves that are not [super effective]{mechanic:super-effective}.', 'This Pok�mon is immune to damaging moves that are not [super effective]{mechanic:super-effective} against it.

Moves that inflict fixed damage, such as []{move:night-shade} or []{move:seismic-toss}, are considered super effective if their types are.  Damage not directly dealt by moves, such as damage from [weather]{mechanic:weather}, a [status ailment]{mechanic:status-ailment}, or []{move:spikes}, is not prevented.

This ability cannot be copied with []{move:role-play} or traded away with []{move:skill-swap}, but it can be copied with []{ability:trace}, disabled with []{move:gastro-acid}, or changed with []{move:worry-seed}.  This Pok�mon can still use Role Play itself to lose this ability, but not Skill Swap.

If this Pok�mon has a []{move:substitute}, this ability will block moves as usual and any moves not blocked will react to the Substitute as usual.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (26, 9, 'Evades []{type:ground} moves.', 'This Pok�mon is immune to []{type:ground}-type moves, []{move:spikes}, []{move:toxic-spikes}, and []{ability:arena-trap}.

This ability is disabled during []{move:gravity} or []{move:ingrain}, or while holding an []{item:iron-ball}.  This ability is not disabled during []{move:roost}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (27, 9, 'Has a 30% chance of inflcting either [paralysis]{mechanic:paralysis}, [poison]{mechanic:poison}, or [sleep]{mechanic:sleep} on attacking Pok�mon on contact.', 'Whenever a move makes contact with this Pok�mon, the move''s user has a 30% chance of being [paralyzed]{mechanic:paralysis}, [poisoned]{mechanic:poison}, or put to [sleep]{mechanic:sleep}, chosen at random.

Nothing is done to compensate if the move''s user is immune to one of these ailments; there is simply a lower chance that the move''s user will be affected.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (28, 9, 'Copies [burns]{mechanic:burn}, [paralysis]{mechanic:paralysis}, and [poison]{mechanic:poison} received onto the Pok�mon that inflicted them.', 'Whenever this Pok�mon is [burned]{mechanic:burn}, [paralyzed]{mechanic:paralysis}, or [poisoned]{mechanic:poison}, the Pok�mon who gave this Pok�mon that ailment is also given the ailment.

This ability passes back bad poison when this Pok�mon is badly poisoned.  This ability cannot pass on a status ailment that the Pok�mon did not directly receive from another Pok�mon, such as the poison from []{move:toxic-spikes} or the burn from a []{item:flame-orb}.

Overworld: If the lead Pok�mon has this ability, wild Pok�mon have a 50% chance of having the lead Pok�mon''s nature, and a 50% chance of being given a random nature as usual, including the lead Pok�mon''s nature.  This does not work on Pok�mon received outside of battle or roaming legendaries.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (29, 9, 'Prevents stats from being [lowered]{mechanic:stat-modifier} by other Pok�mon.', 'This Pok�mon cannot have its stats [lowered]{mechanic:stat-modifier} by other Pok�mon.

This ability does not prevent any stat losses other than [stat modifiers]{mechanic:stat-modifiers}, such as the [Speed]{mechanic:speed} cut from [paralysis]{mechanic:paralysis}.  This Pok�mon can still be passed negative stat modifiers through []{move:guard-swap}, []{move:heart-swap}, or []{move:power-swap}.

This ability functions identically to []{ability:white-smoke} in battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (30, 9, 'Cures any [major status ailment]{mechanic:major-status-ailment} upon switching out.', 'This Pok�mon is cured of any [major status ailment]{mechanic:major-status-ailment} when it is switched out for another Pok�mon.

If this ability is acquired during battle, the Pok�mon is cured upon leaving battle before losing the temporary ability.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (31, 9, 'Redirects single-target []{type:electric} moves to this Pok�mon where possible.  Absorbs Electric moves, raising [Special Attack]{mechanic:special-attack} one [stage]{mechanic:stat-modifier}.', 'All other Pok�mon''s single-target []{type:electric}-type moves are redirected to this Pok�mon if it is an eligible target.  Other Pok�mon''s Electric moves raise this Pok�mon''s [Special Attack]{mechanic:special-attack} one [stage]{mechanic:stat-modifier}, negating any other effect on it, and cannot miss it.

If the move''s intended target also has this ability, the move is not redirected.  When multiple Pok�mon with this ability are possible targets for redirection, the move is redirected to the one with the highest [Speed]{mechanic:speed} stat, or, in the case of a tie, to a random tied Pok�mon.  []{move:follow-me} takes precedence over this ability.

If the Pok�mon is a []{type:ground}-type and thus immune to Electric moves, its immunity prevents the Special Attack boost.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (32, 9, 'Doubles the chance of moves'' extra effects occurring.', 'This Pok�mon''s moves have twice their usual effect chance.

An effect chance is a move''s chance to inflict a [status ailment]{mechanic:status-ailment}, cause a [stat change]{mechanic:stat-modifier}, or make the target [flinch]{mechanic:flinching} in addition to the move''s main effect.  For example, []{move:flamethrower}''s chance of [burning]{mechanic:burn} the target is doubled, but []{move:protect}''s chance of success and []{move:air-cutter}''s increased [critical hit]{mechanic:critical-hit} rate are unaffected.

[]{move:secret-power} is unaffected.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (33, 9, 'Doubles [Speed]{mechanic:speed} during [rain]{mechanic:rain}.', 'This Pok�mon''s [Speed]{mechanic:speed} is doubled during [rain]{mechanic:rain}.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (34, 9, 'Doubles [Speed]{mechanic:speed} during [strong sunlight]{mechanic:strong-sunlight}.', 'This Pok�mon''s [Speed]{mechanic:speed} is doubled during [strong sunlight]{mechanic:strong-sunlight}.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (35, 9, 'Doubles the wild encounter rate.', 'Overworld: If the lead Pok�mon has this ability, the wild encounter rate is doubled.

This ability has no effect in battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (36, 9, 'Copies an opponent''s ability upon entering battle.', 'When this Pok�mon enters battle, it copies a random opponent''s ability.

This ability cannot copy []{ability:flower-gift}, []{ability:forecast}, []{ability:illusion}, []{ability:imposter}, []{ability:multitype}, []{ability:trace}, []{ability:wonder-guard}, or []{ability:zen-mode}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (37, 9, 'Doubles [Attack]{mechanic:attack} in battle.', 'This Pok�mon''s [Attack]{mechanic:attack} is doubled while in battle.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.

This ability functions identically to []{ability:pure-power}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (38, 9, 'Has a 30% chance of [poisoning]{mechanic:poison} attacking Pok�mon on contact.', 'Whenever a move makes contact with this Pok�mon, the move''s user has a 30% chance of being [poisoned]{mechanic:poison}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (39, 9, 'Prevents [flinching]{mechanic:flinching}.', 'This Pok�mon cannot [flinch]{mechanic:flinching}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (40, 9, 'Prevents [freezing]{mechanic:freezing}.', 'This Pok�mon cannot be [frozen]{mechanic:freezing}.

If a Pok�mon is frozen and acquires this ability, it will immediately thaw out; this includes when regaining a lost ability upon leaving battle.

Overworld: If any Pok�mon in the party has this ability, each egg in the party has its [hatch counter]{mechanic:hatch-counter} decreased by 2 (rather than 1) each [step cycle]{mechanic:step-cycle}, making eggs hatch roughly twice as quickly.  This effect does not stack if multiple Pok�mon have this ability or []{ability:flame-body}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (41, 9, 'Prevents [burns]{mechanic:burn}.', 'This Pok�mon cannot be [burned]{mechanic:burn}.

If a Pok�mon is burned and acquires this ability, its burn is healed; this includes when regaining a lost ability upon leaving battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (42, 9, 'Prevents []{type:steel} opponents from fleeing or switching out.', 'While this Pok�mon is in battle, opposing []{type:steel}-type Pok�mon cannot flee or switch out.

Pok�mon with []{ability:run-away} can still flee.  Pok�mon can still switch out with the use of a move or item.

Overworld: If the lead Pok�mon has this ability, Steel-type Pok�mon have a higher encounter rate.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (43, 9, 'Protects against sound-based moves.', 'This Pok�mon is immune to moves flagged as being sound-based.

[]{move:heal-bell} is unaffected.  []{move:uproar} still prevents this Pok�mon from [sleeping]{mechanic:sleep}.  This Pok�mon can still receive a Perish Song counter through []{move:baton-pass}, and will retain a Perish Song counter if it acquires this ability after Perish Song is used.

[]{move:howl}, []{move:roar-of-time}, []{move:sonic-boom}, and []{move:yawn} are not flagged as sound-based.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (44, 9, 'Heals for 1/16 max [HP]{mechanic:hp} after each turn during [rain]{mechanic:rain}.', 'This Pok�mon heals for 1/16 of its maximum [HP]{mechanic:hp} after each turn during [rain]{mechanic:rain}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (45, 9, 'Summons a [sandstorm]{mechanic:sandstorm} that lasts indefinitely upon entering battle.', 'The [weather]{mechanic:weather} changes to a [sandstorm]{mechanic:sandstorm} when this Pok�mon enters battle and does not end unless cancelled by another weather condition.

If multiple Pok�mon with this ability, []{ability:drizzle}, []{ability:drought}, or []{ability:snow-warning} are sent out at the same time, the abilities will activate in order of [Speed]{mechanic:speed}, respecting []{move:trick-room}.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pok�mon will stay.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is halved in a sandstorm.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (46, 9, 'Increases the [PP]{mechanic:pp} cost of moves targetting the Pok�mon by one.', 'Moves targetting this Pok�mon use one extra [PP]{mechanic:pp}.

This ability stacks if multiple targets have it.  This ability still affects moves that fail or miss.  This ability does not affect ally moves that target either the entire field or just its side, nor this Pok�mon''s self-targetted moves; it does, however, affect single-targetted ally moves aimed at this Pok�mon, ally moves that target all other Pok�mon, and opponents'' moves that target the entire field.  If this ability raises a move''s PP cost above its remaining PP, it will use all remaining PP.

When this Pok�mon enters battle, all participating trainers are notified that it has this ability.

Overworld: If the lead Pok�mon has this ability, higher-levelled Pok�mon have their encounter rate increased.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (47, 9, 'Halves damage from []{type:fire} and []{type:ice} moves.', 'This Pok�mon takes half as much damage from []{type:fire}- and []{type:ice}-type moves.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (48, 9, 'Makes [sleep]{mechanic:sleep} pass twice as quickly.', 'This Pok�mon''s remaining sleep turn count falls by 2 rather than 1.

If this Pok�mon''s sleep counter is at 1, it will fall to 0 and then the Pok�mon will wake up.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (49, 9, 'Has a 30% chance of [burning]{mechanic:burn} attacking Pok�mon on contact.', 'Whenever a move makes contact with this Pok�mon, the move''s user has a 30% chance of being [burned]{mechanic:burn}.

Overworld: If any Pok�mon in the party has this ability, each egg in the party has its [hatch counter]{mechanic:hatch-counter} decreased by 2 (rather than 1) each [step cycle]{mechanic:step-cycle}, making eggs hatch roughly twice as quickly.  This effect does not stack if multiple Pok�mon have this ability or []{ability:magma-armor}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (50, 9, 'Ensures success fleeing from wild battles.', 'This Pok�mon is always successful fleeing from wild battles, even if [trapped]{mechanic:trapped} by a move or ability.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (51, 9, 'Prevents [accuracy]{mechanic:accuracy} from being [lowered]{mechanic:stat-modifier}.', 'This Pok�mon cannot have its [accuracy]{mechanic:accuracy} [lowered]{mechanic:stat-modifier}.

This ability does not prevent any accuracy losses other than [stat modifiers]{mechanic:stat-modifiers}, such as the accuracy cut from [fog]{mechanic:fog}; nor does it prevent other Pok�mon''s [evasion]{mechanic:evasion} from making this Pok�mon''s moves less accurate.  This Pok�mon can still be passed negative accuracy modifiers through []{move:heart-swap}.

Overworld: If the first Pok�mon in the party has this ability, any random encounter with a Pok�mon five or more levels lower than it has a 50% chance of being skipped.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (52, 9, 'Prevents [Attack]{mechanic:attack} from being [lowered]{mechanic:stat-modifiers} by other Pok�mon.', 'This Pok�mon''s [Attack]{mechanic:attack} cannot be [lowered]{mechanic:stat-modifier} by other Pok�mon.

This ability does not prevent any Attack losses other than [stat modifiers]{mechanic:stat-modifiers}, such as the Attack cut from a [burn]{mechanic:burn}.  This Pok�mon can still be passed negative Attack modifiers through []{move:heart-swap} or []{move:power-swap}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (53, 9, 'Picks up other Pok�mon''s used and [Flung]{move:fling} held items.  May also pick up an item after battle.', 'At the end of each turn, if another Pok�mon consumed or [Flung]{move:fling} a held item that turn, this Pok�mon picks up the item if it is not already holding one.  After each battle, this Pok�mon has a 10% chance of picking up an item if it is not already holding one.

The []{item:air-balloon} and []{item:eject-button} cannot be picked up.

The items that may be found vary by game, and, since Pok�mon Emerald, by the Pok�mon''s level.  This ability is checked after the battle ends, at which point any temporary ability changes have worn off.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (54, 9, 'Skips every second turn.', 'Every second turn on which this Pok�mon should attempt to use a move, it will instead do nothing ("loaf around").

Loafing around interrupts moves that take multiple turns the same way [paralysis]{mechanic:paralysis}, [flinching]{mechanic:flinching}, etc do.  Most such moves, for example []{move:bide} or []{move:rollout}, are simply cut off upon loafing around.  Attacks with a recharge turn, such as []{move:hyper-beam}, do not have to recharge; attacks with a preparation turn, such as []{move:fly}, do not end up being used.  Moves that are forced over multiple turns and keep going through failure, such as []{move:outrage}, []{move:uproar}, or any move forced by []{move:encore}, keep going as usual.

If this Pok�mon is [confused]{mechanic:confusion}, its confusion is not checked when loafing around; the Pok�mon cannot hurt itself, and its confusion does not end or come closer to ending.

If this Pok�mon attempts to move but fails, e.g. because of [paralysis]{mechanic:paralysis} or []{move:gravity}, it still counts as having moved and will loaf around the next turn.  If it does not attempt to move, e.g. because it is [asleep]{mechanic:sleep} or [frozen]{mechanic:freezing}, whatever it would have done will be postponed until its next attempt; that is, it will either loaf around or move as usual, depending on what it last did.

This ability cannot be changed with []{move:worry-seed}, but it can be disabled with []{move:gastro-acid}, changed with []{move:role-play}, or traded away with []{move:skill-swap}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (55, 9, 'Strengthens physical moves to inflict 1.5� damage, but decreases their [accuracy]{mechanic:accuracy} to 0.8�.', 'This Pok�mon''s physical moves do 1.5� as much [regular damage]{mechanic:regular-damage}, but have 0.8� their usual [accuracy]{mechanic:accuracy}.

Special moves are unaffected.  Moves that do set damage, such as []{move:seismic-toss}, have their accuracy affected, but not their damage.

Overworld: If the lead Pok�mon has this ability, higher-levelled Pok�mon have their encounter rate increased.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (56, 9, 'Has a 30% chance of [infatuating]{mechanic:infatuation} attacking Pok�mon on contact.', 'Whenever a move makes contact with this Pok�mon, the move''s user has a 30% chance of being [infatuated]{mechanic:infatuation}.

Overworld: If the first Pok�mon in the party has this ability, any wild Pok�mon whose species can be either gender has a 2/3 chance of being set to the opposite gender, and a 1/3 chance of having a random gender as usual.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (57, 9, 'Increases [Special Attack]{mechanic:special-attack} to 1.5� when a friendly Pok�mon has []{ability:plus} or []{ability:minus}.', 'This Pok�mon has 1.5� its [Special Attack]{mechanic:special-attack} if any friendly Pok�mon has []{ability:plus} or []{ability:minus}.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.  If either ability is disabled by []{move:gastro-acid}, both lose their effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (58, 9, 'Increases [Special Attack]{mechanic:special-attack} to 1.5� when a friendly Pok�mon has []{ability:plus} or []{ability:minus}.', 'This Pok�mon has 1.5� its [Special Attack]{mechanic:special-attack} if any friendly Pok�mon has []{ability:plus} or []{ability:minus}.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.  If either ability is disabled by []{move:gastro-acid}, both lose their effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (59, 9, 'Changes []{pokemon:castform}''s type and form to match the [weather]{mechanic:weather}.', 'During [rain]{mechanic:rain}, [strong sunlight]{mechanic:strong-sunlight}, or [hail]{mechanic:hail}, this Pok�mon''s type changes to []{type:water}, []{type:fire}, or []{type:ice}, respectively, and its form changes to match.

This ability has no effect for any Pok�mon other than []{pokemon:castform}.

If the [weather]{mechanic:weather} ends or becomes anything that does not trigger this ability, or a Pok�mon with []{ability:air-lock} or []{ability:cloud-nine} enters battle, this Pok�mon''s type and form revert to their default.  If this ability is lost or disabled, this Pok�mon cannot change its current type and form until it regains its ability.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (60, 9, 'Prevents a held item from being removed by other Pok�mon.', 'This Pok�mon''s hold item cannot be removed by other Pok�mon.

Damaging moves that would remove this Pok�mon''s item can still inflict damage against this Pok�mon, e.g. []{move:knock-off} or []{move:pluck}.  This Pok�mon can still use moves that involve the loss of its own item, e.g. []{move:fling} or []{move:trick}.

Overworld: If the lead Pok�mon has this ability, the encounter rate while fishing is increased.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (61, 9, 'Has a 33% chance of curing any [major status ailment]{mechanic:major-status-ailment} after each turn.', 'After each turn, this Pok�mon has a 33% of being cured of any [major status ailment]{mechanic:major-status-ailment}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (62, 9, 'Increases [Attack]{mechanic:attack} to 1.5� with a [major status ailment]{mechanic:major-status-ailment}.', 'Whenever this Pok�mon is [asleep]{mechanic:sleep}, [burned]{mechanic:burn}, [paralyzed]{mechanic:paralysis}, or [poisoned]{mechanic:poison}, it has 1.5� its [Attack]{mechanic:attack}.  This Pok�mon is not affected by the usual Attack cut from a burn.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (63, 9, 'Increases [Defense]{mechanic:defense} to 1.5� with a [major status ailment]{mechanic:major-status-ailment}.', 'Whenever this Pok�mon has a [major status ailment]{mechanic:major-status-ailment}, it has 1.5� its [Defense]{mechanic:defense}.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (64, 9, 'Damages opponents using leeching moves for as much as they would heal.', 'Whenever a Pok�mon would heal after hitting this Pok�mon with a leeching move like []{move:absorb}, it instead loses as many [HP]{mechanic:hp} as it would usually gain.

[]{move:dream-eater} is unaffected.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (65, 9, 'Strengthens []{type:grass} moves to inflict 1.5� damage at 1/3 max [HP]{mechanic:hp} or less.', 'When this Pok�mon has 1/3 or less of its [HP]{mechanic:hp} remaining, its []{type:grass}-type moves inflict 1.5� as much [regular damage]{mechanic:regular-damage}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (66, 9, 'Strengthens []{type:fire} moves to inflict 1.5� damage at 1/3 max [HP]{mechanic:hp} or less.', 'When this Pok�mon has 1/3 or less of its [HP]{mechanic:hp} remaining, its []{type:fire}-type moves inflict 1.5� as much [regular damage]{mechanic:regular-damage}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (67, 9, 'Strengthens []{type:water} moves to inflict 1.5� damage at 1/3 max [HP]{mechanic:hp} or less.', 'When this Pok�mon has 1/3 or less of its [HP]{mechanic:hp} remaining, its []{type:water}-type moves inflict 1.5� as much [regular damage]{mechanic:regular-damage}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (68, 9, 'Strengthens []{type:bug} moves to inflict 1.5� damage at 1/3 max [HP]{mechanic:hp} or less.', 'When this Pok�mon has 1/3 or less of its [HP]{mechanic:hp} remaining, its []{type:bug}-type moves inflict 1.5� as much [regular damage]{mechanic:regular-damage}.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is increased.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (69, 9, 'Protects against recoil damage.', 'This Pok�mon does not receive recoil damage from its recoil moves.

[]{move:struggle}''s recoil is unaffected.  This ability does not prevent crash damage from missing with []{move:jump-kick} or []{move:high-jump-kick}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (70, 9, 'Summons [strong sunlight]{mechanic:strong-sunlight} that lasts indefinitely upon entering battle.', 'The [weather]{mechanic:weather} changes to [strong sunlight]{mechanic:strong-sunlight} when this Pok�mon enters battle and does not end unless cancelled by another weather condition.

If multiple Pok�mon with this ability, []{ability:drizzle}, []{ability:sand-stream}, or []{ability:snow-warning} are sent out at the same time, the abilities will activate in order of [Speed]{mechanic:speed}, respecting []{move:trick-room}.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pok�mon will stay.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (71, 9, 'Prevents opponents from fleeing or switching out.  Eluded by []{type:flying}-types and Pok�mon in the air.', 'While this Pok�mon is in battle, opposing Pok�mon cannot flee or switch out.  []{type:flying}-type Pok�mon and Pok�mon in the air, e.g. due to []{ability:levitate} or []{move:magnet-rise}, are unaffected.

Pok�mon with []{ability:run-away} can still flee.  Pok�mon can still switch out with the use of a move or item.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is doubled.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (72, 9, 'Prevents [sleep]{mechanic:sleep}.', 'This Pok�mon cannot be [asleep]{mechanic:sleep}.

This causes []{move:rest} to fail altogether.  If a Pok�mon is asleep and acquires this ability, it will immediately wake up; this includes when regaining a lost ability upon leaving battle.

This ability functions identically to []{ability:insomnia} in battle.

Overworld: If the lead Pok�mon has this ability, higher-levelled Pok�mon have their encounter rate increased.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (73, 9, 'Prevents stats from being [lowered]{mechanic:stat-modifier} by other Pok�mon.', 'This Pok�mon cannot have its stats [lowered]{mechanic:stat-modifier} by other Pok�mon.

This ability does not prevent any stat losses other than [stat modifiers]{mechanic:stat-modifiers}, such as the [Speed]{mechanic:speed} cut from [paralysis]{mechanic:paralysis}; nor self-inflicted stat drops, such as the [Special Attack]{mechanic:special-attack} drop from []{move:overheat}; nor opponent-triggered stat boosts, such as the [Attack]{mechanic:attack} boost from []{move:swagger}.  This Pok�mon can still be passed negative stat modifiers through []{move:guard-swap}, []{move:heart-swap}, or []{move:power-swap}.

This ability functions identically to []{ability:clear-body} in battle.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is halved.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (74, 9, 'Doubles [Attack]{mechanic:attack} in battle.', 'This Pok�mon''s [Attack]{mechanic:attack} is doubled in battle.

This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.

This ability functions identically to []{ability:huge-power}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (75, 9, 'Protects against [critical hits]{mechanic:critical-hit}.', 'Moves cannot score [critical hits]{mechanic:critical-hit} against this Pok�mon.

This ability functions identically to []{ability:battle-armor}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (76, 9, 'Negates all effects of [weather]{mechanic:weather}, but does not prevent the weather itself.', 'While this Pok�mon is in battle, [weather]{mechanic:weather} can still be in play, but will not have any of its effects.

This ability functions identically to []{ability:cloud-nine}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (77, 9, 'Doubles [evasion]{mechanic:evasion} when [confused]{mechanic:confusion}.', 'When this Pok�mon is [confused]{mechanic:confusion}, it has twice its [evasion]{mechanic:evasion}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (78, 9, 'Absorbs []{type:electric} moves, raising [Speed]{mechanic:speed} one [stage]{mechanic:stat-modifier}.', 'Whenever an []{type:electric}-type move hits this Pok�mon, its [Speed]{mechanic:speed} rises one [stage]{mechanic:stat-modifier}, negating any other effect on it.

This ability will not take effect if this Pok�mon is immune to Electric moves.  Electric moves will ignore this Pok�mon''s []{move:substitute}.

This effect includes non-damaging moves, i.e. []{move:thunder-wave}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (79, 9, 'Increases damage inflicted to 1.25� against Pok�mon of the same gender, but decreases damage to 0.75� against the opposite gender.', 'This Pok�mon inflicts 1.25� as much [regular damage]{mechanic:regular-damage} against Pok�mon of the same gender and 0.75� as much regular damage against Pok�mon of the opposite gender.

If either Pok�mon is genderless, damage is unaffected.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (80, 9, 'Raises [Speed]{mechanic:speed} one [stage]{mechanic:stat-modifier} upon [flinching]{mechanic:flinching}.', 'Whenever this Pok�mon [flinches]{mechanic:flinching}, its [Speed]{mechanic:speed} rises one [stage]{mechanic:stat-modifier}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (81, 9, 'Increases evasion to 1.25� during [hail]{mechanic:hail}.  Protects against hail damage.', 'During [hail]{mechanic:hail}, this Pok�mon has 1.25� its [evasion]{mechanic:evasion}, and it does not take hail damage regardless of type.

The evasion bonus does not count as a [stat modifier]{mechanic:stat-modifier}.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is halved in snow.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (82, 9, 'Makes the Pok�mon eat any held Berry triggered by low [HP]{mechanic:hp} below 1/2 its max HP.', 'This Pok�mon eats any held Berry triggered by low [HP]{mechanic:hp} when it falls below 50% of its HP, regardless of the Berry''s usual threshold.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (83, 9, 'Raises [Attack]{mechanic:attack} to the maximum of six [stages]{mechanic:stat-modifier} upon receiving a [critical hit]{mechanic:critical-hit}.', 'Whenever this Pok�mon receives a [critical hit]{mechanic:critical-hit}, its [Attack]{mechanic:attack} rises to the maximum of 6 [stages]{mechanic:stat-modifier}.

This ability will still take effect if the critical hit is received by a []{move:substitute}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (84, 9, 'Doubles [Speed]{mechanic:speed} upon using or losing a held item.', 'When this Pok�mon uses or loses its held item, its [Speed]{mechanic:speed} is doubled.  If it gains another item or leaves battle, this bonus is lost.

This includes when the Pok�mon drops its item because of []{move:knock-off}.  This bonus does not count as a [stat modifier]{mechanic:stat-modifier}.  There is no notification when this ability takes effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (85, 9, 'Halves damage from []{type:fire} moves and [burns]{mechanic:burn}.', 'This Pok�mon takes half as much damage from []{type:fire}-type moves and [burns]{mechanic:burn}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (86, 9, 'Doubles the Pok�mon''s [stat modifiers]{mechanic:stat-modifiers}.  These doubled modifiers are still capped at -6 or 6 stages.', 'Each stage of this Pok�mon''s [stat modifiers]{mechanic:stat-modifiers} acts as two stages.  These doubled stages are still limited to a minimum of -6 and a maximum of 6.

This Pok�mon can still accumulate less than -3 or more than 3 stages of stat modifiers, even though the extra ones have no effect after doubling.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (87, 9, 'Causes 1/8 max [HP]{mechanic:hp} in damage each turn during [strong sunlight]{mechanic:strong-sunlight}, but heals for 1/8 max HP during [rain]{mechanic:rain}.  Increases damage from []{type:fire} moves to 1.25�, but absorbs []{type:water} moves, healing for 1/4 max HP.', 'This Pok�mon takes 1/8 of its maximum HP in damage after each turn during [strong sunlight]{mechanic:strong-sunlight}, but it heals for 1/8 of its HP each turn during [rain]{mechanic:rain}.  This Pok�mon takes 1.25� as much damage from []{type:fire}-type moves, but whenever a []{type:water} move hits it, it heals for 1/4 its maximum HP instead.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (88, 9, 'Raises the attack stat corresponding to the opponents'' weaker defense one [stage]{mechanic:stat-modifier} upon entering battle.', 'When this Pok�mon enters battle, its [Attack]{mechanic:attack} or [Special Attack]{mechanic:special-attack}, whichever corresponds to its opponents'' weaker total defensive stat, rises one [stage]{mechanic:stat-modifier}.  In the event of a tie, Special Attack is raised.

This ability also takes effect when acquired during a battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (89, 9, 'Strengthens punch-based moves to 1.2� their power.', 'Moves flagged as being punch-based have 1.2� their base power for this Pok�mon.

[]{move:sucker-punch} is not flagged as punch-based; its original, Japanese name only means "surprise attack".');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (90, 9, 'Heals for 1/8 max [HP]{mechanic:hp} after each turn when [poisoned]{mechanic:poison} in place of damage.', 'If this Pok�mon is [poisoned]{mechanic:poison}, it will heal for 1/8 of its maximum [HP]{mechanic:hp} after each turn rather than taking damage.  This includes bad poison.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (91, 9, 'Increases the [same-type attack bonus]{mechanic:same-type-attack-bonus} from 1.5� to 2�.', 'This Pok�mon inflicts twice as much damage with moves whose types match its own, rather than the usual [same-type attack bonus]{mechanic:same-type-attack-bonus} of 1.5�.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (92, 9, 'Extends two-to-five-hit moves and []{move:triple-kick} to their full length every time.', 'This Pok�mon always hits five times with two-to-five-hit moves, such as []{move:icicle-spear}.  It also bypasses the accuracy checks on []{move:triple-kick}''s second and third hits.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (93, 9, 'Cures any [major status ailment]{mechanic:major-status-ailment} after each turn during [rain]{mechanic:rain}.', 'This Pok�mon is cured of any [major status ailment]{mechanic:major-status-ailment} after each turn during [rain]{mechanic:rain}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (94, 9, 'Increases [Special Attack]{mechanic:special-attack} to 1.5� but costs 1/8 max [HP]{mechanic:hp} after each turn during [strong sunlight]{mechanic:strong-sunlight}.', 'During [strong sunlight]{mechanic:strong-sunlight}, this Pok�mon has 1.5� its [Special Attack]{mechanic:special-attack} but takes 1/8 of its maximum [HP]{mechanic:hp} in damage after each turn.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (95, 9, 'Increases [Speed]{mechanic:speed} to 1.5� with a [major status ailment]{mechanic:major-status-ailment}.', 'Whenever this Pok�mon has a [major status ailment]{mechanic:major-status-ailment}, it has 1.5� its [Speed]{mechanic:speed}.  This Pok�mon is not affected by the usual Speed cut from [paralysis]{mechanic:paralysis}.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is halved.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (96, 9, 'Makes the Pok�mon''s moves all act []{type:normal}-type.', 'This Pok�mon''s moves all act as if they were []{type:normal}-type.

Moves that inflict [typeless damage]{mechanic:typeless-damage} do so as usual.  Moves of variable type, such as []{move:hidden-power}, are affected.  They otherwise work as usual, however; []{move:weather-ball}, for example, is always forced to be Normal, but it still has doubled power and looks different during [weather]{mechanic:weather}.

As []{move:thunder-wave} is prevented by immunities, unlike most non-damaging moves, it does not affect []{type:ghost}-type Pok�mon under the effect of this ability.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (97, 9, 'Strengthens [critical hits]{mechanic:critical-hit} to inflict 3� damage rather than 2�.', 'This Pok�mon inflicts triple damage with [critical hits]{mechanic:critical-hit}, rather than the usual double damage.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (98, 9, 'Protects against damage not directly caused by a move.', 'This Pok�mon is immune to damage not directly caused by a move.

For example, this Pok�mon takes no damage from from [weather]{mechanic:weather}, recoil, [status ailments]{mechanic:status-ailments}, or []{move:spikes}, but it still suffers from the [Attack]{mechanic:attack} cut when [burned]{mechanic:burn}, and a []{item:life-orb} will still power up this Pok�mon''s moves without damaging it.  Anything that directly depends on such damage will also not happen; for example, []{move:leech-seed} will neither hurt this Pok�mon nor heal the opponent, and Pok�mon with a []{item:jaboca-berry} or []{item:rowap-berry} will not consume the berry when hit by this Pok�mon.

The following are unaffected: []{move:struggle}, []{move:pain-split} (whether used by or against this Pok�mon), []{move:belly-drum}, []{move:substitute}, []{move:curse}, moves that knock the user out, and damage from [confusion]{mechanic:confusion}.

This Pok�mon will neither lose nor regain [HP]{mechanic:hp} if it drains HP from a Pok�mon with []{ability:liquid-ooze}.

If this Pok�mon is [badly poisoned]{mechanic:poison}, the poison counter is still increased each turn; if the Pok�mon loses this ability, it will begin taking as much damage as it would be if it had been taking increasing damage each turn.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (99, 9, 'Ensures all moves used by and against the Pok�mon hit.', 'Moves used by or against this Pok�mon never miss.

One-hit KO moves are unaffected.  Moves affected by this ability can hit Pok�mon during the preparation turn of moves like []{move:dig} or []{move:fly}.

Overworld: If the lead Pok�mon has this ability, the wild encounter rate is doubled.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (100, 9, 'Makes the Pok�mon move last within its move''s priority bracket.', 'This Pok�mon moves last within its priority bracket.

Multiple Pok�mon with this ability move in order of [Speed]{mechanic:speed} amongst themselves.

The []{item:full-incense} and []{item:lagging-tail} take precedence over this ability; that is, Pok�mon with these items move after Pok�mon with this ability.  Pok�mon with both this ability and one of these items are delayed as much as if they had only the item.

This ability works as usual during []{move:trick-room}: Pok�mon with this ability will move in reverse order of Speed after Pok�mon without it.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (101, 9, 'Strengthens moves of 60 base power or less to 1.5� their power.', 'This Pok�mon''s moves have 1.5� their power if their base power is 60 or less.

This includes moves of variable power, such as []{move:hidden-power} and []{move:magnitude}, when their power is 60 or less.  []{move:helping-hand}''s power boost is taken into account for any move, as is []{move:defense-curl}''s power boost for []{move:rollout}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (102, 9, 'Protects against [major status ailments]{mechanic:major-status-ailments} during [strong sunlight]{mechanic:strong-sunlight}.', 'This Pok�mon cannot be given a [major status ailment]{mechanic:major-status-ailment} during [strong sunlight]{mechanic:strong-sunlight}.

This ability does not heal prior status ailments.  []{move:rest} will fail altogether with this ability in effect.  []{move:yawn} will immediately fail if used on this Pok�mon during strong sunlight, and an already-used Yawn will fail if the weather turns to strong sunlight in the meantime.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (103, 9, 'Prevents the Pok�mon from using its held item in battle.', 'In battle, this Pok�mon cannot use its held item, nor will the item have any passive effect on the battle, positive or negative.  This Pok�mon also cannot use []{move:fling}.

The [Speed]{mechanic:speed} cut from the []{item:iron-ball} and the effort items (the []{item:macho-brace}, []{item:power-weight}, []{item:power-bracer}, []{item:power-belt}, []{item:power-lens}, []{item:power-band}, and []{item:power-anklet}) is unaffected.  Items that do not directly affect the battle, such as the []{item:exp-share}, the []{item:amulet-coin}, or the []{item:soothe-bell}, work as usual.  All held items work as usual out of battle.

Other moves that use the held item, such as []{move:natural-gift} and []{move:switcheroo}, work as usual.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (104, 9, 'Bypasses targets'' abilities if they could hinder or prevent a move.', 'This Pok�mon''s moves completely ignore abilities that could hinder or prevent their effect on the target.

For example, this Pok�mon''s moves ignore abilities that would fully negate them, such as []{ability:water-absorb}; abilities that would prevent any of their effects, such as []{ability:clear-body}, []{ability:shell-armor}, or []{ability:sticky-hold}; and abilities that grant any general protective benefit, such as []{ability:simple}, []{ability:snow-cloak}, or []{ability:thick-fat}.  If an ability could either hinder or help this Pok�mon''s moves, e.g. []{ability:dry-skin} or []{ability:unaware}, the ability is ignored either way.

Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, []{ability:cursed-body} only affects potential future uses of the move, while []{ability:liquid-ooze} and []{ability:shadow-tag} can only hinder a move''s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example []{ability:color-change} or []{ability:forecast}; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from []{ability:drizzle}.  This ability cannot ignore []{ability:multitype} at all.

An ability ignored by this ability is only nullified while the move is being used.  For example, this Pok�mon''s moves can [paralyze]{mechanic:paralysis} a Pok�mon with []{ability:limber}, but Limber will activate and heal the paralysis immediately thereafter, and this Pok�mon''s []{move:spikes} are not affected by this ability after they have been placed.

When this Pok�mon enters battle, all participating trainers are notified that it has this ability.

This ability functions identically to []{ability:teravolt} and []{ability:turboblaze}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (105, 9, 'Raises moves'' [critical hit]{mechanic:critical-hit} rates one stage.', 'This Pok�mon''s moves have [critical hit]{mechanic:critical-hit} rates one stage higher than normal.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (106, 9, 'Damages the attacker for 1/4 its max [HP]{mechanic:hp} when knocked out by a contact move.', 'When this Pok�mon is knocked out by a move that makes contact, the move''s user takes 1/4 its maximum [HP]{mechanic:hp} in damage.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (107, 9, 'Notifies all trainers upon entering battle if an opponent has a [super-effective]{mechanic:super-effective} move, []{move:self-destruct}, []{move:explosion}, or a one-hit KO move.', 'When this Pok�mon enters battle, if one of its opponents has a move that is [super effective]{mechanic:super-effective} against it, []{move:self-destruct}, []{move:explosion}, or a one-hit knockout move, all participating trainers are notified.

The move itself is not revealed; only that there is such a move.  Moves that inflict [typeless damage]{mechanic:typeless-damage}, such as []{move:future-sight}, and moves of variable type, such as []{move:hidden-power}, count as their listed types.  []{move:counter}, []{move:metal-burst}, []{move:mirror-coat}, and one-hit KO moves to which this Pok�mon is immune do not trigger this ability.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (108, 9, 'Reveals the opponents'' strongest move upon entering battle.', 'When this Pok�mon enters battle, it reveals the move with the highest base power known by any opposing Pok�mon to all participating trainers.

In the event of a tie, one is chosen at random.

Moves without a listed base power are assigned one as follows:

Power | Moves
----: | -----
  160 | One-hit KO moves: []{move:fissure}, []{move:guillotine}, []{move:horn-drill}, and []{move:sheer-cold}
  120 | Counter moves: []{move:counter}, []{move:metal-burst}, and []{move:mirror-coat}
   80 | Variable power or set damage: []{move:crush-grip}, []{move:dragon-rage}, []{move:electro-ball}, []{move:endeavor}, []{move:final-gambit}, []{move:flail}, []{move:frustration}, []{move:grass-knot}, []{move:gyro-ball}, []{move:heat-crash}, []{move:heavy-slam}, []{move:hidden-power}, []{move:low-kick}, []{move:natural-gift}, []{move:night-shade}, []{move:psywave}, []{move:return}, []{move:reversal}, []{move:seismic-toss}, []{move:sonic-boom}, []{move:trump-card}, and []{move:wring-out}
    0 | Any such move not listed
');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (109, 9, 'Ignores other Pok�mon''s stat modifiers for damage and accuracy calculation.', 'This Pok�mon ignores other Pok�mon''s [stat modifiers]{mechanic:stat-modifiers} for the purposes of damage and accuracy calculation.

Effectively, this affects modifiers of every stat except [Speed]{mechanic:speed}.

The power of []{move:punishment} and []{move:stored-power} is calculated as usual.  When this Pok�mon hurts itself in [confusion]{mechanic:confusion}, its stat modifiers affect damage as usual.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (110, 9, 'Doubles damage inflicted with [not-very-effective]{mechanic:not-very-effective} moves.', 'This Pok�mon deals twice as much damage with moves that are [not very effective]{mechanic:not-very-effective} against the target.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (111, 9, 'Decreases damage taken from [super-effective]{mechanic:super-effective} moves by 1/4.', 'This Pok�mon takes 0.75� as much damage from moves that are [super effective]{mechanic:super-effective} against it.

This ability functions identically to []{ability:solid-rock}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (112, 9, 'Halves [Attack]{mechanic:attack} and [Speed]{mechanic:speed} for five turns upon entering battle.', 'This Pok�mon''s [Attack]{mechanic:attack} and [Speed]{mechanic:speed} are halved for five turns upon entering battle.

This ability also takes effect when acquired during battle.  If this Pok�mon loses its ability before the five turns are up, its Attack and Speed return to normal; if it then regains this ability without leaving battle, its Attack and Speed are halved again, but the counter keeps counting from where it was.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (113, 9, 'Lets the Pok�mon''s []{type:normal} and []{type:fighting} moves hit []{type:ghost} Pok�mon.', 'This Pok�mon ignores []{type:ghost}-type Pok�mon''s immunity to []{type:normal}- and []{type:fighting}-type moves.

Ghost Pok�mon''s other types affect damage as usual.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (114, 9, 'Redirects single-target []{type:water} moves to this Pok�mon where possible.  Absorbs Water moves, raising [Special Attack]{mechanic:special-attack} one [stage]{mechanic:stat-modifier}.', 'All other Pok�mon''s single-target []{type:water}-type moves are redirected to this Pok�mon, if it is an eligible target.  Other Pok�mon''s Water moves raise this Pok�mon''s [Special Attack]{mechanic:special-attack} one [stage]{mechanic:stat-modifier}, negating any other effect on it, and cannot miss it.

If the move''s intended target also has this ability, the move is not redirected.  When multiple Pok�mon with this ability are possible targets for redirection, the move is redirected to the one with the highest [Speed]{mechanic:speed} stat, or, in the case of a tie, to a random tied Pok�mon.  []{move:follow-me} takes precedence over this ability.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (115, 9, 'Heals for 1/16 max [HP]{mechanic:hp} after each turn during hail.  Protects against hail damage.', 'This Pok�mon heals for 1/16 of its maximum [HP]{mechanic:hp} after each turn during [hail]{mechanic:hail}, and it does not take hail damage regardless of type.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (116, 9, 'Decreases damage taken from [super-effective]{mechanic:super-effective} moves by 1/4.', 'This Pok�mon takes 0.75� as much damage from moves that are [super effective]{mechanic:super-effective} against it.

This ability functions identically to []{ability:filter}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (117, 9, 'Summons [hail]{mechanic:hail} that lasts indefinitely upon entering battle.', 'The [weather]{mechanic:weather} changes to [hail]{mechanic:hail} when this Pok�mon enters battle and does not end unless cancelled by another weather condition.

If multiple Pok�mon with this ability, []{ability:drizzle}, []{ability:drought}, or []{ability:sand-stream} are sent out at the same time, the abilities will activate in order of [Speed]{mechanic:speed}, respecting []{move:trick-room}.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pok�mon will stay.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (118, 9, 'The Pok�mon may pick up []{item:honey} after battle.', 'This Pok�mon has a chance of picking up []{item:honey} after each battle.  This chance starts at 5% and rises another 5% after every tenth level: 5% from level 1�10, 10% from 11�20, and so on, up to 50% from 91�100.

This ability is checked after the battle ends, at which point any temporary ability changes have worn off.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (119, 9, 'Reveals an opponent''s held item upon entering battle.', 'When this Pok�mon enters battle, it reveals an opposing Pok�mon''s held item to all participating trainers.

In a double battle, if one opponent has an item, this Pok�mon will Frisk that Pok�mon; if both have an item, it will Frisk one at random.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (120, 9, 'Strengthens recoil moves to 1.2� their power.', 'This Pok�mon''s recoil moves and crash moves have 1.2� their base power.

[]{move:struggle} is unaffected.

The "crash moves" are the moves that damage the user upon missing: []{move:jump-kick} and []{move:high-jump-kick}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (121, 9, 'Changes []{pokemon:arceus}''s type and form to match its held Plate.', 'If this Pok�mon is holding an elemental Plate, its type and form change to match the Plate.

This Pok�mon''s held item, whether or not it is a Plate, cannot be taken by []{move:covet} or []{move:thief}, nor removed by []{move:knock-off}, nor traded by []{move:switcheroo} or []{move:trick}.  Covet, Thief, and Knock Off still inflict damage against this Pok�mon.  Unlike with []{ability:sticky-hold}, this Pok�mon cannot use []{move:fling}, Switcheroo, or Trick to lose its item itself, nor gain an item through Switcheroo or Trick if it does not have one.

This ability has no effect for any Pok�mon other than []{pokemon:arceus}.  This ability cannot be traded with []{move:skill-swap}, nor copied with []{move:role-play} or []{ability:trace}, nor disabled with []{move:gastro-acid}, nor changed with []{move:worry-seed}.  This Pok�mon cannot use Skill Swap or Role Play to lose its ability itself.  []{ability:mold-breaker} cannot ignore this ability.

If a Pok�mon [Transforms]{move:transform} into an Arceus with this ability, it will Transform into Arceus''s default, []{type:normal}-type form.  If the Transforming Pok�mon is holding a Plate, this ability will then activate and change the Pok�mon into the corresponding form.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (122, 9, 'Increases friendly Pok�mon''s [Attack]{mechanic:attack} and [Special Defense]{mechanic:special-defense} to 1.5� during [strong sunlight]{mechanic:strong-sunlight}.', 'Friendly Pok�mon have 1.5� their [Attack]{mechanic:attack} and [Special Defense]{mechanic:special-defense} during [strong sunlight]{mechanic:strong-sunlight} if any friendly Pok�mon has this ability.

Unlike []{ability:forecast}, []{ability:multitype}, and []{ability:zen-mode}, this ability is not tied to its Pok�mon''s form change; []{pokemon:cherrim} will switch between its forms even if it loses this ability.  As such, this ability also works if obtained by a Pok�mon other than Cherrim.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (123, 9, 'Damages [sleeping]{mechanic:sleep} opponents for 1/8 their max [HP]{mechanic:hp} after each turn.', 'Opposing Pok�mon take 1/8 of their maximum [HP]{mechanic:hp} in damage after each turn while they are [asleep]{mechanic:asleep}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (124, 9, 'Steals attacking Pok�mon''s held items on contact.', 'Whenever a move makes contact with this Pok�mon, if it does not have a held item, it steals the attacker''s held item.

This Pok�mon cannot steal upon being knocked out.  It can steal if the attacker has a []{move:substitute}, but cannot steal when its own Substitute is hit.  If a move hits multiple times, only the last hit triggers this ability.  If this Pok�mon is wild, it cannot steal from a trained Pok�mon.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (125, 9, 'Strengthens moves with extra effects to 1.3� their power, but prevents their extra effects.', 'This Pok�mon''s moves with extra effects have 1.3� their power, but lose their extra effects.

An effect chance is a move''s chance to inflict a status ailment, cause a stat change, or make the target flinch in addition to the move''s main effect. For example, []{move:thunder-shock}''s paralysis is an extra effect, but []{move:thunder-wave}''s is not, nor are []{move:knock-off}''s item removal and []{move:air-cutter}''s increased [critical hit]{mechanic:critical-hit} rate.

Moves that lower the user''s stats are unaffected.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (126, 9, 'Inverts [stat changes]{mechanic:stat-modifiers}.', 'Whenever this Pok�mon''s stats would be [raised]{mechanic:stat-modifiers}, they are instead lowered by the same amount, and vice versa.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (127, 9, 'Prevents opposing Pok�mon from eating held Berries.', 'Opposing Pok�mon cannot eat held Berries while this Pok�mon is in battle.

Affected Pok�mon can still use []{move:bug-bite} or []{move:pluck} to eat a target''s Berry.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (128, 9, 'Raises [Attack]{mechanic:attack} two [stages]{mechanic:stat-modifier} upon having any stat lowered.', 'When any of this Pok�mon''s stats are [lowered]{mechanic:stat-modifier}, its [Attack]{mechanic:attack} rises by two stages.

If multiple stats are lowered at once, this ability takes effect with each stat lowered.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (129, 9, 'Halves [Attack]{mechanic:attack} and [Special Attack]{mechanic:special-attack} at 50% max [HP]{mechanic:hp} or less.', 'This Pok�mon''s [Attack]{mechanic:attack} and [Special Attack]{mechanic:special-attack} are halved when it has half its [HP]{mechanic:hp} or less.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (130, 9, 'Has a 30% chance of [Disabling]{move:disable} any move that hits the Pok�mon.', 'Moves that hit this Pok�mon have a 30% chance of being [Disabled]{move:disable} afterward.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (131, 9, 'Has a 30% chance of curing each adjacent ally of any [major status ailment]{mechanic:major-status-ailment} after each turn.', 'Friendly Pok�mon next to this Pok�mon in double and triple battles each have a 30% chance of being cured of any [major status ailment]{mechanic:major-status-ailment} after each turn.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (132, 9, 'Decreases all direct damage taken by friendly Pok�mon to 0.75�.', 'All friendly Pok�mon take 0.75� as much direct damage from moves while this Pok�mon is in battle.

This effect stacks if multiple allied Pok�mon have it.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (133, 9, 'Raises [Speed]{mechanic:speed} and lowers [Defense]{mechanic:defense} by one stage each upon being hit by a physical move.', 'Whenever a physical move hits this Pok�mon, its [Speed]{mechanic:speed} rises one stage and its [Defense]{mechanic:defense} falls one stage.

This ability triggers on every hit of a multiple-hit move.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (134, 9, 'Doubles the Pok�mon''s weight.', 'This Pok�mon has double the usual weight for its species.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (135, 9, 'Halves the Pok�mon''s weight.', 'This Pok�mon has half the usual weight for its species.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (136, 9, 'Halves damage taken from full [HP]{mechanic:hp}.', 'This Pok�mon takes half as much damage when it is hit having full [HP]{mechanic:hp}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (137, 9, 'Increases [Attack]{mechanic:attack} to 1.5� when [poisoned]{mechanic:poison}.', 'This Pok�mon has 1.5� its [Attack]{mechanic:attack} when [poisoned]{mechanic:poison}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (138, 9, 'Increases [Special Attack]{mechanic:special-attack} to 1.5� when [burned]{mechanic:burn}.', 'This Pok�mon has 1.5� its [Special Attack]{mechanic:special-attack} when [burned]{mechanic:burn}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (139, 9, 'Has a 50% chance of restoring a used Berry after each turn if the Pok�mon has held no items in the meantime.', 'After each turn, if the last item this Pok�mon consumed was a Berry and it is not currently holding an item, it has a 50% chance of regaining that Berry, or a 100% chance during [strong sunlight]{mechanic:strong-sunlight}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (140, 9, 'Protects against friendly Pok�mon''s damaging moves.', 'This Pok�mon does not take damage from friendly Pok�mon''s moves, including single-target moves aimed at it.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (141, 9, 'Raises a random stat two [stages]{mechanic:stat-modifier} and lowers another one stage after each turn.', 'After each turn, one of this Pok�mon''s stats at random rises two [stages]{mechanic:stat-modifier}, and another falls one stage.

If a stat is already at 6 or -6 stages, it will not be chosen to be increased or decreased, respectively.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (142, 9, 'Protects against damage from [weather]{mechanic:weather}.', 'This Pok�mon does not take damage from [weather]{mechanic:weather}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (143, 9, 'Has a 30% chance of [poisoning]{mechanic:poison} target Pok�mon upon contact.', 'This Pok�mon''s contact moves have a 30% chance of [poisoning]{mechanic:poison} the target with each hit.

This counts as an extra effect for the purposes of []{ability:shield-dust}.  This ability takes effect before []{ability:mummy}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (144, 9, 'Heals for 1/3 max [HP]{mechanic:hp} upon switching out.', 'This Pok�mon regains 1/3 of its maximum [HP]{mechanic:hp} when it is switched out for another Pok�mon under any circumstances other than having fainted.

This ability does not take effect when a battle ends.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (145, 9, 'Protects against [Defense]{mechanic:defense} drops.', 'This Pok�mon''s [Defense]{mechanic:defense} cannot be [lowered]{mechanic:stat-modifiers} by other Pok�mon.

This Pok�mon can still be passed negative Defense modifiers through []{move:heart-swap} or []{move:guard-swap}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (146, 9, 'Doubles [Speed]{mechanic:speed} during a [sandstorm]{mechanic:sandstorm}.  Protects against sandstorm damage.', 'This Pok�mon''s [Speed]{mechanic:speed} is doubled during a [sandstorm]{mechanic:sandstorm}, and it does not take sandstorm damage, regardless of type.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (147, 9, 'Lowers incoming non-damaging moves'' base [accuracy]{mechanic:accuracy} to exactly 50%.', 'Non-damaging moves have exactly 50% base [accuracy]{mechanic:accuracy} against this Pok�mon.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (148, 9, 'Strengthens moves to 1.3� their power when moving last.', 'This Pok�mon''s moves have 1.3� their power when it moves last in a turn.

[]{move:future-sight} and []{move:doom-desire} are unaffected.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (149, 9, 'Takes the appearance of the last conscious party Pok�mon upon being sent out until hit by a damaging move.', 'This Pok�mon, upon being sent out, appears to have the species, nickname, and Pok� Ball of the last Pok�mon in the party that is able to battle.  This illusion breaks upon being hit by a damaging move.

Other damage, e.g. from [weather]{mechanic:weather} or []{move:spikes}, does not break the illusion, nor does damage done to a []{move:substitute}.

If the party order becomes temporarily shuffled around as Pok�mon are switched out in battle, this ability chooses the last Pok�mon according to that shuffled order.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (150, 9, '[Transforms]{move:transform} upon entering battle.', 'This Pok�mon transforms into a random opponent upon entering battle.  This effect is identical to the move []{move:transform}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (151, 9, 'Bypasses []{move:light-screen}, []{move:reflect}, and []{move:safeguard}.', 'This Pok�mon''s moves ignore []{move:light-screen}, []{move:reflect}, and []{move:safeguard}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (152, 9, 'Changes attacking Pok�mon''s abilities to Mummy on contact.', 'Whenever a contact move hits this Pok�mon, the attacking Pok�mon''s ability changes to Mummy.

[]{ability:multitype} is unaffected.  If a Pok�mon with []{ability:moxie} knocks this Pok�mon out, the former''s ability will change without taking effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (153, 9, 'Raises [Attack]{mechanic:attack} one stage upon KOing a Pok�mon.', 'This Pok�mon''s [Attack]{mechanic:attack} rises one stage upon knocking out another Pok�mon, even a friendly Pok�mon.

This ability does not take effect when the Pok�mon indirectly causes another Pok�mon to faint, e.g. through [poison]{mechanic:poison} or []{move:spikes}.

If this Pok�mon knocks out a Pok�mon with []{ability:mummy}, the former''s ability will change without taking effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (154, 9, 'Raises [Attack]{mechanic:attack} one stage upon taking damage from a []{type:dark} move.', 'Whenever a []{type:dark}-type move hits this Pok�mon, its [Attack]{mechanic:attack} rises one [stage]{mechanic:stat-modifier}.

The move is not negated in any way.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (155, 9, 'Raises [Speed]{mechanic:speed} one [stage]{mechanic:stat-modifier} upon being hit by a []{type:dark}, []{type:ghost}, or []{type:bug} move.', 'This Pok�mon''s [Speed]{mechanic:speed} rises one stage with each hit from a damaging []{type:dark}-, []{type:ghost}-, or []{type:bug}-type move.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (156, 9, 'Reflects most non-damaging moves back at their user.', 'When this Pok�mon is targeted by a move flagged as being reflectable, the move is redirected to its user.

All reflectable moves are non-damaging, and most non-damaging moves that target other Pok�mon are reflectable.

A move reflected by this ability or []{move:magic-coat} cannot be reflected back.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (157, 9, 'Absorbs []{type:grass} moves, raising [Attack]{mechanic:attack} one [stage]{mechanic:stat-modifier}.', 'Whenever a []{type:grass}-type move hits this Pok�mon, its [Attack]{mechanic:attack} rises one [stage]{mechanic:stat-modifier}, negating any other effect on it.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (158, 9, 'Raises non-damaging moves'' priority by one stage.', 'This Pok�mon''s non-damaging moves have their priority increased by one stage.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (159, 9, 'Strengthens []{type:rock}, []{type:ground}, and []{type:steel} moves to 1.3� their power during a [sandstorm]{mechanic:sandstorm}.  Protects against sandstorm damage.', 'During a [sandstorm]{mechanic:sandstorm}, this Pok�mon''s []{type:rock}-, []{type:ground}-, and []{type:steel}-type moves have 1.3� their base power.  This Pok�mon does not take sandstorm damage, regardless of type.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (160, 9, 'Damages attacking Pok�mon for 1/8 their max [HP]{mechanic:hp} on contact.', 'Whenever a move makes contact with this Pok�mon, the move''s user takes 1/8 of its maximum [HP]{mechanic:hp} in damage.

This ability functions identically to []{ability:rough-skin}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (161, 9, 'Changes []{pokemon:darmanitan}''s form after each turn depending on its [HP]{mechanic:hp}: Zen Mode below 50% max HP, and Standard Mode otherwise.', 'This Pok�mon switches between Standard Mode and Zen Mode after each turn depending on its [HP]{mechanic:hp}.  Below 50% of its maximum HP, it switches to Zen Mode, and at 50% or above, it switches to Standard Mode.

This Pok�mon returns to Standard Mode upon leaving battle or losing this ability.  This ability has no effect if this Pok�mon is not a []{pokemon:darmanitan}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (162, 9, 'Increases moves'' accuracy to 1.1� for friendly Pok�mon.', 'All friendly Pok�mon''s moves, including this Pok�mon''s own moves, have 1.1� their usual accuracy while this Pok�mon is in battle.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (163, 9, 'Bypasses targets'' abilities if they could hinder or prevent moves.', 'This Pok�mon''s moves completely ignore abilities that could hinder or prevent their effect on the target.

For example, this Pok�mon''s moves ignore abilities that would fully negate them, such as []{ability:water-absorb}; abilities that would prevent any of their effects, such as []{ability:clear-body}, []{ability:shell-armor}, or []{ability:sticky-hold}; and abilities that grant any general protective benefit, such as []{ability:simple}, []{ability:snow-cloak}, or []{ability:thick-fat}.  If an ability could either hinder or help this Pok�mon''s moves, e.g. []{ability:dry-skin} or []{ability:unaware}, the ability is ignored either way.

Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, []{ability:cursed-body} only affects potential future uses of the move, while []{ability:liquid-ooze} and []{ability:shadow-tag} can only hinder a move''s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example []{ability:color-change} or []{ability:forecast}; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from []{ability:drizzle}.  This ability cannot ignore []{ability:multitype} at all.

An ability ignored by this ability is only nullified while the move is being used.  For example, this Pok�mon''s moves can [paralyze]{mechanic:paralysis} a Pok�mon with []{ability:limber}, but Limber will activate and heal the paralysis immediately thereafter, and this Pok�mon''s []{move:spikes} are not affected by this ability after they have been placed.

When this Pok�mon enters battle, all participating trainers are notified that it has this ability.

This ability functions identically to []{ability:mold-breaker} and []{ability:teravolt}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (164, 9, 'Bypasses targets'' abilities if they could hinder or prevent moves.', 'This Pok�mon''s moves completely ignore abilities that could hinder or prevent their effect on the target.

For example, this Pok�mon''s moves ignore abilities that would fully negate them, such as []{ability:water-absorb}; abilities that would prevent any of their effects, such as []{ability:clear-body}, []{ability:shell-armor}, or []{ability:sticky-hold}; and abilities that grant any general protective benefit, such as []{ability:simple}, []{ability:snow-cloak}, or []{ability:thick-fat}.  If an ability could either hinder or help this Pok�mon''s moves, e.g. []{ability:dry-skin} or []{ability:unaware}, the ability is ignored either way.

Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, []{ability:cursed-body} only affects potential future uses of the move, while []{ability:liquid-ooze} and []{ability:shadow-tag} can only hinder a move''s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example []{ability:color-change} or []{ability:forecast}; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from []{ability:drizzle}.  This ability cannot ignore []{ability:multitype} at all.

An ability ignored by this ability is only nullified while the move is being used.  For example, this Pok�mon''s moves can [paralyze]{mechanic:paralysis} a Pok�mon with []{ability:limber}, but Limber will activate and heal the paralysis immediately thereafter, and this Pok�mon''s []{move:spikes} are not affected by this ability after they have been placed.

When this Pok�mon enters battle, all participating trainers are notified that it has this ability.

This ability functions identically to []{ability:mold-breaker} and []{ability:turboblaze}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (165, 9, 'Protects allies against moves that affect their mental state.', 'Protects allies against moves that affect their mental state.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (166, 9, 'Protects friendly []{type:grass} Pok�mon from having their stats lowered by other Pok�mon.', 'Protects friendly []{type:grass} Pok�mon from having their stats lowered by other Pok�mon.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (167, 9, 'Restores HP upon eating a Berry, in addition to the Berry''s effect.', 'Restores HP upon eating a Berry, in addition to the Berry''s effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (168, 9, 'Changes the bearer''s type to match each move it uses.', 'Changes the bearer''s type to match each move it uses.

The type change takes place just before the move is used.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (169, 9, 'Halves damage from physical attacks.', 'Halves damage from physical attacks.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (170, 9, 'Steals the target''s held item when the bearer uses a damaging move.', 'Steals the target''s held item when the bearer uses a damaging move.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (171, 9, 'Protects against bullet, ball, and bomb-based moves.', 'Protects against bullet, ball, and bomb-based moves.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (172, 9, 'Raises Special Attack by two stages upon having any stat lowered.', 'Raises Special Attack by two stages upon having any stat lowered.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (173, 9, 'Strengthens biting moves to 1.5� their power.', 'Strengthens biting moves to 1.5� their power.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (174, 9, 'Turns the bearer''s []{type:normal} moves into []{type:ice} moves and strengthens them to 1.3� their power.', 'Turns the bearer''s []{type:normal}-type moves into []{type:ice}-type moves.  Moves changed by this ability have 1.3� their power.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (175, 9, 'Prevents friendly Pok�mon from sleeping.', 'Prevents friendly Pok�mon from sleeping.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (176, 9, 'Changes []{pokemon:aegislash} to Blade Forme before using a damaging move, or Shield Forme before using []{move:kings-shield}.', 'Changes []{pokemon:aegislash} to Blade Forme before using a damaging move, or Shield Forme before using []{move:kings-shield}.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (177, 9, 'Raises []{type:flying} moves'' priority by one stage.', 'Raises []{type:flying} moves'' priority by one stage.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (178, 9, 'Strengthens aura and pulse moves to 1.5� their power.', 'Strengthens aura and pulse moves to 1.5� their power.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (179, 9, 'Boosts Defense while []{move:grassy-terrain} is in effect.', 'Boosts Defense while []{move:grassy-terrain} is in effect.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (180, 9, 'Passes the bearer''s held item to an ally when the ally uses up its item.', 'Passes the bearer''s held item to an ally when the ally uses up its item.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (181, 9, 'Strengthens moves that make contact to 1.33� their power.', 'Strengthens moves that make contact to 1.33� their power.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (182, 9, 'Turns the bearer''s []{type:normal} moves into []{type:fairy} moves and strengthens them to 1.3� their power.', 'Turns the bearer''s []{type:normal}-type moves into []{type:fairy} moves.  Moves changed by this ability have 1.3� their power.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (183, 9, 'Lowers attacking Pok�mon''s Speed by one stage on contact.', 'Lowers attacking Pok�mon''s Speed by one stage on contact.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (184, 9, 'Turns the bearer''s []{type:normal} moves into []{type:flying} moves and strengthens them to 1.3� their power.', 'Turns the bearer''s []{type:normal}-type moves into []{type:flying}-type moves.  Moves changed by this ability have 1.3� their power.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (185, 9, 'Lets the bearer hit twice with damaging moves.  The second hit has half power.', 'Lets the bearer hit twice with damaging moves.  The second hit has half power.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (186, 9, 'Strengthens []{type:dark} moves to 1.33� their power for all friendly and opposing Pok�mon.', 'Strengthens []{type:dark} moves for all friendly and opposing Pok�mon.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (187, 9, 'Strengthens []{type:fairy} moves to 1.33� their power for all friendly and opposing Pok�mon.', 'Strengthens []{type:fairy} moves for all friendly and opposing Pok�mon.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (188, 9, 'Makes []{ability:dark-aura} and []{ability:fairy-aura} weaken moves of their respective types.', 'While this Pok�mon is on the field, []{ability:dark-aura} and []{ability:fairy-aura} weaken moves of their respective types to 2/3 their power, rather than strengthening them.');
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (1, 10, 'M� �anci nep?�tele [zastra�it]{mechanic:flinch} b?hem �to?en�.', null);
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (33, 10, 'B?hem [de�t?]{mechanic:rain} zdvojn�sobuje [Rychlost]{mechanic:speed}.', null);
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (3, 10, 'Zv��� [Rychlost]{mechanic:speed} o jeden [stupe?]{mechanic:stat-modifier} po ka�d�m kole.', null);
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (34, 10, 'B?hem [slune?n�ho po?as�]{mechanic:strong-sunlight} zdvojn�sobuje [Rychlost]{mechanic:speed}.', null);
INSERT INTO [ability_prose] ([ability_id], [local_language_id], [short_effect], [effect]) VALUES (2, 10, 'P?ivol� [d�?]{mechanic:rain}, kter� trv� a� po ukon?en� z�pasu.', null);
