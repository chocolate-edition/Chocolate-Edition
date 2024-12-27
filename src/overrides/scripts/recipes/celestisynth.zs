// Supernal Netherite
smithing.addRecipe("supernal_netherite_ingot", <item:celestisynth:supernal_netherite_ingot>, <item:minecraft:netherite_ingot>, <item:celestisynth:celestial_core_heated>);

// Celestial Netherite
craftingTable.addShaped("celestial_netherite_ingot",<item:celestisynth:celestial_netherite_ingot>,[
	[<item:epicsamurai:ruby>,<item:enigmaticlegacy:etherium_ingot>,<item:epicsamurai:aquamarine>],
	[<item:celestisynth:solar_crystal>,<item:celestisynth:supernal_netherite_ingot>,<item:celestisynth:lunar_scrap>],
	[<item:epicsamurai:jade>,<item:minecraft:diamond>,<item:epicsamurai:onyx>]
]);

// Lunar Scrap Crushing
<recipetype:create:crushing>.addRecipe("lunar_scrap", [<item:celestisynth:lunar_scrap> % 50, <item:celestisynth:lunar_scrap>, (<item:minecraft:lapis_lazuli> * 4) % 75, (<item:blue_skies:moonstone_shard> * 2) % 12], <item:celestisynth:lunar_stone> * 3, 1000);

// Celestial Core Heating
<recipetype:create:compacting>.addRecipe("superheating_celestial_core", <constant:create:heat_condition:superheated>, [<item:celestisynth:celestial_core_heated>], [<item:celestisynth:celestial_core>, <item:celestisynth:solar_crystal> * 4, <item:celestisynth:zephyr_deposit> * 16], [<fluid:minecraft:lava>], 1000);