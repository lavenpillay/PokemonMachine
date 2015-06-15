BEGIN; 

CREATE TABLE "pokemon_megaevolution"(
	"pokemon_id" Integer PRIMARY KEY AUTOINCREMENT,
	"megastone_item_id" Integer );

-- Create property layout
INSERT INTO sqlite_vs_properties( parentType, parentName, propertyName, propertyValue ) VALUES ( 'table','"pokemon_megaevolution"','layout','<?xml version="1.0" encoding="utf-8"?>
<properties>
	<Default>
		<FilterFavorite value=""/>
		<FilterRecent value=""/>
		<Pictures value="0"/>
		<Widths value="bWVnYXN0b25lX2l0ZW1faWQ= 123
cG9rZW1vbl9pZA== 89
"/>
	</Default>
</properties>

');

END; 