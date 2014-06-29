BEGIN TRANSACTION;
insert into move_targets ("id", "identifier") values ('1', 'specific-move');
insert into move_targets ("id", "identifier") values ('2', 'selected-pokemon');
insert into move_targets ("id", "identifier") values ('3', 'ally');
insert into move_targets ("id", "identifier") values ('4', 'users-field');
insert into move_targets ("id", "identifier") values ('5', 'user-or-ally');
insert into move_targets ("id", "identifier") values ('6', 'opponents-field');
insert into move_targets ("id", "identifier") values ('7', 'user');
insert into move_targets ("id", "identifier") values ('8', 'random-opponent');
insert into move_targets ("id", "identifier") values ('9', 'all-other-pokemon');
insert into move_targets ("id", "identifier") values ('10', 'selected-pokemon');
insert into move_targets ("id", "identifier") values ('11', 'all-opponents');
insert into move_targets ("id", "identifier") values ('12', 'entire-field');
COMMIT;