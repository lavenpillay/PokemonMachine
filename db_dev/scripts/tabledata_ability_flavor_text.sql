
-- Table: ability_flavor_text
CREATE TABLE ability_flavor_text ( 
    ability_id       INTEGER NOT NULL,
    version_group_id INTEGER NOT NULL,
    language_id      INTEGER NOT NULL,
    flavor_text      TEXT    NOT NULL,
    PRIMARY KEY ( ability_id, version_group_id, language_id ),
    FOREIGN KEY ( ability_id ) REFERENCES abilities ( id ),
    FOREIGN KEY ( version_group_id ) REFERENCES version_groups ( id ),
    FOREIGN KEY ( language_id ) REFERENCES languages ( id ) 
);

INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 5, 9, 'Helps repel wild POK�MON.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 6, 9, 'Helps repel wild POK�MON.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 7, 9, 'Helps repel wild POK�MON.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 8, 9, 'The stench helps keep
wild Pok�mon away.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 9, 9, 'The stench helps keep
wild Pok�mon away.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 10, 9, 'The stench helps keep
wild Pok�mon away.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 11, 5, 'La puanteur peut
effrayer l�adversaire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 11, 9, 'The stench may cause
the target to flinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 14, 9, 'The stench may cause
the target to flinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 1, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 3, '?? ??? ???
??? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 5, 'La puanteur peut effrayer
l�adversaire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 6, 'L�sst den Gegner durch Gestank
zur�ckschrecken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 7, 'Es posible que el rival retroceda
por el mal olor.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 8, 'A volte il cattivo odore
fa tentennare i nemici.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 9, 'The stench may cause
the target to flinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (1, 15, 11, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 5, 9, 'Summons rain in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 6, 9, 'Summons rain in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 7, 9, 'Summons rain in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 8, 9, 'The Pok�mon makes it rain
if it appears in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 9, 9, 'The Pok�mon makes it rain
if it appears in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 10, 9, 'The Pok�mon makes it rain
if it appears in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 11, 5, 'Le Pok�mon invoque la pluie
quand il entre au combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 11, 9, 'The Pok�mon makes it rain
if it appears in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 14, 9, 'The Pok�mon makes it rain
if it appears in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 1, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 3, '??? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 5, 'Le Pok�mon invoque la pluie
quand il entre au combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 6, 'Ruft im Kampf Regen herbei.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 7, 'Hace que llueva cuando entra en
combate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 8, 'Quando scende in campo,
il Pok�mon attira la pioggia.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 9, 'The Pok�mon makes it rain
when it enters a battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (2, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 5, 9, 'Gradually boosts SPEED.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 6, 9, 'Gradually boosts SPEED.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 7, 9, 'Gradually boosts SPEED.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 8, 9, 'The Pok�mon�s Speed stat
is gradually boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 9, 9, 'The Pok�mon�s Speed stat
is gradually boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 10, 9, 'Its Speed stat is
gradually boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 11, 5, 'La Vitesse du Pok�mon
augmente progressivement.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 11, 9, 'Its Speed stat is
gradually boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 14, 9, 'Its Speed stat is
gradually boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 1, '??????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 3, '???
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 5, 'La Vitesse du Pok�mon
augmente progressivement.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 6, 'Erh�ht Initiative nach und nach.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 7, 'Aumenta la Velocidad
gradualmente.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 8, 'La statistica Velocit� aumenta
gradualmente.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 9, 'Its Speed stat is
gradually boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (3, 15, 11, '??????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 5, 9, 'Blocks critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 6, 9, 'Blocks critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 7, 9, 'Blocks critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 8, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 9, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 10, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 11, 5, 'Le Pok�mon est prot�g�
des coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 11, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 14, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 1, '??????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 3, '??? ???
??? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 5, 'Le Pok�mon est prot�g� des
coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 6, 'Wehrt gegnerische Volltreffer ab.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 7, 'Bloquea golpes cr�ticos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 8, 'Evita che il Pok�mon subisca
brutti colpi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 9, 'Protects the Pok�mon
from critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (4, 15, 11, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 5, 9, 'Negates 1-hit KO attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 6, 9, 'Negates 1-hit KO attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 7, 9, 'Negates 1-hit KO attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 8, 9, 'The Pok�mon is protected
against 1-hit KO attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 9, 9, 'The Pok�mon is protected
against 1-hit KO attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 10, 9, 'It is protected against
1-hit KO attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 11, 5, 'Prot�ge des capacit�s
mettant K.O. en un coup.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 11, 9, 'It cannot be knocked
out with one hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 14, 9, 'It cannot be knocked
out with one hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 1, '?????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 3, '????
???? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 5, 'Prot�ge des capacit�s mettant
K.O. en un coup.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 6, 'Bietet Schutz gegen K.O.-Treffer.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 7, 'Evita que el rival pueda debilitarle
de un solo golpe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 8, 'Evita che il Pok�mon vada KO
in un sol colpo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 9, 'It cannot be knocked
out with one hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (5, 15, 11, '??????????
');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 5, 9, 'Prevents self-destruction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 6, 9, 'Prevents self-destruction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 7, 9, 'Prevents self-destruction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 8, 9, 'Prevents combatants from
self destructing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 9, 9, 'Prevents combatants from
self destructing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 10, 9, 'Prevents combatants
from self-destructing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 11, 5, 'Emp�che les combattants
de s�autod�truire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 11, 9, 'Prevents the use of
self-destructing moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 14, 9, 'Prevents the use of
self-destructing moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 1, '?????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 3, '??? ??
? ? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 5, 'Emp�che les combattants de
s�autod�truire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 6, 'H�lt alle Pok�mon davon ab,
zu explodieren.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 7, 'Evita que un Pok�mon pueda
autodestruirse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 8, 'Impedisce le mosse
autodistruttive.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 9, 'Prevents the use of
self-destructing moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (6, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 5, 9, 'Prevents paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 6, 9, 'Prevents paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 7, 9, 'Prevents paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 8, 9, 'The Pok�mon is protected
from paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 9, 9, 'The Pok�mon is protected
from paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 10, 9, 'The Pok�mon is protected
from paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 11, 5, 'Prot�ge le Pok�mon de
la paralysie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 11, 9, 'The Pok�mon is protected
from paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 14, 9, 'The Pok�mon is protected
from paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 1, '?????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 3, '?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 5, 'Prot�ge le Pok�mon de la
paralysie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 6, 'Verhindert Paralyse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 7, 'Evita ser paralizado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 8, 'Il Pok�mon � protetto contro
la paralisi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 9, 'Protects the Pok�mon
from paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (7, 15, 11, '?????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 5, 9, 'Ups evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 6, 9, 'Ups evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 7, 9, 'Ups evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 8, 9, 'Boosts the Pok�mon�s
evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 9, 9, 'Boosts the Pok�mon�s
evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 10, 9, 'Boosts the Pok�mon�s
evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 11, 5, 'Augmente l�Esquive lors
des temp�tes de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 11, 9, 'Boosts the Pok�mon�s
evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 14, 9, 'Boosts the Pok�mon�s
evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 1, '??????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 3, '??????
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 5, 'Augmente l�Esquive lors des
temp�tes de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 6, 'Erh�ht in Sandst�rmen
den Fluchtwert.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 7, 'Aumenta la Evasi�n en las
tormentas de arena.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 8, 'L�elusione aumenta durante
le tempeste di sabbia.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 9, 'Boosts the Pok�mon�s
evasion in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (8, 15, 11, '?????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 5, 9, 'Paralyzes on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 6, 9, 'Paralyzes on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 7, 9, 'Paralyzes on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 8, 9, 'Contact with the Pok�mon
may cause paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 9, 9, 'Contact with the Pok�mon
may cause paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 10, 9, 'Contact with the Pok�mon
may cause paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 11, 5, 'Un contact avec le
Pok�mon peut paralyser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 11, 9, 'Contact with the Pok�mon
may cause paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 14, 9, 'Contact with the Pok�mon
may cause paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 1, '?????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 3, '??? ???
???? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 5, 'Un contact avec le Pok�mon
peut paralyser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 6, 'Kann bei Ber�hrung paralysieren.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 7, 'Puede paralizar al m�nimo
contacto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 8, 'Il contatto fisico con il Pok�mon
pu� causare paralisi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 9, 'Contact with the Pok�mon
may cause paralysis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (9, 15, 11, '???????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 5, 9, 'Turns electricity into HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 6, 9, 'Turns electricity into HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 7, 9, 'Turns electricity into HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 8, 9, 'Restores HP if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 9, 9, 'Restores HP if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 10, 9, 'Restores HP if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 11, 5, 'R�cup�re des PV si touch�
par une capacit� �lectrik.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 11, 9, 'Restores HP if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 14, 9, 'Restores HP if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 1, '?????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 3, '??? ???
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 5, 'R�cup�re des PV si touch� par
une capacit� �lectrik.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 6, 'Treffer durch Elektro-Attacken
regenerieren KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 7, 'Recupera PS al recibir ataques de
tipo El�ctrico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 8, 'Rid� PS se il Pok�mon subisce
una mossa di tipo Elettro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 9, 'Restores HP if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (10, 15, 11, '?????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 5, 9, 'Changes water into HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 6, 9, 'Changes water into HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 7, 9, 'Changes water into HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 8, 9, 'Restores HP if hit by a
Water-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 9, 9, 'Restores HP if hit by a
Water-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 10, 9, 'Restores HP if hit by a
Water-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 11, 5, 'R�cup�re des PV si touch�
par une capacit� Eau.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 11, 9, 'Restores HP if hit by a
Water-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 14, 9, 'Restores HP if hit by a
Water-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 1, '????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 3, '?? ???
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 5, 'R�cup�re des PV si touch� par
une capacit� Eau.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 6, 'Treffer durch Wasser-Attacken
regenerieren KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 7, 'Recupera PS al recibir ataques de
tipo Agua.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 8, 'Rid� PS se il Pok�mon subisce
una mossa di tipo Acqua.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 9, 'Restores HP if hit by a
Water-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (11, 15, 11, '????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 5, 9, 'Prevents attraction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 6, 9, 'Prevents attraction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 7, 9, 'Prevents attraction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 8, 9, 'Prevents the Pok�mon
from becoming infatuated.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 9, 9, 'Prevents the Pok�mon
from becoming infatuated.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 10, 9, 'Prevents it from
becoming infatuated.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 11, 5, 'Emp�che le Pok�mon de
tomber amoureux.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 11, 9, 'Prevents it from
becoming infatuated.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 14, 9, 'Prevents it from
becoming infatuated.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 1, '???????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 3, '?????? ?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 5, 'Immunise le Pok�mon contre
l�attraction ou la provocation.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 6, 'Verhindert, dass das Pok�mon
bet�rt oder provoziert wird.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 7, 'Evita que el Pok�mon sea
atra�do o provocado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 8, 'Protegge il Pok�mon da
infatuazioni e provocazioni.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 9, 'Keeps the Pok�mon from being
infatuated or falling for taunts.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (12, 15, 11, '???????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 5, 9, 'Negates weather effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 6, 9, 'Negates weather effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 7, 9, 'Negates weather effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 8, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 9, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 10, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 11, 5, 'Annule les effets du
climat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 11, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 14, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 1, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 3, '??? ???
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 5, 'Annule les effets du climat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 6, 'Hebt Wetter-Effekte auf.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 7, 'Anula los efectos del tiempo
atmosf�rico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 8, 'Neutralizza gli effetti delle
condizioni atmosferiche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (13, 15, 11, '???????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 5, 9, 'Raises accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 6, 9, 'Raises accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 7, 9, 'Raises accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 8, 9, 'The Pok�mon�s accuracy is
boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 9, 9, 'The Pok�mon�s accuracy is
boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 10, 9, 'The Pok�mon�s accuracy
is boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 11, 5, 'Augmente la Pr�cision du
Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 11, 9, 'The Pok�mon�s accuracy
is boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 14, 9, 'The Pok�mon�s accuracy
is boosted.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 1, '????????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 3, '??? ????
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 5, 'Augmente la Pr�cision du
Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 6, 'Steigert die Genauigkeit
von Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 7, 'Aumenta la Precisi�n del
Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 8, 'Aumenta la precisione
del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 9, 'Boosts the Pok�mon�s accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (14, 15, 11, '???????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 5, 9, 'Prevents sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 6, 9, 'Prevents sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 7, 9, 'Prevents sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 8, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 9, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 10, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 11, 5, 'Emp�che le Pok�mon de
s�endormir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 11, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 14, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 1, '??????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 3, '?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 5, 'Emp�che le Pok�mon de
s�endormir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 6, 'Verhindert Einschlafen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 7, 'Evita el quedarse dormido.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 8, 'Impedisce al Pok�mon
di addormentarsi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (15, 15, 11, '??????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 5, 9, 'Changes type to foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 6, 9, 'Changes type to foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 7, 9, 'Changes type to foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 8, 9, 'Changes the Pok�mon�s
type to the foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 9, 9, 'Changes the Pok�mon�s
type to the foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 10, 9, 'Changes the Pok�mon�s
type to the foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 11, 5, 'Le Pok�mon adopte le type
de la capacit� ennemie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 11, 9, 'Changes the Pok�mon�s
type to the foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 14, 9, 'Changes the Pok�mon�s
type to the foe�s move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 1, '????????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 3, '?? ??? ????
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 5, 'Le Pok�mon adopte le type de
la capacit� ennemie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 6, '�ndert seinen Typ zu dem
der Attacke des Angreifers.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 7, 'Adopta el tipo del �ltimo
movimiento del que sea blanco.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 8, 'Il Pok�mon acquisisce il tipo
della mossa subita.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 9, 'The Pok�mon�s type becomes
the type of the move used on it.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (16, 15, 11, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 5, 9, 'Prevents poisoning.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 6, 9, 'Prevents poisoning.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 7, 9, 'Prevents poisoning.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 8, 9, 'Prevents the Pok�mon
from getting poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 9, 9, 'Prevents the Pok�mon
from getting poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 10, 9, 'Prevents the Pok�mon
from getting poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 11, 5, 'Emp�che le Pok�mon d��tre
empoisonn�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 11, 9, 'Prevents the Pok�mon
from getting poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 14, 9, 'Prevents the Pok�mon
from getting poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 1, '?????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 3, '? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 5, 'Emp�che le Pok�mon d��tre
empoisonn�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 6, 'Verhindert Vergiftungen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 7, 'Evita el envenenamiento.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 8, 'Impedisce al Pok�mon di
venire avvelenato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 9, 'Prevents the Pok�mon
from getting poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (17, 15, 11, '?????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 5, 9, 'Powers up if hit by fire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 6, 9, 'Powers up if hit by fire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 7, 9, 'Powers up if hit by fire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 8, 9, 'Powers up Fire-type moves
if hit by a fire move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 9, 9, 'Powers up Fire-type moves
if hit by a fire move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 10, 9, 'It powers up Fire-type
moves if it�s hit by one.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 11, 5, 'Booste capacit�s Feu si
touch� par attaques Feu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 11, 9, 'It powers up Fire-type
moves if it�s hit by one.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 14, 9, 'It powers up Fire-type
moves if it�s hit by one.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 1, '?????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 3, '??? ???
?? ??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 5, 'Booste les capacit�s Feu si
touch� par attaque Feu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 6, 'Verst�rkt Feuer-Attacken, wenn
von Feuer-Attacken getroffen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 7, 'Potencia movimientos de tipo
Fuego si ha sufrido antes alguno.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 8, 'Potenzia le proprie mosse Fuoco
se se ne subisce una.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 9, 'Powers up the Pok�mon�s Fire-
type moves if it�s hit by one.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (18, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 5, 9, 'Prevents added effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 6, 9, 'Prevents added effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 7, 9, 'Prevents added effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 8, 9, 'Blocks the added effects
of attacks taken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 9, 9, 'Blocks the added effects
of attacks taken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 10, 9, 'Blocks the added effects
of attacks taken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 11, 5, 'Annule les effets cumul�s
d�une attaque ennemie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 11, 9, 'Blocks the added effects
of attacks taken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 14, 9, 'Blocks the added effects
of attacks taken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 1, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 3, '??? ?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 5, 'Annule les effets cumul�s d�une
attaque ennemie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 6, 'Blockiert Zusatz-Effekte
gegnerischer Angriffe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 7, 'Anula el efecto secundario del
ataque sufrido.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 8, 'Annulla gli effetti secondari
delle mosse subite.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 9, 'Blocks the additional effects
of attacks taken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (19, 15, 11, '????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 5, 9, 'Prevents confusion.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 6, 9, 'Prevents confusion.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 7, 9, 'Prevents confusion.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 8, 9, 'Prevents the Pok�mon
from becoming confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 9, 9, 'Prevents the Pok�mon
from becoming confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 10, 9, 'Prevents the Pok�mon
from becoming confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 11, 5, 'Emp�che la confusion.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 11, 9, 'Prevents the Pok�mon
from becoming confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 14, 9, 'Prevents the Pok�mon
from becoming confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 1, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 3, '?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 5, 'Emp�che la confusion.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 6, 'Verhindert Verwirrung.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 7, 'Evita ser confundido.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 8, 'Impedisce al Pok�mon
di venire confuso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 9, 'Prevents the Pok�mon
from becoming confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (20, 15, 11, '?????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 5, 9, 'Firmly anchors the body.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 6, 9, 'Firmly anchors the body.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 7, 9, 'Firmly anchors the body.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 8, 9, 'Negates moves that
force switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 9, 9, 'Negates moves that
force switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 10, 9, 'Negates foes� moves that
force switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 11, 5, 'Annule les cap. et obj. qui
font changer de Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 11, 9, 'Negates all moves that
force switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 14, 9, 'Negates all moves that
force switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 3, '????? ???? ???
??? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 5, 'Annule les capacit�s ou objets
qui font changer de Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 6, 'Blockt Attacken und Items,
die Pok�mon austauschen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 7, 'Anula movimientos y objetos que
fuerzan el relevo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 8, 'Resiste a strumenti e mosse
di sostituzione.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 9, 'Negates all moves and items
that force switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (21, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 5, 9, 'Lowers the foe�s ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 6, 9, 'Lowers the foe�s ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 7, 9, 'Lowers the foe�s ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 8, 9, 'Lowers the foe�s Attack
stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 9, 9, 'Lowers the foe�s Attack
stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 10, 9, 'Lowers the foe�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 11, 5, 'Baisse l�Attaque ennemie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 11, 9, 'Lowers the foe�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 14, 9, 'Lowers the foe�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 1, '??????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 3, '??? ???
?????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 5, 'Baisse l�Attaque ennemie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 6, 'Senkt Angriff des Gegners.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 7, 'Baja el Ataque del rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 8, 'Riduce la statistica Attacco
del nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 9, 'Lowers the opposing Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (22, 15, 11, '???????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 5, 9, 'Prevents the foe�s escape.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 6, 9, 'Prevents the foe�s escape.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 7, 9, 'Prevents the foe�s escape.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 8, 9, 'Prevents the foe from
escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 9, 9, 'Prevents the foe from
escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 10, 9, 'Prevents the foe from
escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 11, 5, 'Emp�che le Pok�mon ennemi
de quitter le combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 11, 9, 'Prevents the foe from
escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 14, 9, 'Prevents the foe from
escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 1, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 3, '??? ???? ??
??? ? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 5, 'Emp�che le Pok�mon ennemi de
quitter le combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 6, 'Hindert Gegner an der Flucht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 7, 'Evita que el enemigo huya.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 8, 'Impedisce la fuga al nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 9, 'Prevents opposing Pok�mon
from escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (23, 15, 11, '????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 5, 9, 'Hurts to touch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 6, 9, 'Hurts to touch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 7, 9, 'Hurts to touch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 8, 9, 'Inflicts damage to the
foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 9, 9, 'Inflicts damage to the
foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 10, 9, 'Inflicts damage to the
foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 11, 5, 'Le Pok�mon blesse
l�ennemi qui le touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 11, 9, 'Inflicts damage to the
attacker on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 14, 9, 'Inflicts damage to the
attacker on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 1, '????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 3, '??? ????
??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 5, 'Blesse l�attaquant au
moindre contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 6, 'Verletzt Angreifer bei Ber�hrung.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 7, 'Hiere al tacto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 8, 'Il nemico che manda a segno una
mossa fisica viene danneggiato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 9, 'Inflicts damage to the
attacker on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (24, 15, 11, '???????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 5, 9, '�Super effective� hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 6, 9, '�Super effective� hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 7, 9, '�Super effective� hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 8, 9, 'Only supereffective
moves will hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 9, 9, 'Only supereffective
moves will hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 10, 9, 'Only supereffective
moves will hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 11, 5, 'Seules capacit�s �super
efficaces� l�atteignent.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 11, 9, 'Only supereffective
moves will hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 14, 9, 'Only supereffective
moves will hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 1, '??????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 3, '??? ??? ????
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 5, 'Seules les capacit�s �?super
efficaces?� l�atteignent.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 6, 'Nur sehr effektive Treffer
richten Schaden an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 7, 'Solo le hacen da�o los
movimientos supereficaces.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 8, 'Rende vulnerabili solo alle
mosse superefficaci.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 9, 'Only supereffective
moves will hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (25, 15, 11, '?????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 5, 9, 'Not hit by GROUND attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 6, 9, 'Not hit by GROUND attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 7, 9, 'Not hit by GROUND attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 8, 9, 'Gives full immunity to all
Ground-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 9, 9, 'Gives full immunity to all
Ground-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 10, 9, 'Gives full immunity to all
Ground-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 11, 5, 'Immunise contre toutes
les capacit�s de type Sol.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 11, 9, 'Gives full immunity to all
Ground-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 14, 9, 'Gives full immunity to all
Ground-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 1, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 3, '???? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 5, 'Immunise contre toutes les
capacit�s de type Sol.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 6, 'Volle Immunit�t gegen
alle Boden-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 7, 'Proporciona inmunidad frente a
los ataques de tipo Tierra.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 8, 'Conferisce immunit� dagli attacchi
di tipo Terra.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 9, 'Gives full immunity to all
Ground-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (26, 15, 11, '??????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 5, 9, 'Leaves spores on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 6, 9, 'Leaves spores on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 7, 9, 'Leaves spores on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 8, 9, 'Contact may paralyze,
poison, or cause sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 9, 9, 'Contact may paralyze,
poison, or cause sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 10, 9, 'Contact may paralyze,
poison, or cause sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 11, 5, 'Peut paralyser, empoison-
ner, endormir au contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 11, 9, 'Contact may poison or
cause paralysis or sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 14, 9, 'Contact may poison or
cause paralysis or sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 1, '??????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 3, '??? ?, ??, ??
??? ? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 5, 'Peut paralyser, empoisonner,
endormir au contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 6, 'Kann bei Kontakt Paralyse,
Vergiftung oder Schlaf ausl�sen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 7, 'Puede dormir, envenenar o
paralizar al contacto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 8, 'Al contatto pu� causare
avvelenamento, paralisi o sonno.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 9, 'Contact may poison or
cause paralysis or sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (27, 15, 11, '??????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 5, 9, 'Passes on status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 6, 9, 'Passes on status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 7, 9, 'Passes on status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 8, 9, 'Passes on a burn, poison,
or paralysis to the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 9, 9, 'Passes on a burn, poison,
or paralysis to the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 10, 9, 'Passes a burn, poison,
or paralysis to the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 11, 5, 'Transmet br�lure, poison
ou paralysie � l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 11, 9, 'Passes a burn, poison,
or paralysis to the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 14, 9, 'Passes a burn, poison,
or paralysis to the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 1, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 3, '?, ??, ???
???? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 5, 'Transmet br�lure, paralysie ou
poison au Pok�mon qui l�a inflig�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 6, 'Brand, Gift oder Paralyse ereilen
auch den Verursacher.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 7, 'Contagia envenenamiento,
par�lisis o quemaduras.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 8, 'Avvelena, paralizza o scotta il
nemico che infligge lo stato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 9, 'Passes poison, paralyze, or burn
to the Pok�mon that inflicted it.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (28, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 5, 9, 'Prevents ability reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 6, 9, 'Prevents ability reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 7, 9, 'Prevents ability reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 8, 9, 'Prevents the Pok�mon�s
stats from being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 9, 9, 'Prevents the Pok�mon�s
stats from being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 10, 9, 'Prevents its stats from
being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 11, 5, 'Emp�che les stats
du Pok�mon de baisser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 11, 9, 'Prevents other Pok�mon
from lowering its stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 14, 9, 'Prevents other Pok�mon
from lowering its stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 1, '???????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 3, '??? ???
???? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 5, 'Emp�che les stats du Pok�mon
de baisser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 6, 'Hindert Angreifer daran,
Statuswerte zu senken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 7, 'Evita que bajen las
caracter�sticas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 8, 'Le statistiche del Pok�mon
non possono essere ridotte.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 9, 'Prevents other Pok�mon
from lowering its stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (29, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 5, 9, 'Heals upon switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 6, 9, 'Heals upon switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 7, 9, 'Heals upon switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 8, 9, 'All status problems are
healed upon switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 9, 9, 'All status problems are
healed upon switching out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 10, 9, 'All status problems heal
when it switches out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 11, 5, 'Quitter le combat soigne
les probl�mes de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 11, 9, 'All status problems heal
when it switches out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 14, 9, 'All status problems heal
when it switches out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 3, '???? ?? ????
?? ??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 5, 'Quitter le combat soigne les
probl�mes de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 6, 'Heilt bei Austausch
Statusprobleme.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 7, 'Cura problemas de estado al
cambiar de Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 8, 'Cura i problemi di stato quando
il Pok�mon viene sostituito.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 9, 'All status conditions heal when
the Pok�mon switches out.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (30, 15, 11, '?????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 5, 9, 'Draws electrical moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 6, 9, 'Draws electrical moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 7, 9, 'Draws electrical moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 8, 9, 'The Pok�mon draws in all
Electric-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 9, 9, 'The Pok�mon draws in all
Electric-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 10, 9, 'The Pok�mon draws in all
Electric-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 11, 5, 'Attire l��lectricit� et
augmente l�Atq. Sp�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 11, 9, 'Draws in all Electric-type
moves to up Sp. Attack.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 14, 9, 'Draws in all Electric-type
moves to up Sp. Attack.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 3, '??? ????
????? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 5, 'Attire et neutralise les attaques
�lectrik et monte l�Atq. Sp�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 6, 'Absorbiert Elektro-Attacken
und steigert den Spezial-Angriff.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 7, 'Atrae y neutraliza movimientos de
tipo El�ctrico y sube el At. Esp.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 8, 'Neutralizza mosse di tipo Elettro
per aumentare l�Attacco Speciale.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 9, 'Draws in all Electric-type moves
to boost its Sp. Atk stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (31, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 5, 9, 'Promotes added effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 6, 9, 'Promotes added effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 7, 9, 'Promotes added effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 8, 9, 'Boosts the likelihood of
added effects appearing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 9, 9, 'Boosts the likelihood of
added effects appearing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 10, 9, 'Boosts the likelihood of
added effects appearing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 11, 5, 'Augmente la fr�quence
du cumul d�effets.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 11, 9, 'Boosts the likelihood of
added effects appearing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 14, 9, 'Boosts the likelihood of
added effects appearing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 1, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 3, '??? ?? ???
??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 5, 'Augmente la fr�quence du cumul
d�effets.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 6, 'Erh�ht Chance auf Zusatz-Effekte.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 7, 'Aumenta la probabilidad de que
haya efectos secundarios.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 8, 'Gli effetti secondari delle mosse
sono pi� probabili.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 9, 'Boosts the likelihood of
additional effects occurring.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (32, 15, 11, '????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 5, 9, 'Raises SPEED in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 6, 9, 'Raises SPEED in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 7, 9, 'Raises SPEED in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 8, 9, 'Boosts the Pok�mon�s
Speed in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 9, 9, 'Boosts the Pok�mon�s
Speed in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 10, 9, 'Boosts the Pok�mon�s
Speed in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 11, 5, 'Augmente la Vitesse du
Pok�mon s�il pleut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 11, 9, 'Boosts the Pok�mon�s
Speed in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 14, 9, 'Boosts the Pok�mon�s
Speed in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 1, '???????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 3, '?? ? ? ????
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 5, 'Augmente la Vitesse du
Pok�mon s�il pleut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 6, 'Steigert bei Regen die Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 7, 'Sube la Velocidad cuando hay
lluvia.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 8, 'Se piove, la statistica Velocit�
aumenta.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 9, 'Boosts the Pok�mon�s
Speed stat in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (33, 15, 11, '?????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 5, 9, 'Raises SPEED in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 6, 9, 'Raises SPEED in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 7, 9, 'Raises SPEED in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 8, 9, 'Boosts the Pok�mon�s
Speed in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 9, 9, 'Boosts the Pok�mon�s
Speed in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 10, 9, 'Boosts the Pok�mon�s
Speed in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 11, 5, 'Augmente la Vitesse du
Pok�mon s�il y a du soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 11, 9, 'Boosts the Pok�mon�s
Speed in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 14, 9, 'Boosts the Pok�mon�s
Speed in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 1, '???????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 3, '?? ? ????
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 5, 'Augmente la Vitesse du
Pok�mon s�il y a du soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 6, 'Steigert bei Sonnenschein
die Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 7, 'Sube la Velocidad cuando hay
sol.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 8, 'Se c�� il sole, la statistica
Velocit� aumenta.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 9, 'Boosts the Pok�mon�s
Speed stat in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (34, 15, 11, '??????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 5, 9, 'Encounter rate increases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 6, 9, 'Encounter rate increases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 7, 9, 'Encounter rate increases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 8, 9, 'Raises the likelihood of
meeting wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 9, 9, 'Raises the likelihood of
meeting wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 10, 9, 'Raises the likelihood of
meeting wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 11, 5, 'Augmente les rencontres
avec Pok�mon sauvages.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 11, 9, 'Raises the likelihood of
meeting wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 14, 9, 'Raises the likelihood of
meeting wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 1, '??????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 3, '?? ????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 5, 'Augmente les rencontres avec
les Pok�mon sauvages.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 6, 'Erh�ht die Wahrscheinlichkeit,
wilden Pok�mon zu begegnen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 7, 'Aumenta la probabilidad de
encontrar Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 8, '� pi� probabile incontrare
Pok�mon selvatici.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 9, 'Raises the likelihood of
meeting wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (35, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 5, 9, 'Copies special ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 6, 9, 'Copies special ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 7, 9, 'Copies special ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 8, 9, 'The Pok�mon copies the
foe�s ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 9, 9, 'The Pok�mon copies the
foe�s ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 10, 9, 'The Pok�mon copies the
foe�s ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 11, 5, 'Imite la capacit� sp�ciale
de l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 11, 9, 'The Pok�mon copies a
foe�s Ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 14, 9, 'The Pok�mon copies a
foe�s Ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 1, '????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 3, '??? ??
??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 5, 'Imite le talent de l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 6, 'Das Pok�mon kopiert
die F�higkeit des Gegners.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 7, 'Copia la habilidad del rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 8, 'Copia l�abilit� del nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 9, 'The Pok�mon copies an
opposing Pok�mon�s Ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (36, 15, 11, '??????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 5, 9, 'Raises ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 6, 9, 'Raises ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 7, 9, 'Raises ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 8, 9, 'Raises the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 9, 9, 'Raises the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 10, 9, 'Raises the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 11, 5, 'Augmente l�Attaque du
Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 11, 9, 'Raises the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 14, 9, 'Raises the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 1, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 3, '?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 5, 'Augmente l�Attaque du Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 6, 'St�rkt physische Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 7, 'Aumenta el Ataque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 8, 'Migliora la statistica Attacco
del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 9, 'Boosts the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (37, 15, 11, '?????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 5, 9, 'Poisons foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 6, 9, 'Poisons foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 7, 9, 'Poisons foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 8, 9, 'Contact with the Pok�mon
may poison the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 9, 9, 'Contact with the Pok�mon
may poison the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 10, 9, 'Contact with the Pok�mon
may poison the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 11, 5, 'Peut empoisonner l�ennemi
s�il y a contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 11, 9, 'Contact with the Pok�mon
may poison the attacker.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 14, 9, 'Contact with the Pok�mon
may poison the attacker.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 1, '????????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 3, '??? ???
???? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 5, 'Peut empoisonner l�attaquant
s�il y a contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 6, 'Vergiftet den Angreifer
eventuell bei Ber�hrung.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 7, 'Puede envenenar al m�nimo
contacto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 8, 'Pu� avvelenare chi manda
a segno una mossa fisica.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 9, 'Contact with the Pok�mon
may poison the attacker.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (38, 15, 11, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 5, 9, 'Prevents flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 6, 9, 'Prevents flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 7, 9, 'Prevents flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 8, 9, 'The Pok�mon is protected
from flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 9, 9, 'The Pok�mon is protected
from flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 10, 9, 'The Pok�mon is protected
from flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 11, 5, 'Emp�che le Pok�mon
d�avoir peur.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 11, 9, 'The Pok�mon is protected
from flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 14, 9, 'The Pok�mon is protected
from flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 1, '??????
');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 3, '??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 5, 'Emp�che le Pok�mon d�avoir
peur.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 6, 'Verhindert Zur�ckschrecken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 7, 'Evita el retroceso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 8, 'Evita che il Pok�mon tentenni.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 9, 'Protects the Pok�mon
from flinching.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (39, 15, 11, '??????
');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 5, 9, 'Prevents freezing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 6, 9, 'Prevents freezing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 7, 9, 'Prevents freezing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 8, 9, 'Prevents the Pok�mon
from becoming frozen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 9, 9, 'Prevents the Pok�mon
from becoming frozen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 10, 9, 'Prevents the Pok�mon
from becoming frozen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 11, 5, 'Prot�ge le Pok�mon
contre le gel.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 11, 9, 'Prevents the Pok�mon
from becoming frozen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 14, 9, 'Prevents the Pok�mon
from becoming frozen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 1, '??????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 3, '?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 5, 'Prot�ge le Pok�mon contre le
gel.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 6, 'Verhindert Einfrieren.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 7, 'Evita la congelaci�n.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 8, 'Evita che il Pok�mon
venga congelato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 9, 'Prevents the Pok�mon
from becoming frozen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (40, 15, 11, '??????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 5, 9, 'Prevents burns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 6, 9, 'Prevents burns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 7, 9, 'Prevents burns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 8, 9, 'Prevents the Pok�mon
from getting a burn.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 9, 9, 'Prevents the Pok�mon
from getting a burn.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 10, 9, 'Prevents the Pok�mon
from getting a burn.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 11, 5, 'Prot�ge le Pok�mon
des br�lures.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 11, 9, 'Prevents the Pok�mon
from getting a burn.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 14, 9, 'Prevents the Pok�mon
from getting a burn.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 1, '??????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 3, '?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 5, 'Prot�ge le Pok�mon des
br�lures.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 6, 'Verhindert Verbrennungen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 7, 'Evita las quemaduras.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 8, 'Evita che il Pok�mon
resti scottato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 9, 'Prevents the Pok�mon
from getting a burn.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (41, 15, 11, '??????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 5, 9, 'Traps STEEL-type POK�MON.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 6, 9, 'Traps STEEL-type POK�MON.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 7, 9, 'Traps STEEL-type POK�MON.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 8, 9, 'Prevents Steel-type
Pok�mon from escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 9, 9, 'Prevents Steel-type
Pok�mon from escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 10, 9, 'Prevents Steel-type
Pok�mon from escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 11, 5, 'Emp�che les Pok�mon Acier
de fuir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 11, 9, 'Prevents Steel-type
Pok�mon from escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 14, 9, 'Prevents Steel-type
Pok�mon from escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 1, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 3, '??? ????
??? ? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 5, 'Emp�che les Pok�mon Acier
de fuir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 6, 'Hindert Stahl-Pok�mon
an der Flucht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 7, 'Impide huir a los Pok�mon de
tipo Acero.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 8, 'Impedisce la fuga ai Pok�mon
di tipo Acciaio.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 9, 'Prevents Steel-type
Pok�mon from escaping.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (42, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 5, 9, 'Avoids sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 6, 9, 'Avoids sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 7, 9, 'Avoids sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 8, 9, 'Gives full immunity to all
sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 9, 9, 'Gives full immunity to all
sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 10, 9, 'Gives full immunity to all
sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 11, 5, 'Prot�ge de toutes les
capacit�s sonores.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 11, 9, 'Gives full immunity to all
sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 14, 9, 'Gives full immunity to all
sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 1, '???????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 3, '?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 5, 'Prot�ge de toutes les capacit�s
sonores.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 6, 'Volle Immunit�t gegen
alle L�rm-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 7, 'Evita ataques de sonido.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 8, 'Fornisce immunit� alle mosse
basate sul suono.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 9, 'Gives full immunity to all
sound-based moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (43, 15, 11, '?????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 5, 9, 'Slight HP recovery in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 6, 9, 'Slight HP recovery in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 7, 9, 'Slight HP recovery in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 8, 9, 'The Pok�mon gradually
recovers HP in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 9, 9, 'The Pok�mon gradually
recovers HP in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 10, 9, 'The Pok�mon gradually
recovers HP in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 11, 5, 'R�cup�re progressivement
des PV par temps de pluie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 11, 9, 'The Pok�mon gradually
regains HP in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 14, 9, 'The Pok�mon gradually
regains HP in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 3, '?? ? ? ???
HP? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 5, 'R�cup�re progressivement des
PV par temps de pluie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 6, 'Stellt bei Regen langsam
und stetig KP wieder her.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 7, 'Recupera PS de forma gradual
cuando llueve.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 8, 'Il Pok�mon recupera PS
quando piove.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 9, 'The Pok�mon gradually
regains HP in rain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (44, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 5, 9, 'Summons a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 6, 9, 'Summons a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 7, 9, 'Summons a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 8, 9, 'The Pok�mon summons a
sandstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 9, 9, 'The Pok�mon summons a
sandstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 10, 9, 'The Pok�mon summons a
sandstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 11, 5, 'Le Pok�mon invoque une
temp�te de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 11, 9, 'The Pok�mon summons a
sandstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 14, 9, 'The Pok�mon summons a
sandstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 1, '????????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 3, '???? ?????
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 5, 'Le Pok�mon invoque une
temp�te de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 6, 'Erzeugt im Kampf Sandst�rme.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 7, 'Crea una tormenta de arena en
el combate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 8, 'Causa una tempesta di sabbia
durante la lotta.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 9, 'The Pok�mon summons a
sandstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (45, 15, 11, '?????????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 5, 9, 'Raises foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 6, 9, 'Raises foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 7, 9, 'Raises foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 8, 9, 'The Pok�mon raises the
foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 9, 9, 'The Pok�mon raises the
foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 10, 9, 'The Pok�mon raises the
foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 11, 5, 'Force l�ennemi �
d�penser plus de PP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 11, 9, 'The Pok�mon raises the
foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 14, 9, 'The Pok�mon raises the
foe�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 1, '????????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 3, '??? ???? ???
PP? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 5, 'Force l�ennemi � d�penser plus
de PP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 6, 'Steigert den AP-Verbrauch
des Gegners.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 7, 'Hace que los PP del rival se
acaben antes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 8, 'Il nemico usa pi� PP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 9, 'The Pok�mon raises opposing
Pok�mon�s PP usage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (46, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 5, 9, 'Heat-and-cold protection.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 6, 9, 'Heat-and-cold protection.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 7, 9, 'Heat-and-cold protection.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 8, 9, 'Raises resistance to Fire-?
and Ice-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 9, 9, 'Raises resistance to Fire-?
and Ice-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 10, 9, 'Ups resistance to Fire-?
and Ice-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 11, 5, 'Augmente la r�sistance
aux cap. Feu et Glace.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 11, 9, 'Ups resistance to Fire-?
and Ice-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 14, 9, 'Ups resistance to Fire-?
and Ice-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 1, '????????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 3, '??? ?????
??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 5, 'Augmente la r�sistance aux
capacit�s Feu et Glace.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 6, 'Stark gegen Attacken der Typen
Feuer und Eis.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 7, 'Aten�a los ataques de tipo Fuego
y Hielo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 8, 'Aumenta la resistenza alle mosse
di tipo Fuoco e Ghiaccio.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 9, 'Boosts resistance to Fire-?
and Ice-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (47, 15, 11, '????????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 5, 9, 'Awakens quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 6, 9, 'Awakens quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 7, 9, 'Awakens quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 8, 9, 'The Pok�mon awakens
quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 9, 9, 'The Pok�mon awakens
quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 10, 9, 'The Pok�mon awakens
quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 11, 5, 'Le Pok�mon se r�veille
plus rapidement.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 11, 9, 'The Pok�mon awakens
quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 14, 9, 'The Pok�mon awakens
quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 1, '????????????
');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 3, '?? ????
?? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 5, 'Le Pok�mon se r�veille plus
rapidement.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 6, 'Bewirkt, dass das Pok�mon
schneller wieder aufwacht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 7, 'El Pok�mon se despierta
r�pidamente.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 8, 'Il Pok�mon si risveglia
rapidamente dal sonno.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 9, 'The Pok�mon awakens
quickly from sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (48, 15, 11, '???????????
');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 5, 9, 'Burns the foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 6, 9, 'Burns the foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 7, 9, 'Burns the foe on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 8, 9, 'Contact with the Pok�mon
may burn the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 9, 9, 'Contact with the Pok�mon
may burn the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 10, 9, 'Contact with the Pok�mon
may burn the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 11, 5, 'Peut br�ler l�ennemi s�il y
a contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 11, 9, 'Contact with the Pok�mon
may burn the attacker.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 14, 9, 'Contact with the Pok�mon
may burn the attacker.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 1, '????????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 3, '??? ????
??? ?? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 5, 'Peut br�ler l�attaquant s�il y a
contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 6, 'F�gt dem Angreifer bei Ber�hrung
eventuell Verbrennungen zu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 7, 'Puede quemar al m�nimo
contacto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 8, 'Al contatto subito, chi sferra
l�attacco pu� venire scottato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 9, 'Contact with the Pok�mon
may burn the attacker.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (49, 15, 11, '???????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 5, 9, 'Makes escaping easier.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 6, 9, 'Makes escaping easier.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 7, 9, 'Makes escaping easier.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 8, 9, 'Enables sure getaway from
wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 9, 9, 'Enables sure getaway from
wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 10, 9, 'Enables sure getaway
from wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 11, 5, 'Permet de fuir n�importe
quel Pok�mon sauvage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 11, 9, 'Enables a sure getaway
from wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 14, 9, 'Enables a sure getaway
from wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 3, '?? ???????
??? ??? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 5, 'Permet de fuir n�importe quel
Pok�mon sauvage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 6, 'Die Flucht vor wilden Pok�mon
gelingt immer.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 7, 'Permite escapar de todos los
Pok�mon salvajes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 8, 'Garantisce la fuga dai
Pok�mon selvatici.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 9, 'Enables a sure getaway
from wild Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (50, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 5, 9, 'Prevents loss of accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 6, 9, 'Prevents loss of accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 7, 9, 'Prevents loss of accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 8, 9, 'Prevents the Pok�mon
from losing accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 9, 9, 'Prevents the Pok�mon
from losing accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 10, 9, 'Prevents the Pok�mon
from losing accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 11, 5, 'Emp�che le Pok�mon de
perdre en Pr�cision.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 11, 9, 'Prevents other Pok�mon
from lowering accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 14, 9, 'Prevents other Pok�mon
from lowering accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 1, '????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 3, '????
???? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 5, 'Emp�che le Pok�mon de perdre
en Pr�cision.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 6, 'Hindert Angreifer daran,
die Genauigkeit zu senken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 7, 'Evita que disminuya la Precisi�n.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 8, 'Evita che la precisione
diminuisca.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 9, 'Prevents other Pok�mon
from lowering accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (51, 15, 11, '????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 5, 9, 'Prevents ATTACK reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 6, 9, 'Prevents ATTACK reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 7, 9, 'Prevents ATTACK reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 8, 9, 'Prevents the Attack stat
from being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 9, 9, 'Prevents the Attack stat
from being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 10, 9, 'Prevents the Attack
stat from being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 11, 5, 'Emp�che la r�duction de
l�Attaque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 11, 9, 'Prevents other Pok�mon
from lowering Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 14, 9, 'Prevents other Pok�mon
from lowering Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 1, '??????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 3, '??? ???
????? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 5, 'Emp�che la r�duction de
l�Attaque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 6, 'Hindert Angreifer daran,
den Angriffs-Wert zu senken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 7, 'Evita que disminuya el Ataque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 8, 'Evita che la statistica Attacco
venga ridotta.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 9, 'Prevents other Pok�mon
from lowering its Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (52, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 5, 9, 'May pick up items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 6, 9, 'May pick up items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 7, 9, 'May pick up items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 8, 9, 'The Pok�mon may pick up
items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 9, 9, 'The Pok�mon may pick up
items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 10, 9, 'The Pok�mon may
pick up items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 11, 5, 'Permet parfois au Pok�mon
de ramasser des objets.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 11, 9, 'The Pok�mon may
pick up items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 14, 9, 'The Pok�mon may
pick up items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 1, '???????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 3, '??? ???
?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 5, 'Permet parfois au Pok�mon de
ramasser des objets.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 6, 'Hebt gelegentlich Items auf.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 7, 'El Pok�mon puede encontrar
objetos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 8, 'Aumenta la probabilit� di trovare
strumenti.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 9, 'The Pok�mon may
pick up items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (53, 15, 11, '?????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 5, 9, 'Moves only every two turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 6, 9, 'Moves only every two turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 7, 9, 'Moves only every two turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 8, 9, 'The Pok�mon can�t attack
on consecutive turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 9, 9, 'The Pok�mon can�t attack
on consecutive turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 10, 9, 'Pok�mon can�t attack
on consecutive turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 11, 5, 'Le Pok�mon ne frappe
qu�un tour sur deux.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 11, 9, 'Pok�mon can�t attack
on consecutive turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 14, 9, 'Pok�mon can�t attack
on consecutive turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 1, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 3, '????
??? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 5, 'Le Pok�mon n�agit qu�un
tour sur deux.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 6, 'Greift nur alle zwei Runden an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 7, 'El Pok�mon no atacar� en turnos
consecutivos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 8, 'Il Pok�mon attacca un turno s�
e uno no.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 9, 'The Pok�mon can�t attack
on consecutive turns.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (54, 15, 11, '???????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 5, 9, 'Trades accuracy for power.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 6, 9, 'Trades accuracy for power.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 7, 9, 'Trades accuracy for power.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 8, 9, 'Boosts the Attack stat,
but lowers accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 9, 9, 'Boosts the Attack stat,
but lowers accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 10, 9, 'Boosts the Attack stat,
but lowers accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 11, 5, 'Am�liore l�Attaque mais
diminue la Pr�cision.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 11, 9, 'Boosts the Attack stat,
but lowers accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 14, 9, 'Boosts the Attack stat,
but lowers accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 1, '??????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 3, '??? ???
???? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 5, 'Am�liore l�Attaque mais diminue
la Pr�cision.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 6, 'Erh�ht den Angriffs-Wert,
aber senkt die Genauigkeit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 7, 'Aumenta el Ataque, pero reduce
la Precisi�n.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 8, 'Aumenta l�Attacco, ma riduce
la precisione.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 9, 'Boosts the Attack stat,
but lowers accuracy.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (55, 15, 11, '????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 5, 9, 'Infatuates on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 6, 9, 'Infatuates on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 7, 9, 'Infatuates on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 8, 9, 'Contact with the Pok�mon
may cause infatuation.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 9, 9, 'Contact with the Pok�mon
may cause infatuation.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 10, 9, 'Contact with the Pok�mon
may cause infatuation.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 11, 5, 'S�duit parfois l�ennemi
au contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 11, 9, 'Contact with the Pok�mon
may cause infatuation.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 14, 9, 'Contact with the Pok�mon
may cause infatuation.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 1, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 3, '??? ???? ???
? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 5, 'S�duit parfois l�attaquant au
contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 6, 'Kann bei Kontakt bet�rend
wirken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 7, 'Tocar al Pok�mon puede causar
enamoramiento.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 8, 'Al contatto subito, chi sferra
l�attacco pu� infatuarsi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 9, 'Contact with the Pok�mon
may cause infatuation.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (56, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 5, 9, 'Powers up with MINUS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 6, 9, 'Powers up with MINUS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 7, 9, 'Powers up with MINUS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 8, 9, 'Boosts Sp. Atk if another
Pok�mon has Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 9, 9, 'Boosts Sp. Atk if another
Pok�mon has Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 10, 9, 'Ups Sp. Atk if another
Pok�mon has Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 11, 5, 'Augmente l�Atq. Sp�. si un
Pok�mon a Minus ou Plus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 11, 9, 'Ups Sp. Atk if another
Pok�mon has Plus or Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 14, 9, 'Ups Sp. Atk if another
Pok�mon has Plus or Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 3, '???? ????? ???
????? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 5, 'Augmente l�Attaque Sp�ciale si
un Pok�mon a Minus ou Plus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 6, 'Erh�ht den Spezial-Angriff, wenn
Plus oder Minus vertreten sind.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 7, 'Potencia el At. Esp. si alg�n otro
Pok�mon tiene M�s o Menos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 8, 'Aumenta l�Attacco Speciale se ci
sono Pok�mon con Meno o Pi�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 9, 'Boosts the Sp. Atk stat if another
Pok�mon has Plus or Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (57, 15, 11, '????????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 5, 9, 'Powers up with PLUS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 6, 9, 'Powers up with PLUS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 7, 9, 'Powers up with PLUS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 8, 9, 'Boosts Sp. Atk if another
Pok�mon has Plus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 9, 9, 'Boosts Sp. Atk if another
Pok�mon has Plus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 10, 9, 'Ups Sp. Atk if another
Pok�mon has Plus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 11, 5, 'Augmente l�Atq. Sp�. si un
Pok�mon a Minus ou Plus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 11, 9, 'Ups Sp. Atk if another
Pok�mon has Plus or Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 14, 9, 'Ups Sp. Atk if another
Pok�mon has Plus or Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 3, '???? ????? ???
????? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 5, 'Augmente l�Attaque Sp�ciale si
un Pok�mon a Minus ou Plus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 6, 'Erh�ht den Spezial-Angriff, wenn
Plus oder Minus vertreten sind.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 7, 'Potencia el At. Esp. si alg�n otro
Pok�mon tiene M�s o Menos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 8, 'Aumenta l�Attacco Speciale se ci
sono Pok�mon con Meno o Pi�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 9, 'Boosts the Sp. Atk stat if another
Pok�mon has Plus or Minus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (58, 15, 11, '????????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 5, 9, 'Changes with the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 6, 9, 'Changes with the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 7, 9, 'Changes with the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 8, 9, 'CASTFORM transforms with
the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 9, 9, 'CASTFORM transforms with
the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 10, 9, 'CASTFORM transforms with
the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 11, 5, 'Morph�o change de forme
selon le climat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 11, 9, 'Castform transforms with
the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 14, 9, 'Castform transforms with
the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 1, '??????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 3, '??? ??
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 5, 'Morph�o change de forme selon
le climat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 6, 'Formeo ver�ndert seine Form
abh�ngig vom Wetter.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 7, 'Se transforma seg�n el tiempo
atmosf�rico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 8, 'La forma di Castform cambia in
base alle condizioni atmosferiche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 9, 'Castform transforms with
the weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (59, 15, 11, '?????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 5, 9, 'Prevents item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 6, 9, 'Prevents item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 7, 9, 'Prevents item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 8, 9, 'Protects the Pok�mon
from item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 9, 9, 'Protects the Pok�mon
from item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 10, 9, 'Protects the Pok�mon
from item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 11, 5, 'Fait s�agripper � l�objet
pour en emp�cher le vol.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 11, 9, 'Protects the Pok�mon
from item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 14, 9, 'Protects the Pok�mon
from item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 1, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 3, '?????
??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 5, 'Fait s�agripper � l�objet pour
en emp�cher le vol.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 6, 'Verhindert durch Klebe-Effekt
Item-Diebst�hle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 7, 'Protege al Pok�mon del robo
de objetos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 8, 'Protegge il Pok�mon dal furto
di strumenti.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 9, 'Protects the Pok�mon
from item theft.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (60, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 5, 9, 'Heals the body by shedding.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 6, 9, 'Heals the body by shedding.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 7, 9, 'Heals the body by shedding.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 8, 9, 'The Pok�mon may heal its
own status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 9, 9, 'The Pok�mon may heal its
own status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 10, 9, 'The Pok�mon may heal its
own status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 11, 5, 'Le Pok�mon soigne parfois
ses probl�mes de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 11, 9, 'The Pok�mon may heal its
own status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 14, 9, 'The Pok�mon may heal its
own status problems.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 3, '?? ???
??? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 5, 'Le Pok�mon soigne parfois ses
probl�mes de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 6, 'Das Pok�mon heilt eventuell
seine Statusprobleme.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 7, 'Cura los problemas de estado
mudando la piel.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 8, 'Pu� curare i problemi di stato
del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 9, 'The Pok�mon may heal its
own status conditions.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (61, 15, 11, '?????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 5, 9, 'Ups ATTACK if suffering.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 6, 9, 'Ups ATTACK if suffering.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 7, 9, 'Ups ATTACK if suffering.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 8, 9, 'Boosts Attack if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 9, 9, 'Boosts Attack if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 10, 9, 'Boosts Attack if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 11, 5, 'Augmente l�Attaque s�il y
a un probl�me de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 11, 9, 'Boosts Attack if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 14, 9, 'Boosts Attack if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 3, '?? ??? ??
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 5, 'Augmente l�Attaque s�il y a un
probl�me de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 6, 'Steigert bei Statusproblemen
den Angriffs-Wert.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 7, 'Sube el Ataque si sufre un
problema de estado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 8, 'Aumenta l�Attacco in caso di
problemi di stato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 9, 'Boosts the Attack stat if the
Pok�mon has a status condition.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (62, 15, 11, '?????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 5, 9, 'Ups DEFENSE if suffering.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 6, 9, 'Ups DEFENSE if suffering.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 7, 9, 'Ups DEFENSE if suffering.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 8, 9, 'Boosts Defense if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 9, 9, 'Boosts Defense if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 10, 9, 'Ups Defense if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 11, 5, 'Augmente la D�fense s�il y
a un probl�me de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 11, 9, 'Ups Defense if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 14, 9, 'Ups Defense if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 3, '?? ??? ??
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 5, 'Augmente la D�fense s�il y a
un probl�me de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 6, 'Steigert bei Statusproblemen
die Verteidigung.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 7, 'Sube la Defensa si sufre un
problema de estado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 8, 'Aumenta la Difesa in caso di
problemi di stato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 9, 'Boosts the Defense stat if the
Pok�mon has a status condition.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (63, 15, 11, '?????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 5, 9, 'Draining causes injury.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 6, 9, 'Draining causes injury.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 7, 9, 'Draining causes injury.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 8, 9, 'Inflicts damage on foes
using any draining move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 9, 9, 'Inflicts damage on foes
using any draining move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 10, 9, 'Inflicts damage on foes
using any draining move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 11, 5, 'Blesse l�ennemi qui draine
l��nergie du Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 11, 9, 'Damages attackers
using any draining move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 14, 9, 'Damages attackers
using any draining move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 1, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 3, '??? ???
HP? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 5, 'Blesse l�attaquant qui draine
l��nergie du Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 6, 'Schadet Angreifern,
die Saug-Attacken einsetzen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 7, 'Hiere a los Pok�mon que drenan
PS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 8, 'Danneggia i Pok�mon che usano
mosse ruba-PS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 9, 'Damages attackers
using any draining move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (64, 15, 11, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 5, 9, 'Ups GRASS moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 6, 9, 'Ups GRASS moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 7, 9, 'Ups GRASS moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 8, 9, 'Powers up Grass-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 9, 9, 'Powers up Grass-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 10, 9, 'Powers up Grass-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 11, 5, 'Booste les capacit�s
Plante en cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 11, 9, 'Powers up Grass-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 14, 9, 'Powers up Grass-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 3, '??? ? ????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 5, 'Booste les capacit�s Plante en
cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 6, 'Erh�ht in Notf�llen die St�rke
von Pflanzen-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 7, 'Potencia los ataques de tipo
Planta en un apuro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 8, 'Quando si � in difficolt�, potenzia
le mosse di tipo Erba.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 9, 'Powers up Grass-type moves
when the Pok�mon is in trouble.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (65, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 5, 9, 'Ups FIRE moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 6, 9, 'Ups FIRE moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 7, 9, 'Ups FIRE moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 8, 9, 'Powers up Fire-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 9, 9, 'Powers up Fire-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 10, 9, 'Powers up Fire-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 11, 5, 'Booste les capacit�s
Feu en cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 11, 9, 'Powers up Fire-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 14, 9, 'Powers up Fire-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 3, '??? ? ?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 5, 'Booste les capacit�s Feu en
cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 6, 'Erh�ht in Notf�llen die St�rke
von Feuer-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 7, 'Potencia los ataques de tipo
Fuego en un apuro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 8, 'Quando si � in difficolt�, potenzia
le mosse di tipo Fuoco.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 9, 'Powers up Fire-type moves when
the Pok�mon is in trouble.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (66, 15, 11, '???????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 5, 9, 'Ups WATER moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 6, 9, 'Ups WATER moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 7, 9, 'Ups WATER moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 8, 9, 'Powers up Water-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 9, 9, 'Powers up Water-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 10, 9, 'Powers up Water-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 11, 5, 'Booste les capacit�s
Eau en cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 11, 9, 'Powers up Water-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 14, 9, 'Powers up Water-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 3, '??? ? ????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 5, 'Booste les capacit�s Eau en
cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 6, 'Erh�ht in Notf�llen die St�rke
von Wasser-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 7, 'Potencia los ataques de tipo
Agua en un apuro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 8, 'Quando si � in difficolt�, potenzia
le mosse di tipo Acqua.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 9, 'Powers up Water-type moves
when the Pok�mon is in trouble.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (67, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 5, 9, 'Ups BUG moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 6, 9, 'Ups BUG moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 7, 9, 'Ups BUG moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 8, 9, 'Powers up Bug-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 9, 9, 'Powers up Bug-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 10, 9, 'Powers up Bug-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 11, 5, 'Booste les capacit�s
Insecte en cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 11, 9, 'Powers up Bug-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 14, 9, 'Powers up Bug-type
moves in a pinch.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 3, '??? ? ?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 5, 'Booste les capacit�s Insecte en
cas de besoin.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 6, 'Erh�ht in Notf�llen die St�rke
von K�fer-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 7, 'Potencia los ataques de tipo
Bicho en un apuro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 8, 'Quando si � in difficolt�, potenzia
le mosse di tipo Coleottero.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 9, 'Powers up Bug-type moves when
the Pok�mon is in trouble.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (68, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 5, 9, 'Prevents recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 6, 9, 'Prevents recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 7, 9, 'Prevents recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 8, 9, 'Protects the Pok�mon
from recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 9, 9, 'Protects the Pok�mon
from recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 10, 9, 'Protects the Pok�mon
from recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 11, 5, 'Prot�ge le Pok�mon des
d�g�ts de contrecoups.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 11, 9, 'Protects the Pok�mon
from recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 14, 9, 'Protects the Pok�mon
from recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 1, '??????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 3, '????
??? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 5, 'Prot�ge le Pok�mon des d�g�ts
de contrecoups.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 6, 'Verhindert Schaden, der durch
R�cksto� entsteht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 7, 'Impide que el Pok�mon se da�e
con sus movimientos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 8, 'Protegge il Pok�mon dai
contraccolpi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 9, 'Protects the Pok�mon
from recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (69, 15, 11, '??????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 5, 9, 'Summons sunlight in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 6, 9, 'Summons sunlight in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 7, 9, 'Summons sunlight in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 8, 9, 'The Pok�mon makes it
sunny if it is in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 9, 9, 'The Pok�mon makes it
sunny if it is in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 10, 9, 'The Pok�mon makes it
sunny if it is in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 11, 5, 'Intensifie les rayons du
soleil pendant le combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 11, 9, 'Turns the sunlight harsh
if it is in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 14, 9, 'Turns the sunlight harsh
if it is in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 1, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 3, '??? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 5, 'Le soleil se met � briller quand
ce Pok�mon rejoint le combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 6, 'Erzeugt im Kampf glei�endes
Sonnenlicht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 7, 'El sol sale si el Pok�mon entra en
combate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 8, 'Il sole brilla intensamente quando
il Pok�mon entra in campo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 9, 'Turns the sunlight harsh when
the Pok�mon enters a battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (70, 15, 11, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 5, 9, 'Prevents fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 6, 9, 'Prevents fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 7, 9, 'Prevents fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 8, 9, 'Prevents the foe from
fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 9, 9, 'Prevents the foe from
fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 10, 9, 'Prevents the foe from
fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 11, 5, 'Emp�che l�ennemi de
s�enfuir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 11, 9, 'Prevents the foe from
fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 14, 9, 'Prevents the foe from
fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 1, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 3, '???? ???
??? ? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 5, 'Emp�che l�ennemi de s�enfuir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 6, 'Hindert den Gegner im Kampf
an der Flucht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 7, 'Evita que el rival huya.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 8, 'Impedisce la fuga al nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 9, 'Prevents opposing Pok�mon
from fleeing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (71, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 5, 9, 'Prevents sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 6, 9, 'Prevents sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 7, 9, 'Prevents sleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 8, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 9, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 10, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 11, 5, 'Emp�che le Pok�mon de
s�endormir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 11, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 14, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 1, '??????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 3, '?? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 5, 'Emp�che le Pok�mon de
s�endormir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 6, 'Verhindert Einschlafen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 7, 'Evita el quedarse dormido.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 8, 'Impedisce al Pok�mon
di addormentarsi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 9, 'Prevents the Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (72, 15, 11, '??????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 5, 9, 'Prevents ability reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 6, 9, 'Prevents ability reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 7, 9, 'Prevents ability reduction.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 8, 9, 'Prevents the Pok�mon�s
stats from being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 9, 9, 'Prevents the Pok�mon�s
stats from being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 10, 9, 'Prevents its stats from
being lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 11, 5, 'Emp�che les stats
du Pok�mon de baisser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 11, 9, 'Prevents other Pok�mon
from lowering its stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 14, 9, 'Prevents other Pok�mon
from lowering its stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 1, '???????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 3, '??? ???
???? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 5, 'Emp�che les stats du Pok�mon
de baisser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 6, 'Hindert Angreifer daran,
Statuswerte zu senken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 7, 'Evita que bajen las
caracter�sticas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 8, 'Le statistiche del Pok�mon
non possono essere ridotte.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 9, 'Prevents other Pok�mon
from lowering its stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (73, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 5, 9, 'Raises ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 6, 9, 'Raises ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 7, 9, 'Raises ATTACK.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 8, 9, 'Boosts the power of
physical attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 9, 9, 'Boosts the power of
physical attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 10, 9, 'Boosts the power of
physical attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 11, 5, 'Augmente l�Attaque du
Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 11, 9, 'Raises the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 14, 9, 'Raises the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 1, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 3, '?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 5, 'Augmente l�Attaque du Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 6, 'St�rkt physische Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 7, 'Aumenta el Ataque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 8, 'Migliora la statistica Attacco
del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 9, 'Boosts the Pok�mon�s
Attack stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (74, 15, 11, '?????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 5, 9, 'Blocks critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 6, 9, 'Blocks critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 7, 9, 'Blocks critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 8, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 9, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 10, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 11, 5, 'Le Pok�mon est prot�g�
des coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 11, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 14, 9, 'The Pok�mon is protected
against critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 1, '??????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 3, '??? ???
??? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 5, 'Le Pok�mon est prot�g� des
coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 6, 'Wehrt gegnerische Volltreffer ab.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 7, 'Bloquea los golpes cr�ticos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 8, 'Evita che il Pok�mon subisca
brutti colpi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 9, 'Protects the Pok�mon
from critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (75, 15, 11, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 5, 9, 'Negates weather effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 6, 9, 'Negates weather effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 7, 9, 'Negates weather effects.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 8, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 9, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 10, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 11, 5, 'Annule les effets du
climat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 11, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 14, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 1, '???????????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 3, '??? ???
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 5, 'Annule les effets du climat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 6, 'Hebt Wetter-Effekte auf.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 7, 'Anula los efectos del tiempo
atmosf�rico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 8, 'Neutralizza gli effetti delle
condizioni atmosferiche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 9, 'Eliminates the effects of
weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (76, 15, 11, '???????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 8, 9, 'Raises evasion if the
Pok�mon is confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 9, 9, 'Raises evasion if the
Pok�mon is confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 10, 9, 'Raises evasion if the
Pok�mon is confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 11, 5, 'Augmente l�Esquive si le
Pok�mon est confus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 11, 9, 'Raises evasion if the
Pok�mon is confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 14, 9, 'Raises evasion if the
Pok�mon is confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 1, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 3, '??? ?????
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 5, 'Augmente l�Esquive si le
Pok�mon est confus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 6, 'Erh�ht den Fluchtwert,
wenn das Pok�mon verwirrt ist.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 7, 'Sube la Evasi�n si el Pok�mon
est� confuso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 8, 'Aumenta l�elusione se
il Pok�mon � confuso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 9, 'Raises evasion if the
Pok�mon is confused.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (77, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 8, 9, 'Raises Speed if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 9, 9, 'Raises Speed if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 10, 9, 'Raises Speed if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 11, 5, 'Augmente la Vit. si touch�
par une cap. �lectrik.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 11, 9, 'Raises Speed if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 14, 9, 'Raises Speed if hit by an
Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 1, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 3, '??? ???
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 5, 'Augmente la Vitesse si touch�
par une capacit� �lectrik.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 6, 'Erh�ht nach einem Treffer durch
eine Elektro-Attacke die Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 7, 'Sube la Velocidad si le alcanza
un ataque el�ctrico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 8, 'Le mosse di tipo Elettro subite
fanno aumentare la Velocit�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 9, 'Boosts the Speed stat when it�s
hit by an Electric-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (78, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 8, 9, 'Raises Attack if the foe
is of the same gender.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 9, 9, 'Raises Attack if the foe
is of the same gender.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 10, 9, 'Raises Attack if the foe
is of the same gender.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 11, 5, 'Devient plus fort si
l�ennemi est du m�me sexe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 11, 9, 'Deals more damage to a
Pok�mon of same gender.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 14, 9, 'Deals more damage to a
Pok�mon of same gender.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 1, '??????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 3, '??? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 5, 'Devient plus fort si l�ennemi est
du m�me sexe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 6, 'Erh�ht den Schaden, wenn das
Ziel dasselbe Geschlecht hat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 7, 'Si el objetivo es del mismo sexo,
inflige m�s da�o.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 8, 'Rende pi� forti contro nemici
dello stesso sesso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 9, 'Deals more damage to Pok�mon
of the same gender.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (79, 15, 11, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 8, 9, 'Raises Speed each time
the Pok�mon flinches.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 9, 9, 'Raises Speed each time
the Pok�mon flinches.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 10, 9, 'Raises Speed each time
the Pok�mon flinches.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 11, 5, 'Augmente la Vitesse quand
le Pok�mon a peur.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 11, 9, 'Raises Speed each time
the Pok�mon flinches.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 14, 9, 'Raises Speed each time
the Pok�mon flinches.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 1, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 3, '??? ???
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 5, 'Augmente la Vitesse quand le
Pok�mon a peur.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 6, 'Erh�ht die Initiative, sobald
das Pok�mon zur�ckschreckt.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 7, 'Cada vez que retrocede sube su
Velocidad.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 8, 'Aumenta la Velocit� se
il Pok�mon tentenna.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 9, 'Boosts the Speed stat each time
the Pok�mon flinches.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (80, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 8, 9, 'Raises evasion in a
hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 9, 9, 'Raises evasion in a
hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 10, 9, 'Raises evasion in a
hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 11, 5, 'Augmente l�Esquive durant
les temp�tes de gr�le.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 11, 9, 'Raises evasion in a
hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 14, 9, 'Raises evasion in a
hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 3, '??? ????? ?
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 5, 'Augmente l�Esquive durant les
temp�tes de gr�le.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 6, 'Erh�ht bei Hagel den Fluchtwert.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 7, 'Sube la Evasi�n durante una
tormenta de granizo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 8, 'Aumenta l�elusione quando
grandina.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 9, 'Boosts evasion in a
hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (81, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 8, 9, 'Encourages the early use
of a held Berry.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 9, 9, 'Encourages the early use
of a held Berry.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 10, 9, 'Encourages the early use
of a held Berry.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 11, 5, 'Encourage l�utilisation
d�une Baie tenue.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 11, 9, 'Encourages the early use
of a held Berry.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 14, 9, 'Encourages the early use
of a held Berry.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 1, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 3, '????? ?? ???
?? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 5, 'Permet d�utiliser plus rapidement
une Baie tenue.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 6, 'Ermutigt zum fr�hzeitigen Einsatz
von Beeren.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 7, 'Fomenta el uso r�pido de la baya
que porte.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 8, 'Favorisce l�uso anticipato di
una bacca tenuta dal Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 9, 'Makes the Pok�mon use a held
Berry earlier than usual.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (82, 15, 11, '??????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 8, 9, 'Raises Attack upon taking
a critical hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 9, 9, 'Raises Attack upon taking
a critical hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 10, 9, 'Raises Attack upon
taking a critical hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 11, 5, 'Monte l�Attaque au max
apr�s un coup critique.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 11, 9, 'Maxes Attack after
taking a critical hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 14, 9, 'Maxes Attack after
taking a critical hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 3, '??? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 5, 'Monte l�Attaque au max apr�s
avoir re�u un coup critique.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 6, 'Maximiert nach Einstecken eines
Volltreffers den Angriffs-Wert.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 7, 'Sube el Ataque al m�ximo tras un
golpe cr�tico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 8, 'Massimizza l�Attacco se si
subisce un brutto colpo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 9, 'Maxes the Attack stat after
the Pok�mon takes a critical hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (83, 15, 11, '????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 8, 9, 'Raises Speed if a held
item is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 9, 9, 'Raises Speed if a held
item is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 10, 9, 'Raises Speed if a held
item is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 11, 5, 'Augmente la Vit. si l�objet
tenu est utilis� ou perdu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 11, 9, 'Raises Speed if a held
item is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 14, 9, 'Raises Speed if a held
item is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 3, '??? ????
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 5, 'Augmente la Vitesse si l�objet
tenu est utilis� ou perdu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 6, 'Erh�ht Initiative, wenn ein Item
verwendet oder verloren wird.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 7, 'Sube la Velocidad si usa o pierde
el objeto que lleve.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 8, 'Aumenta la Velocit� dopo aver
usato o perso uno strumento.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 9, 'Boosts the Speed stat if its
held item is used or lost.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (84, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 8, 9, 'Weakens the power of
Fire-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 9, 9, 'Weakens the power of
Fire-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 10, 9, 'Weakens the power of
Fire-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 11, 5, 'R�duit la puissance des
capacit�s de type Feu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 11, 9, 'Weakens the power of
Fire-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 14, 9, 'Weakens the power of
Fire-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 1, '???????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 3, '?? ???
??? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 5, 'R�duit la puissance des
capacit�s de type Feu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 6, 'Senkt die St�rke von
Feuer-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 7, 'Aten�a los movimientos de tipo
Fuego.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 8, 'Indebolisce l�effetto di mosse
di tipo Fuoco.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 9, 'Weakens the power of
Fire-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (85, 15, 11, '?????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 8, 9, 'The Pok�mon is prone to
wild stat changes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 9, 9, 'The Pok�mon is prone to
wild stat changes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 10, 9, 'The Pok�mon is prone to
wild stat changes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 11, 5, 'Le Pok�mon est sujet �
des variations de stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 11, 9, 'The Pok�mon is prone to
wild stat changes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 14, 9, 'The Pok�mon is prone to
wild stat changes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 1, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 3, '?? ???
?? ??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 5, 'Le Pok�mon est sujet � des
variations de stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 6, 'Das Pok�mon ist anf�llig
f�r Statusver�nderungen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 7, 'Aumenta los cambios en las
caracter�sticas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 8, 'Le statistiche possono cambiare
senza preavviso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 9, 'The Pok�mon is prone to
wild stat changes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (86, 15, 11, '??????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 8, 9, 'Reduces HP if it is hot.
Water restores HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 9, 9, 'Reduces HP if it is hot.
Water restores HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 10, 9, 'Reduces HP if it is hot.
Water restores HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 11, 5, 'Perd des PV � la chaleur.
L�eau les restaure.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 11, 9, 'Reduces HP if it is hot.
Water restores HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 14, 9, 'Reduces HP if it is hot.
Water restores HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 3, '??? HP? ????.
?? HP? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 5, 'Perd des PV � la chaleur.
L�eau les restaure.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 6, 'Bei hei�em Wetter verliert das
Pok�mon KP. Wasser heilt KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 7, 'Pierde PS si hace calor. Los
recupera con agua.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 8, 'Riduce i PS se fa caldo.
In presenza di acqua, rid� PS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 9, 'Reduces HP if it�s hot.
Water restores HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (87, 15, 11, '????????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 8, 9, 'Adjusts power according
to the foe�s ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 9, 9, 'Adjusts power according
to the foe�s ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 10, 9, 'Adjusts power according
to the foe�s ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 11, 5, 'Ajuste la puissance selon
l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 11, 9, 'Adjusts power according
to a foe�s defenses.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 14, 9, 'Adjusts power according
to a foe�s defenses.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 1, '???????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 3, '??? ??? ??
???? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 5, 'Ajuste la puissance selon
l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 6, 'Passt Kraft entsprechend den
gegnerischen Statuswerten an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 7, 'Adapta su fuerza para cada rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 8, 'Regola la potenza in base
al nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 9, 'Adjusts power based on an
opposing Pok�mon�s stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (88, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 8, 9, 'Boosts the power of
punching moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 9, 9, 'Boosts the power of
punching moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 10, 9, 'Boosts the power of
punching moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 11, 5, 'Augmente la puissance des
capacit�s coups de poing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 11, 9, 'Boosts the power of
punching moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 14, 9, 'Boosts the power of
punching moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 3, '??? ???? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 5, 'Augmente la puissance des
capacit�s coups de poing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 6, 'Steigert die Effektivit�t von
Box- und Hieb-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 7, 'Aumenta la fuerza de los
pu�etazos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 8, 'Potenzia le mosse che
utilizzano pugni.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 9, 'Powers up punching moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (89, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 8, 9, 'Restores HP if the
Pok�mon is poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 9, 9, 'Restores HP if the
Pok�mon is poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 10, 9, 'Restores HP if the
Pok�mon is poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 11, 5, 'Restaure des PV si le
Pok�mon est empoisonn�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 11, 9, 'Restores HP if the
Pok�mon is poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 14, 9, 'Restores HP if the
Pok�mon is poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 1, '????????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 3, '? ??? ??
HP? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 5, 'Restaure des PV si le Pok�mon
est empoisonn�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 6, 'Heilt bei Vergiftungen KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 7, 'Recupera PS si el Pok�mon ha
sido envenenado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 8, 'Rid� PS se il Pok�mon
� avvelenato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 9, 'Restores HP if the
Pok�mon is poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (90, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 8, 9, 'Powers up moves of the
same type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 9, 9, 'Powers up moves of the
same type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 10, 9, 'Powers up moves of the
same type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 11, 5, 'Augmente la puissance des
capacit�s de m�me type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 11, 9, 'Powers up moves of the
same type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 14, 9, 'Powers up moves of the
same type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 3, '??? ?? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 5, 'Augmente la puissance des
capacit�s de m�me type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 6, 'Erh�ht die St�rke von Attacken
desselben Typs.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 7, 'Potencia los movimientos del
mismo tipo del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 8, 'Potenzia le mosse dello stesso
tipo del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 9, 'Powers up moves of the
same type as the Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (91, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 8, 9, 'Increases the frequency
of multi-strike moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 9, 9, 'Increases the frequency
of multi-strike moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 10, 9, 'Increases the frequency
of multi-strike moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 11, 5, 'Augmente la fr�quence des
attaques multiples.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 11, 9, 'Increases the frequency
of multi-strike moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 14, 9, 'Increases the frequency
of multi-strike moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 1, '????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 3, '?? ???
?? ? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 5, 'Augmente la fr�quence des
attaques multiples.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 6, 'Erm�glicht l�ngere Trefferserien
mit Serien-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 7, 'Aumenta la frecuencia de
los movimientos m�ltiples.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 8, 'Aumenta la frequenza di mosse
multicolpo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 9, 'Increases the number of times
multi-strike moves hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (92, 15, 11, '????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 8, 9, 'Heals status problems if
it is raining.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 9, 9, 'Heals status problems if
it is raining.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 10, 9, 'Heals status problems if
it is raining.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 11, 5, 'Soigne les probl�mes de
statut s�il pleut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 11, 9, 'Heals status problems if
it is raining.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 14, 9, 'Heals status problems if
it is raining.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 3, '?? ??
?? ??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 5, 'Soigne les probl�mes de statut
s�il pleut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 6, 'Heilt bei Regen Statusprobleme.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 7, 'Cura los problemas de estado si
est� lloviendo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 8, 'Cura i problemi di stato se piove.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 9, 'Heals status conditions if
it�s raining.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (93, 15, 11, '?????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 8, 9, 'Boosts Sp. Atk, but
lowers HP in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 9, 9, 'Boosts Sp. Atk, but
lowers HP in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 10, 9, 'Boosts Sp. Atk, but
lowers HP in sunshine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 11, 5, 'Augmente l�Atq. Sp�. mais
baisse les PV au soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 11, 9, 'In sunshine, Sp. Atk is
boosted but HP decreases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 14, 9, 'In sunshine, Sp. Atk is
boosted but HP decreases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 3, '??? HP? ???
????? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 5, 'Augmente l�Attaque Sp�ciale
mais baisse les PV au soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 6, 'F�hrt bei Sonne zu KP-Verlusten,
erh�ht aber den Spezial-Angriff.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 7, 'Si hace sol, baja los PS, pero
potencia el At. Esp.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 8, 'Se c�� il sole aumenta l�Attacco
Speciale, ma riduce i PS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 9, 'Boosts the Sp. Atk stat in sunny
weather, but HP decreases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (94, 15, 11, '????????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 8, 9, 'Boosts Speed if there is a
status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 9, 9, 'Boosts Speed if there is a
status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 10, 9, 'Boosts Speed if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 11, 5, 'Augmente la Vitesse en cas
de probl�me de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 11, 9, 'Boosts Speed if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 14, 9, 'Boosts Speed if there is
a status problem.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 3, '?? ??? ??
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 5, 'Augmente la Vitesse en cas de
probl�me de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 6, 'Erh�ht bei Statusproblemen
die Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 7, 'Potencia la Velocidad si hay
problemas de estado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 8, 'Aumenta la Velocit� se c��
un problema di stato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 9, 'Boosts the Speed stat if the
Pok�mon has a status condition.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (95, 15, 11, '?????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 8, 9, 'All the Pok�mon�s moves
become the Normal type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 9, 9, 'All the Pok�mon�s moves
become the Normal type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 10, 9, 'All the Pok�mon�s moves
become the Normal type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 11, 5, 'Toutes les capacit�s sont
de type Normal.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 11, 9, 'All the Pok�mon�s moves
become the Normal type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 14, 9, 'All the Pok�mon�s moves
become the Normal type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 1, '??????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 3, '? ??? ??
????? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 5, 'Toutes les capacit�s sont de
type Normal.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 6, 'Alle Attacken des Pok�mon
werden zu Normal-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 7, 'Todos los movimientos se vuelven
de tipo Normal.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 8, 'Le mosse del Pok�mon
diventano di tipo Normale.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 9, 'All the Pok�mon�s moves
become Normal type.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (96, 15, 11, '?????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 8, 9, 'Powers up moves if they
become critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 9, 9, 'Powers up moves if they
become critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 10, 9, 'Powers up moves if they
become critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 11, 5, 'Augmente la puissance
des coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 11, 9, 'Powers up moves if they
become critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 14, 9, 'Powers up moves if they
become critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 3, '??? ??? ?
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 5, 'Augmente la puissance des
coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 6, 'Steigert den Schaden
von Volltreffern.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 7, 'Potencia los movimientos si se
vuelven cr�ticos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 8, 'Aumenta i danni inflitti
dai brutti colpi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 9, 'Powers up moves if they
become critical hits.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (97, 15, 11, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 8, 9, 'The Pok�mon only takes
damage from attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 9, 9, 'The Pok�mon only takes
damage from attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 10, 9, 'The Pok�mon only takes
damage from attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 11, 5, 'Seule une attaque directe
peut blesser le Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 11, 9, 'The Pok�mon only takes
damage from attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 14, 9, 'The Pok�mon only takes
damage from attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 1, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 3, '?? ????
???? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 5, 'Seule une attaque directe peut
blesser le Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 6, 'Das Pok�mon nimmt nur durch
Offensiv-Attacken Schaden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 7, 'Solo da�an al Pok�mon los
ataques directos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 8, 'Il Pok�mon subisce danni solo
da attacchi diretti.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 9, 'The Pok�mon only takes
damage from attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (98, 15, 11, '???????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 8, 9, 'Ensures the Pok�mon and
its foe�s attacks land.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 9, 9, 'Ensures the Pok�mon and
its foe�s attacks land.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 10, 9, 'Ensures both Pok�mon�s
and foe�s attacks land.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 11, 5, 'Capacit�s du Pok�mon et
de l�ennemi r�ussissent.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 11, 9, 'Ensures attacks by or
against the Pok�mon land.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 14, 9, 'Ensures attacks by or
against the Pok�mon land.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 1, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 3, '??? ???
??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 5, 'Les capacit�s du Pok�mon et de
l�ennemi frappent � coup s�r.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 6, 'Alle Attacken des oder auf
das Pok�mon gelingen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 7, 'El movimiento del Pok�mon y el
del rival acertar�n.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 8, 'Le mosse del Pok�mon e del
nemico vanno sempre a segno.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 9, 'Ensures attacks by or
against the Pok�mon land.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (99, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 8, 9, 'The Pok�mon moves after
even slower foes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 9, 9, 'The Pok�mon moves after
even slower foes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 10, 9, 'The Pok�mon moves after
even slower foes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 11, 5, 'Attaque toujours apr�s 
l�ennemi, m�me plus lent.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 11, 9, 'The Pok�mon moves after
all other Pok�mon do.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 14, 9, 'The Pok�mon moves after
all other Pok�mon do.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 1, '????????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 3, '???? ????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 5, 'Agit toujours apr�s les autres
Pok�mon, m�me plus lents.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 6, 'Handelt auch mit Initiative-Vorteil
stets nach dem Gegner.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 7, 'El Pok�mon se mueve tras todos
los dem�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 8, 'I nemici attaccano sempre per
primi, anche se sono pi� lenti.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 9, 'The Pok�mon moves after
all other Pok�mon do.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (100, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 8, 9, 'Powers up the Pok�mon�s
weaker moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 9, 9, 'Powers up the Pok�mon�s
weaker moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 10, 9, 'Powers up the Pok�mon�s
weaker moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 11, 5, 'Augmente la puissance des
capacit�s les plus faibles.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 11, 9, 'Powers up the Pok�mon�s
weaker moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 14, 9, 'Powers up the Pok�mon�s
weaker moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 1, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 3, '?? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 5, 'Augmente la puissance des
capacit�s les plus faibles.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 6, 'Steigert die Effektivit�t von
schw�cheren Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 7, 'Potencia los movimientos m�s
d�biles del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 8, 'Potenzia le mosse pi� deboli
del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 9, 'Powers up the Pok�mon�s
weaker moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (101, 15, 11, '?????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 8, 9, 'Prevents status problems
in sunny weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 9, 9, 'Prevents status problems
in sunny weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 10, 9, 'Prevents problems with
status in sunny weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 11, 5, 'Emp�che les probl�mes
de statut au soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 11, 9, 'Prevents problems with
status in sunny weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 14, 9, 'Prevents problems with
status in sunny weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 3, '?? ??
?? ??? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 5, 'Emp�che les probl�mes de statut
au soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 6, 'Verhindert bei Sonnenschein
Statusprobleme.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 7, 'Evita los problemas de estado si
hace sol.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 8, 'Evita problemi di stato quando
c�� il sole.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 9, 'Prevents status conditions
in sunny weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (102, 15, 11, '?????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 8, 9, 'The Pok�mon can�t use
any held items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 9, 9, 'The Pok�mon can�t use
any held items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 10, 9, 'The Pok�mon can�t use
any held items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 11, 5, 'Le Pok�mon ne peut
utiliser aucun objet tenu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 11, 9, 'The Pok�mon can�t use
any held items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 14, 9, 'The Pok�mon can�t use
any held items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 1, '??????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 3, '??? ?? ???
? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 5, 'Le Pok�mon ne peut utiliser
aucun objet tenu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 6, 'Das Pok�mon kann keine
getragenen Items verwenden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 7, 'El Pok�mon no puede usar
objetos equipados.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 8, 'Il Pok�mon non pu� usare
lo strumento che ha.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 9, 'The Pok�mon can�t use
any held items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (103, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 8, 9, 'Moves can be used
regardless of abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 9, 9, 'Moves can be used
regardless of abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 10, 9, 'Moves can be used
regardless of abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 11, 5, 'Les cap. sp�. adverses ne
bloquent pas ses cap.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 11, 9, 'Moves can be used
regardless of Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 14, 9, 'Moves can be used
regardless of Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 3, '??? ???? ????
??? ? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 5, 'Les talents adverses ne bloquent
pas ses capacit�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 6, 'Attacken k�nnen ungeachtet der
F�higkeiten verwendet werden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 7, 'Usa movimientos sin que importen
las habilidades del objetivo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 8, 'Neutralizza le abilit� che
bloccano le mosse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 9, 'Moves can be used on the target
regardless of its Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (104, 15, 11, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 8, 9, 'Heightens the critical-hit
ratios of moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 9, 9, 'Heightens the critical-hit
ratios of moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 10, 9, 'Heightens the critical-
hit ratios of moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 11, 5, 'Augmente la fr�quence
des coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 11, 9, 'Heightens the critical-
hit ratios of moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 14, 9, 'Heightens the critical-
hit ratios of moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 1, '???????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 3, '??? ???
??? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 5, 'Augmente la fr�quence des
coups critiques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 6, 'Erh�ht die Wahrscheinlichkeit,
einen Volltreffer zu landen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 7, 'Aumenta la probabilidad de dar
golpes cr�ticos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 8, 'Aumenta la probabilit� di
infliggere brutti colpi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 9, 'Boosts the critical-hit
ratios of moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (105, 15, 11, '???????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 8, 9, 'Damages the foe landing
the finishing hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 9, 9, 'Damages the foe landing
the finishing hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 10, 9, 'Damages the foe landing
the finishing hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 11, 5, 'Blesse l�ennemi qui 
porte le coup de gr�ce.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 11, 9, 'Damages the attacker
landing the finishing hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 14, 9, 'Damages the attacker
landing the finishing hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 3, '??? ? ??
???? ???? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 5, 'Blesse l�attaquant qui porte
le coup de gr�ce.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 6, 'F�gt einem Angreifer, der das
Pok�mon besiegt, Schaden zu.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 7, 'Da�a al agresor que le ha dado el
golpe de gracia.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 8, 'Arreca danni al Pok�mon che
sferra il colpo finale.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 9, 'Damages the attacker
landing the finishing hit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (106, 15, 11, '????????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 8, 9, 'Senses the foe�s
dangerous moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 9, 9, 'Senses the foe�s
dangerous moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 10, 9, 'Senses the foe�s
dangerous moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 11, 5, 'Pr�voit les capacit�s
ennemies dangereuses.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 11, 9, 'Senses a foe�s
dangerous moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 14, 9, 'Senses a foe�s
dangerous moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 3, '??? ?? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 5, 'Pr�voit les capacit�s ennemies
dangereuses.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 6, 'Ahnt gef�hrliche Attacken
des Gegners voraus.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 7, 'Prev� los movimientos peligrosos
del rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 8, 'Rivela se il nemico ha mosse
pericolose.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 9, 'Senses an opposing Pok�mon�s
dangerous moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (107, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 8, 9, 'Determines what moves
the foe has.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 9, 9, 'Determines what moves
the foe has.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 10, 9, 'Determines what moves
the foe has.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 11, 5, 'D�couvre la capacit�
ennemie la plus puissante.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 11, 9, 'Determines what moves
a foe has.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 14, 9, 'Determines what moves
a foe has.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 1, '???????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 3, '??? ?? ???
???? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 5, 'D�couvre la capacit� ennemie la
plus puissante.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 6, 'Gibt Auskunft �ber das Attacken-
Repertoire des Gegners.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 7, 'Determina el movimiento m�s
potente del rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 8, 'Scopre la mossa pi� potente
del nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 9, 'Determines what moves
an opposing Pok�mon has.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (108, 15, 11, '?????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 8, 9, 'Ignores any change in
ability by the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 9, 9, 'Ignores any change in
ability by the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 10, 9, 'Ignores any change in
ability by the foe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 11, 5, 'Ignore les changements de
stats de l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 11, 9, 'Ignores any stat changes
in the Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 14, 9, 'Ignores any stat changes
in the Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 3, '??? ??
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 5, 'Ignore les changements de stats
de l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 6, 'Ignoriert Statusver�nderungen
des Zieles.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 7, 'No tiene en cuenta las mejoras
en las caracter�sticas del rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 8, 'Ignora le modifiche alle
statistiche del nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 9, 'Ignores the opposing
Pok�mon�s stat changes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (109, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 8, 9, 'Powers up �not very
effective� moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 9, 9, 'Powers up �not very
effective� moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 10, 9, 'Powers up �not very
effective� moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 11, 5, 'Am�liore les capacit�s
�pas tr�s efficaces�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 11, 9, 'Powers up �not very
effective� moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 14, 9, 'Powers up �not very
effective� moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 1, '????????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 3, '??? ??? ???
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 5, 'Am�liore les capacit�s �?pas tr�s
efficaces?�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 6, 'Verst�rkt nicht sehr effektive
Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 7, 'Potencia los movimientos que no
son muy eficaces.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 8, 'Potenzia le mosse non molto
efficaci.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 9, 'Powers up �not very
effective� moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (110, 15, 11, '???????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 8, 9, 'Powers down super�
effective moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 9, 9, 'Powers down super�
effective moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 10, 9, 'Reduces damage from
supereffective attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 11, 5, 'Affaiblit les capacit�s
�super efficaces�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 11, 9, 'Reduces damage from
supereffective attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 14, 9, 'Reduces damage from
supereffective attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 3, '??? ??? ???
??? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 5, 'R�duit les d�g�ts des capacit�s
�?super efficaces?� subies.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 6, 'Senkt die St�rke sehr effektiver
Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 7, 'Mitiga los movimientos
supereficaces.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 8, 'Riduce la potenza delle mosse
superefficaci.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 9, 'Reduces damage from
supereffective attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (111, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 8, 9, 'Temporarily halves Attack
and Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 9, 9, 'Temporarily halves Attack
and Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 10, 9, 'Temporarily halves
Attack and Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 11, 5, 'Divise temporairement
Vitesse et Attaque par 2.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 11, 9, 'Temporarily halves
Attack and Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 14, 9, 'Temporarily halves
Attack and Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 1, '???????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 3, '??? ????
?? ?? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 5, 'Divise temporairement Vitesse
et Attaque par 2.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 6, 'Halbiert zeitweilig den Angriff
und die Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 7, 'Baja a la mitad el Ataque y la
Velocidad durante un rato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 8, 'Dimezza per un po� l�Attacco e
la Velocit�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 9, 'Temporarily halves the Pok�mon�s
Attack and Speed stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (112, 15, 11, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 8, 9, 'Enables moves to hit
Ghost-type foes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 9, 9, 'Enables moves to hit
Ghost-type foes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 10, 9, 'Enables moves to hit
Ghost-type foes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 11, 5, 'Les cap. Normal touchent
les Pok�mon Spectre.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 11, 9, 'Enables moves to hit
Ghost-type Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 14, 9, 'Enables moves to hit
Ghost-type Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 1, '????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 3, '??????
?? ??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 5, 'Les capacit�s Normal et Combat
touchent les Pok�mon Spectre.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 6, 'Normal- und Kampf-Attacken
treffen Pok�mon vom Typ Geist.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 7, 'Movimientos tipo Normal y Lucha
golpean a Pok�mon Fantasma.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 8, 'I Pok�mon di tipo Spettro sono
colpiti da mosse Normale e Lotta.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 9, 'Makes Normal- and Fighting-type
moves hit Ghost-type Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (113, 15, 11, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 8, 9, 'The Pok�mon draws in all
Water-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 9, 9, 'The Pok�mon draws in all
Water-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 10, 9, 'The Pok�mon draws in all
Water-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 11, 5, 'Attire l�eau et augmente
l�Atq. Sp�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 11, 9, 'Draws in all Water-type
moves to up Sp. Attack.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 14, 9, 'Draws in all Water-type
moves to up Sp. Attack.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 1, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 3, '?? ????
????? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 5, 'Attire et neutralise les attaques
Eau, et monte l�Attaque Sp�ciale.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 6, 'Absorbiert Wasser-Attacken
und steigert den Spezial-Angriff.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 7, 'Atrae y neutraliza los movimientos
de tipo Agua y sube el At. Esp.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 8, 'Neutralizza mosse di tipo Acqua
per aumentare l�Attacco Speciale.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 9, 'Draws in all Water-type moves
to boost its Sp. Atk stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (114, 15, 11, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 8, 9, 'The Pok�mon regains HP in
a hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 9, 9, 'The Pok�mon regains HP in
a hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 10, 9, 'The Pok�mon regains HP in
a hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 11, 5, 'R�g�n�re ses PV lors des
temp�tes de gr�le.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 11, 9, 'The Pok�mon gradually
regains HP in a hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 14, 9, 'The Pok�mon gradually
regains HP in a hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 1, '???????HP?
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 3, '????? ? HP?
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 5, 'R�g�n�re ses PV lors des
temp�tes de gr�le.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 6, 'Regeneriert bei Hagel
nach und nach KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 7, 'Recupera algunos PS cuando hay
tormentas de granizo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 8, 'Il Pok�mon recupera PS quando
grandina.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 9, 'The Pok�mon gradually
regains HP in a hailstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (115, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 8, 9, 'Powers down super�
effective moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 9, 9, 'Powers down super�
effective moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 10, 9, 'Reduces damage from
supereffective attacks');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 11, 5, 'Affaiblit les capacit�s
�super efficaces�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 11, 9, 'Reduces damage from
supereffective attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 14, 9, 'Reduces damage from
supereffective attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 3, '??? ??? ???
??? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 5, 'R�duit les d�g�ts des capacit�s
�?super efficaces?� subies.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 6, 'Senkt die St�rke sehr effektiver
Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 7, 'Mitiga los movimientos
supereficaces.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 8, 'Riduce la potenza delle mosse
superefficaci.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 9, 'Reduces damage from
supereffective attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (116, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 8, 9, 'The Pok�mon summons a
hailstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 9, 9, 'The Pok�mon summons a
hailstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 10, 9, 'The Pok�mon summons a
hailstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 11, 5, 'D�clenche une temp�te de
gr�le pendant le combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 11, 9, 'The Pok�mon summons a
hailstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 14, 9, 'The Pok�mon summons a
hailstorm in battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 1, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 3, '??? ???
????? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 5, 'D�clenche une temp�te de
gr�le pendant le combat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 6, 'Das Pok�mon beschw�rt im
Kampf Hagelst�rme herauf.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 7, 'El Pok�mon invoca una tormenta
de granizo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 8, 'Il Pok�mon provoca una
grandinata durante la lotta.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 9, 'The Pok�mon summons a
hailstorm when it enters a battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (117, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 8, 9, 'The Pok�mon may gather
Honey from somewhere.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 9, 9, 'The Pok�mon may gather
Honey from somewhere.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 10, 9, 'The Pok�mon may gather
Honey from somewhere.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 11, 5, 'Le Pok�mon peut parfois
trouver du Miel.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 11, 9, 'The Pok�mon may gather
Honey from somewhere.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 14, 9, 'The Pok�mon may gather
Honey from somewhere.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 1, '???????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 3, '????? ???
? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 5, 'Le Pok�mon peut parfois trouver
du Miel.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 6, 'Das Pok�mon sammelt
gelegentlich Honig auf.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 7, 'El Pok�mon recoge Miel de
donde puede.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 8, 'Il Pok�mon pu� raccogliere
Miele.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 9, 'The Pok�mon may gather
Honey from somewhere.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (118, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 8, 9, 'The Pok�mon can check
the foe�s held item.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 9, 9, 'The Pok�mon can check
the foe�s held item.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 10, 9, 'The Pok�mon can check
the foe�s held item.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 11, 5, 'Permet de conna�tre
l�objet tenu par l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 11, 9, 'The Pok�mon can check
a foe�s held item.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 14, 9, 'The Pok�mon can check
a foe�s held item.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 3, '??? ?? ???
? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 5, 'Permet de conna�tre l�objet tenu
par l�ennemi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 6, 'Gibt Auskunft �ber gegnerische
Items.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 7, 'El Pok�mon puede ver el objeto
que lleva el rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 8, 'Il Pok�mon scopre che
strumento ha il nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 9, 'The Pok�mon can check an
opposing Pok�mon�s held item.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (119, 15, 11, '????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 8, 9, 'Powers up moves that
have recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 9, 9, 'Powers up moves that
have recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 10, 9, 'Powers up moves that
have recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 11, 5, 'Booste les cap. ayant des
d�g�ts de contrecoups.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 11, 9, 'Powers up moves that
have recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 14, 9, 'Powers up moves that
have recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 1, '???????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 3, '?? ????
?? ??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 5, 'Booste les capacit�s ayant des
d�g�ts de contrecoups.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 6, 'Verst�rkt Attacken mit
R�cksto�-Schaden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 7, 'Potencia los movimientos que
da�an al usuario.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 8, 'Potenzia le mosse che provocano
contraccolpi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 9, 'Powers up moves that
have recoil damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (120, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 8, 9, 'Changes type to match
the held Plate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 9, 9, 'Changes type to match
the held Plate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 10, 9, 'Changes type to match
the held Plate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 11, 5, 'Modifie le type en fonction
de la Plaque tenue.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 11, 9, 'Changes type to match
the held Plate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 14, 9, 'Changes type to match
the held Plate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 1, '???????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 3, '??? ?? ?????
?? ??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 5, 'Modifie le type en fonction de la
Plaque tenue.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 6, 'Passt seinen Typ der
getragenen Tafel an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 7, 'Cambia el tipo al de la tabla que
lleve.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 8, 'Cambia il tipo del Pok�mon
a seconda della lastra che ha.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 9, 'Changes the Pok�mon�s type
to match the Plate it holds.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (121, 15, 11, '???????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 8, 9, 'Powers up party Pok�mon
when it is sunny.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 9, 9, 'Powers up party Pok�mon
when it is sunny.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 10, 9, 'Powers up party Pok�mon
when it is sunny.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 11, 5, 'Pok�mon de l��quipe plus
puissants au soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 11, 9, 'Powers up party Pok�mon
when it is sunny.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 14, 9, 'Powers up party Pok�mon
when it is sunny.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 1, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 3, '?? ? ???
?? ?? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 5, 'Rend les Pok�mon de l��quipe
plus puissants au soleil.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 6, 'Steigert bei Sonne die Effektivit�t
von allen Team-Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 7, 'Potencia los Pok�mon del equipo
si est� soleado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 8, 'Se c�� il sole, potenzia
i Pok�mon alleati.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 9, 'Powers up party Pok�mon
when it is sunny.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (122, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 8, 9, 'Reduces a sleeping foe�s
HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 9, 9, 'Reduces a sleeping foe�s
HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 10, 9, 'Reduces a sleeping
foe�s HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 11, 5, 'R�duit les PV d�un ennemi
endormi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 11, 9, 'Reduces a sleeping
foe�s HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 14, 9, 'Reduces a sleeping
foe�s HP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 1, '???????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 3, '??? ?? ???
HP? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 5, 'R�duit les PV d�un ennemi
endormi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 6, 'Senkt die KP eines
schlafenden Gegners.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 7, 'Reduce los PS de cualquier rival
que est� dormido.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 8, 'Riduce i PS dei nemici
addormentati.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 9, 'Reduces the HP of sleeping
opposing Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (123, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 11, 5, 'Vole l�objet de l�ennemi
si son attaque touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 11, 9, 'Steals an item when hit
by another Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 14, 9, 'Steals an item when hit
by another Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 1, '???????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 3, '?? ?????
??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 5, 'Vole l�objet de l�attaquant si son
attaque touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 6, 'Stiehlt Angreifern Items,
wenn es von ihnen ber�hrt wird.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 7, 'Al ser golpeado, roba
el objeto del objetivo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 8, 'Al contatto subito, ruba lo
strumento di chi lo ha attaccato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 9, 'Steals an item from an attacker
that made direct contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (124, 15, 11, '?????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 11, 5, 'Frappe plus fort mais
annule les effets cumul�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 11, 9, 'Removes added effects to
increase move damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 14, 9, 'Removes added effects to
increase move damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 1, '???????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 3, '?? ?????
?? ??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 5, 'Frappe plus fort mais annule les
effets cumul�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 6, 'Bewirkt einen Kraftschub,
aber hebt Zusatz-Effekte auf.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 7, 'Sube la potencia y anula los
efectos secundarios.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 8, 'Aumenta i danni annullando altri
effetti delle mosse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 9, 'Removes additional effects to
increase move damage.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (125, 15, 11, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 11, 5, 'Inverse les variations
de stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 11, 9, 'Makes stat changes have
an opposite effect.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 14, 9, 'Makes stat changes have
an opposite effect.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 1, '???????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 3, '??? ???
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 5, 'Inverse les variations de stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 6, 'Statusver�nderungen werden
umgekehrt.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 7, 'Invierte los cambios en las
caracter�sticas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 8, 'Le modifiche alle statistiche
hanno effetto inverso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 9, 'Makes stat changes have
an opposite effect.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (126, 15, 11, '???????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 11, 5, 'L�ennemi stresse et ne
peut plus manger de Baies.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 11, 9, 'Makes the foe nervous and
unable to eat Berries.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 14, 9, 'Makes the foe nervous and
unable to eat Berries.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 1, '????????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 3, '??? ???? ?????
?? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 5, 'L�ennemi stresse et ne peut plus
manger de Baies.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 6, 'Hindert den Gegner durch Stress
am Beerenkonsum.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 7, 'Pone nervioso al rival y le impide
usar bayas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 8, 'Il nemico viene intimidito e non
pu� mangiare bacche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 9, 'Unnerves opposing Pok�mon and
makes them unable to eat Berries.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (127, 15, 11, '????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 11, 5, 'Monte l�Attaque quand
les stats baissent.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 11, 9, 'When its stats are lowered
its Attack increases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 14, 9, 'When its stats are lowered
its Attack increases.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 3, '??? ????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 5, 'Monte l�Attaque quand une stat
est baiss�e par l�adversaire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 6, 'Senkt der Gegner die Status-
werte, steigt der Angriffs-Wert.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 7, 'Sube el Ataque cuando el rival le
baja las caracter�sticas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 8, 'L�Attacco aumenta quando un
nemico fa calare le statistiche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 9, 'Boosts the Pok�mon�s Attack stat
when its stats are lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (128, 15, 11, '????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 11, 5, 'Baisse les stats quand les
PV tombent � la moiti�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 11, 9, 'Lowers stats when HP
becomes half or less.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 14, 9, 'Lowers stats when HP
becomes half or less.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 1, '????????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 3, 'HP? ??? ??
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 5, 'Baisse les stats quand les PV
tombent � la moiti�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 6, 'Bei halbierter KP-Anzahl
sinken die Statuswerte.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 7, 'Baja las caracter�sticas al llegar a
la mitad los PS.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 8, 'Le statistiche scendono se i PS
calano a met� o meno.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 9, 'Lowers stats when HP
becomes half or less.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (129, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 11, 5, 'Peut emp�cher l�ennemi de
r�utiliser une attaque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 11, 9, 'May disable a move used
on the Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 14, 9, 'May disable a move used
on the Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 1, '????????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 3, '????? ?? ???
???? ??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 5, 'Peut emp�cher l�ennemi de
r�utiliser une attaque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 6, 'Blockiert gelegentlich Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 7, 'Puede anular el movimiento
usado en su contra.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 8, 'A volte inibisce l�ultima mossa
usata dal nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 9, 'May disable a move used
on the Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (130, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 11, 5, 'Gu�rit parfois le statut
des alli�s alentour.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 11, 9, 'May heal an ally�s status
conditions.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 14, 9, 'May heal an ally�s status
conditions.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 1, '???????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 3, '?? ?? ?? ???
?? ?????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 5, 'Gu�rit parfois le statut des alli�s
alentour.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 6, 'Befreit Mitstreiter gelegentlich
von Statusproblemen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 7, 'A veces cura los cambios
de estado de un aliado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 8, 'A volte cura i problemi di stato
degli alleati.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 9, 'Sometimes heals an
ally�s status condition.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (131, 15, 11, '?????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 11, 5, 'Diminue les d�g�ts subis
par les alli�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 11, 9, 'Reduces damage done
to allies.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 14, 9, 'Reduces damage done
to allies.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 3, '?? ?? ????
?? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 5, 'Diminue les d�g�ts subis par les
alli�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 6, 'Verringert den Schaden
an Mitstreitern.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 7, 'Reduce el da�o que sufren los
aliados.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 8, 'Riduce il danno subito dagli
alleati.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 9, 'Reduces damage done
to allies.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (132, 15, 11, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 11, 5, 'Un coup physique baisse la
D�fense, monte la Vitesse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 11, 9, 'Physical attacks lower
Defense and raise Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 14, 9, 'Physical attacks lower
Defense and raise Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 3, '?? ??? ??? ???
???? ???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 5, 'Un coup physique baisse la
D�fense, monte la Vitesse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 6, 'Phys. Treffer senken Verteidigung
und steigern Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 7, 'Un ataque f�sico baja la Defensa
y sube la Velocidad.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 8, 'Riduce la Difesa e aumenta la
Velocit� se il Pok�mon � colpito.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 9, 'Physical attacks lower its Defense
stat and raise its Speed stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (133, 15, 11, '???????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 11, 5, 'Double le poids
du Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 11, 9, 'Doubles the Pok�mon�s
weight.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 14, 9, 'Doubles the Pok�mon�s
weight.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 1, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 3, '??? ???
2?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 5, 'Double le poids du Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 6, 'Verdoppelt das eigene Gewicht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 7, 'Duplica el peso del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 8, 'Raddoppia il peso del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 9, 'Doubles the Pok�mon�s weight.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (134, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 11, 5, 'Divise par deux le
poids du Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 11, 9, 'Halves the Pok�mon�s
weight.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 14, 9, 'Halves the Pok�mon�s
weight.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 1, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 3, '??? ???
??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 5, 'Divise par 2 le poids du
Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 6, 'Halbiert das eigene Gewicht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 7, 'Reduce a la mitad el peso del
Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 8, 'Dimezza il peso del Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 9, 'Halves the Pok�mon�s weight.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (135, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 11, 5, 'Re�oit moins de d�g�ts si
les PV sont au maximum.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 11, 9, 'Reduces damage when HP
is full.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 14, 9, 'Reduces damage when HP
is full.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 3, 'HP? ? ?? ?
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 5, 'Re�oit moins de d�g�ts si les PV
sont au maximum.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 6, 'Verringert den erlittenen Schaden
bei vollen KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 7, 'Reduce el da�o sufrido si los PS
est�n al m�ximo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 8, 'Riduce il danno subito se i PS
sono al massimo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 9, 'Reduces damage the Pok�mon
takes when its HP is full.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (136, 15, 11, '???????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 11, 5, 'Booste les att. physiques
si le statut est poison.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 11, 9, 'Powers up physical
attacks when poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 14, 9, 'Powers up physical
attacks when poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 3, '? ??? ? ?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 5, 'Booste les attaques physiques
si le statut est poison.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 6, 'Erh�ht bei Vergiftung die St�rke
von physischen Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 7, 'Aumenta la potencia f�sica si est�
envenenado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 8, 'Aumenta l�Attacco se il Pok�mon
� avvelenato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 9, 'Powers up physical attacks when
the Pok�mon is poisoned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (137, 15, 11, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 11, 5, 'Booste les att. sp�ciales
si le statut est br�lure.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 11, 9, 'Powers up special attacks
when burned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 14, 9, 'Powers up special attacks
when burned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 3, '?? ??? ? ?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 5, 'Booste les attaques sp�ciales si
le statut est br�lure.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 6, 'Verst�rkt bei Verbrennungen
die St�rke von Spezial-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 7, 'Potencia los ataques especiales
cuando el Pok�mon se quema.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 8, 'Aumenta l�Attacco Speciale se
il Pok�mon � scottato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 9, 'Powers up special attacks when
the Pok�mon is burned.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (138, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 11, 5, 'Les Baies utilis�es
peuvent repousser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 11, 9, 'May create another
Berry after one is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 14, 9, 'May create another
Berry after one is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 1, '?????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 3, '??? ?????
? ??? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 5, 'Les Baies utilis�es peuvent
repousser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 6, 'Aufgebrauchte Beeren k�nnen
mehrmals nachwachsen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 7, 'Permite reutilizar varias veces una
misma baya.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 8, 'Pu� ricreare una bacca utilizzata.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 9, 'May create another
Berry after one is used.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (139, 15, 11, '????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 11, 5, 'Anticipe et �vite les
attaques de ses alli�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 11, 9, 'Anticipates an ally�s
attack and dodges it.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 14, 9, 'Anticipates an ally�s
attack and dodges it.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 1, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 3, '?? ?? ??? ???
?? ??? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 5, 'Anticipe et �vite les attaques de
ses alli�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 6, 'Erkennt und pariert Attacken
von Mitstreitern.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 7, 'Elude los ataques de aliados en
batalla.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 8, 'Prevede ed evita gli attacchi
degli alleati.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 9, 'Anticipates an ally�s
attack and dodges it.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (140, 15, 11, '???????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 11, 5, 'Monte une stat tout en
en baissant une autre.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 11, 9, 'Raises one stat and
lowers another.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 14, 9, 'Raises one stat and
lowers another.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 1, '????????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 3, '???
????????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 5, 'Monte une stat tout en en
baissant une autre.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 6, 'Erh�ht einen Statuswert
und senkt einen anderen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 7, 'Sube una caracter�stica mucho,
pero baja otra.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 8, 'Aumenta una statistica e ne
riduce un�altra.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 9, 'Raises one stat and
lowers another.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (141, 15, 11, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 11, 5, 'Neutralise les d�g�ts dus
� la m�t�o.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 11, 9, 'Protects the Pok�mon from
damage from weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 14, 9, 'Protects the Pok�mon from
damage from weather.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 1, '???????
????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 3, '??? ???
???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 5, 'Prot�ge du sable, de la gr�le
ou de la poudre.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 6, 'Nimmt keinen Schaden
durch Wetterbedingungen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 7, 'Protege del polvo, la arena y
el granizo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 8, 'Protegge il Pok�mon da polvere,
sabbia e grandine.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 9, 'Protects the Pok�mon from things
like sand, hail, and powder.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (142, 15, 11, '??????
???');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 11, 5, 'Peut empoisonner l�ennemi
par simple contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 11, 9, 'May poison targets when a
Pok�mon makes contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 14, 9, 'May poison targets when a
Pok�mon makes contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 3, '????? ?? ???
? ??? ?? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 5, 'Peut empoisonner l�ennemi par
simple contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 6, 'Kann das Ziel durch
blo�es Ber�hren vergiften.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 7, 'Puede envenenar al objetivo con
solo tocarlo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 8, 'Pu� avvelenare il nemico al solo
contatto fisico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 9, 'May poison a target when the
Pok�mon makes contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (143, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 11, 5, 'Restaure un peu de PV
si le Pok�mon est retir�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 11, 9, 'Restores a little HP when
withdrawn from battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 14, 9, 'Restores a little HP when
withdrawn from battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 1, '?????? ???
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 3, '?? ??? HP?
?? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 5, 'Restaure un peu de PV si le
Pok�mon est retir�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 6, 'Heilt beim Austauschen
eine geringe Menge an KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 7, 'Recupera unos pocos PS al
cambiar de Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 8, 'Il Pok�mon recupera un po� di PS
quando viene sostituito.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 9, 'Restores a little HP when
withdrawn from battle.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (144, 15, 11, '?????? ???
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 11, 5, 'Emp�che la D�f. de baisser
� cause d�attaques.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 11, 9, 'Protects the Pok�mon from
Defense-lowering attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 14, 9, 'Protects the Pok�mon from
Defense-lowering attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 1, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 3, '??? ?????
??? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 5, 'Emp�che les attaques adverses
de baisser la D�fense.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 6, 'Hindert Angreifer daran,
die Verteidigung zu senken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 7, 'Protege de los ataques que bajan
la Defensa.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 8, 'Evita che la Difesa diminuisca.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 9, 'Protects the Pok�mon from
Defense-lowering attacks.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (145, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 11, 5, 'Augmente la Vitesse lors
des temp�tes de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 11, 9, 'Boosts the Pok�mon�s
Speed in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 14, 9, 'Boosts the Pok�mon�s
Speed in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 1, '??????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 3, '??????
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 5, 'Augmente la Vitesse lors des
temp�tes de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 6, 'Erh�ht in Sandst�rmen
die Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 7, 'Aumenta la Velocidad durante las
tormentas de arena.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 8, 'La Velocit� aumenta nelle
tempeste di sabbia.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 9, 'Boosts the Pok�mon�s
Speed stat in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (146, 15, 11, '?????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 11, 5, 'Son corps r�siste mieux
aux attaques de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 11, 9, 'Makes status-changing
moves more likely to miss.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 14, 9, 'Makes status-changing
moves more likely to miss.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 1, '????????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 3, '?? ??? ?? ???
??? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 5, 'R�siste mieux aux attaques
de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 6, 'Wehrt mit robustem K�rper
viele Status-Attacken ab.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 7, 'Dificulta que le afecten los
ataques de estado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 8, 'Resiste pi� facilmente ai
cambiamenti di stato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 9, 'Makes status moves
more likely to miss.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (147, 15, 11, '??????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 11, 5, 'Booste les capacit�s s�il
attaque en dernier.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 11, 9, 'Boosts move power when
the Pok�mon moves last.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 14, 9, 'Boosts move power when
the Pok�mon moves last.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 1, '?????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 3, '?? ????
??? ?? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 5, 'Booste les capacit�s s�il attaque
en dernier.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 6, 'Greift das Pok�mon zuletzt an,
ist es st�rker.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 7, 'Potencia el movimiento si es el
�ltimo en atacar.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 8, 'Se agisce per ultimo, la potenza
della mossa sale.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 9, 'Boosts move power when the
Pok�mon moves after the target.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (148, 15, 11, '??????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 11, 5, 'Prend l�apparence du der-
nier Pok�mon de l��quipe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 11, 9, 'Comes out disguised as
the Pok�mon in back.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 14, 9, 'Comes out disguised as
the Pok�mon in back.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 1, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 3, '?? ?????
???? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 5, 'Prend l�apparence du dernier
Pok�mon de l��quipe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 6, 'Bestreitet K�mpfe in der Gestalt
des Listenletzten.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 7, 'Se convierte en el �ltimo
Pok�mon del equipo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 8, 'Entra con le sembianze
dell�ultimo Pok�mon in squadra.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 9, 'Comes out disguised as the
Pok�mon in the party�s last spot.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (149, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 11, 5, 'Adopte l�apparence du
Pok�mon adverse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 11, 9, 'It transforms itself into
the Pok�mon it is facing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 14, 9, 'It transforms itself into
the Pok�mon it is facing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 3, '??? ?????
??????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 5, 'Adopte l�apparence du Pok�mon
adverse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 6, 'K�mpft als Kopie seines
Gegen�bers.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 7, 'Se transforma en el Pok�mon que
tiene enfrente.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 8, 'Si trasforma nel Pok�mon che ha
davanti.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 9, 'The Pok�mon transforms itself
into the Pok�mon it�s facing.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (150, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 11, 5, 'Traverse les barri�res de
l�ennemi pour attaquer.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 11, 9, 'Passes through the foe�s
barrier and strikes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 14, 9, 'Passes through the foe�s
barrier and strikes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 1, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 3, '??? ??
?? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 5, 'Traverse les barri�res de
l�ennemi pour attaquer.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 6, '�berwindet gegnerische Schilde
und greift an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 7, 'Ataca rodeando la barrera del
rival.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 8, 'Attacca evitando le barriere
del nemico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 9, 'Passes through the opposing
Pok�mon�s barrier and strikes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (151, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 11, 5, 'Momifie la cap. sp�. de
l�ennemi qui le touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 11, 9, 'Contact with this Pok�mon
spreads this Ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 14, 9, 'Contact with this Pok�mon
spreads this Ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 1, '???????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 3, '??? ??? ???
??? ??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 5, 'Momifie le talent de l�ennemi qui
le touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 6, 'Ber�hrt man das Pok�mon,
�bernimmt man seine F�higkeit.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 7, 'Contagia Momia al rival que lo
toque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 8, 'L�abilit� del nemico cambia
in Mummia dopo il contatto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 9, 'Contact with the Pok�mon
spreads this Ability.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (152, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 11, 5, 'Monte l�Attaque quand
il met un ennemi K.O.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 11, 9, 'Boosts Attack after
knocking out any Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 14, 9, 'Boosts Attack after
knocking out any Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 1, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 3, '??? ?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 5, 'Monte l�Attaque quand il met un
ennemi K.O.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 6, 'Besiegt es ein Pok�mon,
steigt sein Angriffs-Wert.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 7, 'Potencia el Ataque al debilitar a
un objetivo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 8, 'Aumenta l�Attacco quando
manda un nemico KO.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 9, 'Boosts the Attack stat after
knocking out any Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (153, 15, 11, '???????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 11, 5, 'Monte l�Attaque si une
att. T�n�bres le touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 11, 9, 'Raises Attack when hit by
a Dark-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 14, 9, 'Raises Attack when hit by
a Dark-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 1, '????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 3, '? ??? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 5, 'Monte l�Attaque si une attaque
T�n�bres le touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 6, 'Angriff steigt nach Einstecken
einer Unlicht-Attacke.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 7, 'Sube el Ataque al recibir uno de
tipo Siniestro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 8, 'L�Attacco aumenta se si �
colpiti da una mossa di tipo Buio.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 9, 'Boosts the Attack stat when
it�s hit by a Dark-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (154, 15, 11, '????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 11, 5, 'Sa peur de certains types
augmente sa Vitesse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 11, 9, 'Some move types scare
it and boost its Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 14, 9, 'Some move types scare
it and boost its Speed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 1, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 3, '??? ?? ????
???? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 5, 'Sa peur de certains types
augmente sa Vitesse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 6, 'Aus Angst vor manchen Attacken
steigt die Initiative.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 7, 'El miedo a algunos ataques sube
su Velocidad.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 8, 'Per paura di certi tipi di mosse,
la Velocit� sale.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 9, 'Some move types scare
it and boost its Speed stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (155, 15, 11, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 11, 5, 'Renvoie les attaques
de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 11, 9, 'Reflects status-
changing moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 14, 9, 'Reflects status-
changing moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 1, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 3, '?? ???
???? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 5, 'Renvoie les attaques de statut.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 6, 'Lenkt Status-Attacken
auf den Angreifer um.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 7, 'Permite devolver los ataques de
estado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 8, 'Riflette al mittente le mosse
di stato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 9, 'Reflects status moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (156, 15, 11, '???????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 11, 5, 'Augmente l�Attaque apr�s
une attaque Plante.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 11, 9, 'Boosts Attack when hit by
a Grass-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 14, 9, 'Boosts Attack when hit by
a Grass-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 3, '? ??? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 5, 'Neutralise les attaques Plante et
augmente l�Attaque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 6, 'Absorbiert Pflanzen-Attacken
und steigert den Angriff.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 7, 'Neutraliza los movimientos de
tipo Planta y sube el Ataque.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 8, 'Neutralizza le mosse di tipo Erba
subite per aumentare l�Attacco.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 9, 'Boosts the Attack stat when hit
by a Grass-type move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (157, 15, 11, '???????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 11, 5, 'Utilise les attaques de
statut en premier.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 11, 9, 'Gives priority to a
status move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 14, 9, 'Gives priority to a
status move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 3, '?? ??? ??
? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 5, 'Utilise les attaques de statut en
premier.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 6, 'Erm�glicht einen Erstschlag
mit Status-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 7, 'Permite lanzar ataques de estado
en primer lugar.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 8, 'D� priorit� a mosse che alterano
lo stato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 9, 'Gives priority to a
status move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (158, 15, 11, '????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 11, 5, 'Renforce des capacit�s en
cas de temp�te de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 11, 9, 'Boosts certain moves�
power in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 14, 9, 'Boosts certain moves�
power in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 3, '?????? ???
???? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 5, 'Renforce des capacit�s en cas
de temp�te de sable.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 6, 'Manche Attacken wirken
in Sandst�rmen besser.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 7, 'Potencia algunos movimientos
durante las tormentas de arena.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 8, 'Potenzia alcune mosse nelle
tempeste di sabbia.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 9, 'Boosts certain moves�
power in a sandstorm.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (159, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 11, 5, 'Blesse l�ennemi au moindre
contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 11, 9, 'Inflicts damage to the
Pok�mon on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 14, 9, 'Inflicts damage to the
Pok�mon on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 1, '????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 3, '??? ????
??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 5, 'Blesse l�attaquant au moindre
contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 6, 'Angreifer nehmen durch
blo�es Ber�hren Schaden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 7, 'Hiere al hacer contacto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 8, 'Se chi attacca mette a segno una
mossa fisica, viene danneggiato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 9, 'Inflicts damage to the
attacker on contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (160, 15, 11, '???????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 11, 5, 'Transforme le Pok�mon
dans les moments d�licats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 11, 9, 'Changes the Pok�mon�s
shape when HP is halved.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 14, 9, 'Changes the Pok�mon�s
shape when HP is halved.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 1, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 3, '??? ?
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 5, 'Transforme le Pok�mon dans les
moments d�licats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 6, 'Wechselt seine Gestalt,
wenn es eng wird.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 7, 'Cambia de forma en un apuro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 8, 'Se il Pok�mon � in difficolt�,
ne cambia l�aspetto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 9, 'Changes the Pok�mon�s
shape when HP is half or less.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (161, 15, 11, '????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 11, 5, 'Monte la Pr�cision des
Pok�mon de l��quipe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 11, 9, 'Boosts the accuracy of its
allies and itself.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 14, 9, 'Boosts the accuracy of its
allies and itself.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 1, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 3, '??? ?? ??
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 5, 'Monte la Pr�cision des Pok�mon
de l��quipe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 6, 'Erh�ht Genauigkeit bei
allen Pok�mon im Team.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 7, 'Sube la Precisi�n de todo el
equipo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 8, 'Aumenta la precisione di chi la
possiede e quella degli alleati.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 9, 'Boosts the accuracy of its
allies and itself.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (162, 15, 11, '???????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 11, 5, 'Les cap. sp�. adverses ne
bloquent pas ses cap.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 11, 9, 'Moves can be used
regardless of Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 14, 9, 'Moves can be used
regardless of Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 3, '??? ???? ????
??? ? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 5, 'Les talents adverses ne bloquent
pas ses capacit�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 6, 'Attacken k�nnen ungeachtet der
F�higkeit verwendet werden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 7, 'Usa movimientos sin que importen
las habilidades.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 8, 'Neutralizza le abilit� che
bloccano le mosse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 9, 'Moves can be used on the target
regardless of its Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (163, 15, 11, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 11, 5, 'Les cap. sp�. adverses ne
bloquent pas ses cap.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 11, 9, 'Moves can be used
regardless of Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 14, 9, 'Moves can be used
regardless of Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 3, '??? ???? ????
??? ? ? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 5, 'Les talents adverses ne bloquent
pas ses capacit�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 6, 'Attacken k�nnen ungeachtet der
F�higkeit verwendet werden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 7, 'Usa movimientos sin que importen
las habilidades.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 8, 'Neutralizza le abilit� che
bloccano le mosse.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 9, 'Moves can be used on the target
regardless of its Abilities.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (164, 15, 11, '????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 1, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 3, '?? ??? ???
?? ??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 5, 'Prot�ge l��quipe des attaques
limitant le choix des capacit�s.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 6, 'Sch�tzt alle Pok�mon im Team
vor manchen mentalen Angriffen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 7, 'Protege al equipo de ataques
que impiden elegir movimientos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 8, 'Protegge s� e gli alleati da mosse
che limitano la scelta di attacchi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 9, 'Protects allies from attacks that
limit their move choices.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (165, 15, 11, '?????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 3, '?? ?? ??? ????
??? ???? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 5, 'Emp�che les alli�s de type Plante
de subir des diminutions de stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 6, 'Sch�tzt Pflanzen-Pok�mon
vor gesenkten Statuswerten.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 7, 'Evita que bajen las caracter�sticas
de Pok�mon tipo Planta aliados.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 8, 'Evita il calo delle statistiche
degli alleati di tipo Erba.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 9, 'Prevents lowering of ally
Grass-type Pok�mon�s stats.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (166, 15, 11, '??????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 1, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 3, '????? ???
HP? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 5, 'Rend des PV lorsque le Pok�mon
consomme une Baie.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 6, 'Heilt beim Konsum
von Beeren KP.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 7, 'Recupera PS al comer bayas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 8, 'Fa recuperare PS quando
il Pok�mon mangia una bacca.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 9, 'Restores HP as well when
the Pok�mon eats a Berry.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (167, 15, 11, '?????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 1, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 3, '??? ??? ??
???? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 5, 'Le Pok�mon prend le type de sa
derni�re capacit� lanc�e.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 6, 'Das Pok�mon nimmt bei Einsatz
einer Attacke deren Typ an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 7, 'Cambia su tipo al del movimiento
que acaba de usar.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 8, 'Cambia il tipo del Pok�mon in
quello della mossa usata.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 9, 'Changes the Pok�mon�s type to
the type of the move it�s using.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (168, 15, 11, '?????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 1, '????????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 3, '?? ??? ????
??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 5, 'Divise les d�g�ts des attaques
physiques par deux.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 6, 'Halbiert den Schaden durch
physische Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 7, 'Reduce a la mitad el da�o
recibido por ataques f�sicos.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 8, 'Dimezza il danno degli attacchi
fisici subiti.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 9, 'Halves damage from
physical moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (169, 15, 11, '??????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 1, '????????????
?????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 3, '??? ?? ???
??? ??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 5, 'Les capacit�s volent aussi l�objet
tenu par la cible.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 6, 'Stiehlt Items von Pok�mon, die
durch Attacken getroffen wurden.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 7, 'Roba el objeto del Pok�mon al
que alcance con un movimiento.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 8, 'Ruba lo strumento del Pok�mon
su cui � stata usata una mossa.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 9, 'The Pok�mon steals the held item
of a Pok�mon it hits with a move.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (170, 15, 11, '??????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 1, '?????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 3, '???? ???
?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 5, 'Prot�ge de certaines capacit�s
projetant des bombes, balles�');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 6, 'Sch�tzt das Pok�mon vor
geworfenen Bomben und Kugeln.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 7, 'No le afectan las bombas ni
algunos proyectiles.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 8, 'Protegge da alcune mosse
a base di proiettili e bombe.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 9, 'Protects the Pok�mon from
some ball and bomb moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (171, 15, 11, '?????????
??????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 3, '??? ????
????? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 5, 'Monte l�Attaque quand une stat
est baiss�e par l�adversaire.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 6, 'Erh�ht den Spezial-Angriff, wenn
ein Statuswert gesenkt wurde.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 7, 'Aumenta su At. Esp. cuando
disminuyen otras caracter�sticas.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 8, 'L�Attacco aumenta quando un
nemico fa calare le statistiche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 9, 'Boosts the Sp. Atk stat when
a stat is lowered.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (172, 15, 11, '????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 1, '??????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 3, '?? ????
?? ?? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 5, 'Gr�ce � une puissante m�choire,
les morsures sont plus fortes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 6, 'Der kr�ftige Kiefer des Pok�mon
verleiht ihm einen starken Biss.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 7, 'Su robusta mand�bula le confiere
una potente mordedura.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 8, 'La robusta mascella del Pok�mon
permette morsi molto potenti.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 9, 'The Pok�mon�s strong jaw gives
it tremendous biting power.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (173, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 3, '????? ???
????? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 5, 'Les capacit�s de type Normal
deviennent de type Glace.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 6, 'Attacken vom Typ Normal
nehmen den Typ Eis an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 7, 'Convierte movimientos de tipo
Normal en tipo Hielo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 8, 'Le mosse di tipo Normale
diventano di tipo Ghiaccio.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 9, 'Normal-type moves become
Ice-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (174, 15, 11, '???????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 1, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 3, '?? ?? ????
??? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 5, 'Les Pok�mon de l��quipe ne
peuvent pas s�endormir.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 6, 'Alle Pok�mon im Team k�nnen
nicht einschlafen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 7, 'Evita que tu equipo Pok�mon
se duerma.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 8, 'Impedisce a s� e agli alleati
di addormentarsi.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 9, 'Prevents itself and ally Pok�mon
from falling asleep.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (175, 15, 11, '?????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 1, '????????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 3, '??????
??? ???.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 5, 'Change de forme selon la fa�on
dont le Pok�mon se bat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 6, 'Das Pok�mon nimmt je nach
Kampftaktik eine andere Form an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 7, 'Cambia de forma seg�n su estilo
de combate.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 8, 'L�aspetto del Pok�mon cambia
in base alla modalit� di lotta.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 9, 'The Pok�mon changes form
depending on how it battles.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (176, 15, 11, '??????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 3, '????? ???
?? ??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 5, 'Les attaques de type Vol sont
prioritaires.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 6, 'Erm�glicht es dem Pok�mon, mit
Flug-Attacken zuerst anzugreifen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 7, 'Da prioridad a los movimientos de
tipo Volador.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 8, 'D� priorit� alle mosse di tipo
Volante.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 9, 'Gives priority to Flying-type
moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (177, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 1, '????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 3, '?? ???
??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 5, 'Augmente la puissance de
certaines capacit�s de type aura.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 6, 'Erh�ht die St�rke einiger Wellen-,
Aura- und Puls-Attacken.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 7, 'Aumenta la potencia de algunos
movimientos de pulsos y auras.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 8, 'Potenzia le mosse �pulsar�
e altre come Ondasana.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 9, 'Powers up aura and pulse moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (178, 15, 11, '???????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 3, '?????? ?
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 5, 'Augmente la D�fense si
Champ Herbu est actif.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 6, 'Erh�ht die Verteidigung,
wenn Grasfeld aktiv ist.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 7, 'Aumenta la Defensa mientras dura
el efecto de Campo de Hierba.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 8, 'Aumenta la Difesa durante
l�effetto di Campo Erboso.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 9, 'Boosts the Defense stat
in Grassy Terrain.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (179, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 1, '?????????
???????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 3, '?? ??? ???
?? ? ?? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 5, 'Permet aux alli�s d�utiliser
l�objet port� par ce Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 6, 'Das Pok�mon kann sein Item an
einen Mitstreiter weitergeben.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 7, 'El Pok�mon puede pasar su
objeto a un aliado.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 8, 'Il Pok�mon pu� passare il suo
strumento a un alleato.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 9, 'The Pok�mon can pass
an item to an ally.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (180, 15, 11, '???????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 3, '???? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 5, 'Augmente la puissance des
attaques directes.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 6, 'Erh�ht die St�rke von direkten
Angriffen.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 7, 'Aumenta la potencia de los
movimientos de contacto directo.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 8, 'Potenzia le mosse che causano
un contatto fisico.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 9, 'Powers up moves that
make direct contact.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (181, 15, 11, '???????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 1, '????????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 3, '????? ???
?????? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 5, 'Les capacit�s de type Normal
deviennent de type F�e.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 6, 'Attacken vom Typ Normal
nehmen den Typ Fee an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 7, 'Convierte movimientos de tipo
Normal en tipo Hada.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 8, 'Le mosse di tipo Normale
diventano di tipo Folletto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 9, 'Normal-type moves become
Fairy-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (182, 15, 11, '???????????
????????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 1, '????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 3, '??? ???
???? ?????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 5, 'Diminue la Vitesse de l�attaquant
qui le touche.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 6, 'Die Initiative von Angreifern sinkt
durch blo�es Ber�hren.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 7, 'Baja la Velocidad del Pok�mon
con el que entra en contacto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 8, 'Riduce la Velocit� del Pok�mon
con cui entra in contatto.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 9, 'Contact with the Pok�mon
lowers the attacker�s Speed stat.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (183, 15, 11, '???????
?????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 3, '????? ???
????? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 5, 'Les capacit�s de type Normal
deviennent de type Vol.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 6, 'Attacken vom Typ Normal
nehmen den Typ Flug an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 7, 'Convierte movimientos de tipo
Normal en tipo Volador.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 8, 'Le mosse di tipo Normale
diventano di tipo Volante.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 9, 'Normal-type moves become
Flying-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (184, 15, 11, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 1, '????????
???????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 3, '??? ?? 2???
????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 5, 'Attaque en famille.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 6, 'Zwei Generationen setzen
gemeinsam zum Angriff an.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 7, 'Ataque en familia.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 8, 'Il Pok�mon e il suo piccolo
attaccano insieme.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 9, 'Parent and child
attack together.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (185, 15, 11, '??????
?????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 1, '????????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 3, '??? ???
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 5, 'Renforce les attaques de type
T�n�bres de tous les Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 6, 'Erh�ht die St�rke von allen
Attacken des Typs Unlicht.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 7, 'Aumenta la potencia de todos los
movimientos de tipo Siniestro.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 8, 'Potenzia le mosse di tipo Buio
di tutti i Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 9, 'Powers up each Pok�mon�s
Dark-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (186, 15, 11, '??????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 1, '???????????
??????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 3, '??? ?????
??? ????.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 5, 'Renforce les attaques de type
F�e de tous les Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 6, 'Erh�ht die St�rke von allen
Attacken des Typs Fee.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 7, 'Aumenta la potencia de todos los
movimientos de tipo Hada.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 8, 'Potenzia le mosse di tipo Folletto
di tutti i Pok�mon.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 9, 'Powers up each Pok�mon�s
Fairy-type moves.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (187, 15, 11, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 1, '?????????
????????');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 3, '??? ???
??? ??.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 5, 'L�effet des auras est invers�.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 6, 'Kehrt die Wirkung von Auren um.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 7, 'Invierte los efectos que causan
las auras.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 8, 'Inverte gli effetti di tutte
le aure.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 9, 'The effects of �Aura� Abilities
are reversed.');
INSERT INTO [ability_flavor_text] ([ability_id], [version_group_id], [language_id], [flavor_text]) VALUES (188, 15, 11, '????????
??????');
