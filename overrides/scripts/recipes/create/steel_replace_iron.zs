// Recipes that have been replaced with steel components


// ----- Mechanical Harvester -----
craftingTable.addShaped("steel_harvester",<item:create:mechanical_harvester>,[
	[<item:create:andesite_alloy>,<tag:items:forge:ingots/steel>,<item:create:andesite_alloy>],
	[<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>],
	[<item:create:andesite_alloy>,<item:create:andesite_casing>,<item:create:andesite_alloy>]
]);

// ----- Mechanical Roller -----
craftingTable.addShaped("steel_roller",<item:create:mechanical_roller>,[
	[<item:create:andesite_alloy>,<tag:items:forge:ingots/steel>,<item:create:andesite_alloy>],
	[<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>],
	[<item:create:andesite_alloy>,<item:create:andesite_casing>,<item:create:andesite_alloy>]
]);

// ----- Mechanical Plough -----
craftingTable.addShaped("steel_plough",<item:create:mechanical_plough>,[
	[<item:create:andesite_alloy>,<item:create:electron_tube>,<item:create:andesite_alloy>],
	[<tag:items:forge:ingots/steel>,<item:create:andesite_casing>,<tag:items:forge:ingots/steel>],
	[<item:create:andesite_alloy>,<item:create:crushing_wheel>,<item:create:andesite_alloy>]
]);

// ----- Mechanical Drill -----
craftingTable.addShaped("steel_drill",<item:create:mechanical_drill>,[
	[<item:minecraft:air>,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
	[<item:create:andesite_alloy>,<tag:items:forge:ingots/steel>,<item:create:andesite_alloy>],
	[<tag:items:forge:ingots/steel>,<item:create:andesite_casing>,<tag:items:forge:ingots/steel>]
]);

// ----- Mechanical Saw -----
craftingTable.addShaped("steel_saw",<item:create:mechanical_saw>,[
	[<item:create:iron_sheet>,<tag:items:forge:ingots/steel>,<item:create:iron_sheet>],
	[<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>],
	[<item:minecraft:air>,<item:create:andesite_casing>,<item:minecraft:air>]
]);

// ----- Chute -----
craftingTable.addShaped("chute",<item:create:chute>,[
	[<item:minecraft:air>,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
	[<item:create:iron_sheet>,<tag:items:forge:ingots/steel>,<item:create:iron_sheet>],
	[<item:minecraft:air>,<item:create:iron_sheet>,<item:minecraft:air>]
]);

// ----- Portable Storage Interface -----
craftingTable.addShaped("steel_portable_storage_interface",<item:create:portable_storage_interface>,[
	[<item:create:andesite_alloy>,<tag:items:forge:ingots/steel>,<item:create:andesite_alloy>],
	[<tag:items:forge:ingots/steel>,<item:create:chute>,<tag:items:forge:ingots/steel>],[
	<item:create:andesite_alloy>,<item:create:andesite_casing>,<item:create:andesite_alloy>]
]);

// ----- Schematicannon -----
craftingTable.addShaped("steel_schematicannon",<item:create:schematicannon>,[
	[<item:create:andesite_alloy>,<item:epicsamurai:steel_block>,<item:create:andesite_alloy>],
	[<tag:items:forge:stripped_logs>,<item:epicsamurai:steel_block>,<tag:items:forge:stripped_logs>],
	[<item:create:andesite_alloy_block>,<item:minecraft:dispenser>,<item:create:andesite_alloy_block>]
]);
