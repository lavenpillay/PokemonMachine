
-- Table: version_group_regions
CREATE TABLE version_group_regions ( 
    version_group_id INTEGER NOT NULL,
    region_id        INTEGER NOT NULL,
    PRIMARY KEY ( version_group_id, region_id ),
    FOREIGN KEY ( version_group_id ) REFERENCES version_groups ( id ),
    FOREIGN KEY ( region_id ) REFERENCES regions ( id ) 
);

INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (1, 1);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (2, 1);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (3, 1);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (3, 2);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (4, 1);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (4, 2);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (5, 3);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (6, 3);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (7, 1);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (8, 4);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (9, 4);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (10, 1);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (10, 2);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (11, 5);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (14, 5);
INSERT INTO [version_group_regions] ([version_group_id], [region_id]) VALUES (15, 6);
