
-- Table: generations
CREATE TABLE generations ( 
    id             INTEGER        NOT NULL,
    main_region_id INTEGER        NOT NULL,
    identifier     VARCHAR( 79 )  NOT NULL,
    PRIMARY KEY ( id ),
    FOREIGN KEY ( main_region_id ) REFERENCES regions ( id ) 
);

INSERT INTO [generations] ([id], [main_region_id], [identifier]) VALUES (1, 1, 'generation-i');
INSERT INTO [generations] ([id], [main_region_id], [identifier]) VALUES (2, 2, 'generation-ii');
INSERT INTO [generations] ([id], [main_region_id], [identifier]) VALUES (3, 3, 'generation-iii');
INSERT INTO [generations] ([id], [main_region_id], [identifier]) VALUES (4, 4, 'generation-iv');
INSERT INTO [generations] ([id], [main_region_id], [identifier]) VALUES (5, 5, 'generation-v');
INSERT INTO [generations] ([id], [main_region_id], [identifier]) VALUES (6, 6, 'generation-vi');
