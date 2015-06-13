BEGIN TRANSACTION;
insert into move_damage_classes ("id", "identifier") values ('1', 'non-damaging');
insert into move_damage_classes ("id", "identifier") values ('2', 'physical');
insert into move_damage_classes ("id", "identifier") values ('3', 'special');
COMMIT;
