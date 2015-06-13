
-- Table: language_names
CREATE TABLE language_names ( 
    language_id       INTEGER        NOT NULL,
    local_language_id INTEGER        NOT NULL,
    name              VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( language_id, local_language_id ),
    FOREIGN KEY ( language_id ) REFERENCES languages ( id ),
    FOREIGN KEY ( local_language_id ) REFERENCES languages ( id ) 
);

INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (1, 1, '???');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (1, 9, 'Japanese');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (2, 1, '??????');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (2, 9, 'Official roomaji');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (3, 1, '???');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (3, 9, 'Korean');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (4, 1, '???');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (4, 9, 'Chinese');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (5, 1, '?????');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (5, 9, 'French');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (6, 1, '????');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (6, 9, 'German');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (7, 1, '??');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (7, 9, 'Spanish');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (8, 1, '??');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (8, 9, 'Italian');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (9, 1, '??');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (9, 9, 'English');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (10, 1, '????');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (10, 9, 'Czech');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (4, 10, '?ínština');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (5, 10, 'Francouzština');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (3, 10, 'Korejština');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (6, 10, 'N?m?ina');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (8, 10, 'Italština');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (9, 10, 'Angli?tina');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (7, 10, 'Špan?lština');
INSERT INTO [language_names] ([language_id], [local_language_id], [name]) VALUES (1, 10, 'Japonština');
