import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.EntityInteractEvent;
import crafttweaker.api.util.InteractionHand;
import crafttweaker.api.text.Component;
import mods.gamestages.StageHelper;
import mods.gamestages.events.GameStageAdded;
import mods.gamestages.events.GameStageRemoved;
import mods.gamestages.events.GameStageCleared;
import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import mods.dimstages.DimensionStages;
import crafttweaker.api.advancement.Advancement;
import mods.jeitweaker.Jei;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;
import crafttweaker.api.game.Server;
import crafttweaker.api.world.ServerLevel;

#priority -10

// Crafting Table and Eye stages moved to FTB Quests

var eyesArray = [
	"witch_eye",
	"magical_eye",
	"rogue_eye",
	"evil_eye",
	"cursed_eye",
	"corrupted_eye",
	"cold_eye",
	"old_eye",
	"lost_eye",
	"nether_eye",
	"guardian_eye",
	"undead_eye",
	"exotic_eye",
	"cryptic_eye",
	"black_eye",
	"wither_eye"
] as string[];

CTEventManager.register<GameStageAdded>((event) => {
  var count = 0;
	// counts the eyes lol
	for eye in eyesArray {
		if(event.player.hasGameStage(eye)) {count++;}
	}
	 
	if (count==16 && !event.player.hasGameStage("five")){
   	event.player.sendMessage("§oyou feel the sudden urge to look in your quest book");
  }
	else if (count==12 && !event.player.hasGameStage("four")){
		event.player.sendMessage("§oyou feel the sudden urge to look in your quest book");
	}
	else if (count==9 && !event.player.hasGameStage("three")){
		event.player.sendMessage("§oyou feel the sudden urge to look in your quest book");
	}
	else if (count==6 && !event.player.hasGameStage("two")){
		event.player.sendMessage("§oyou feel the sudden urge to look in your quest book");
	}
	else if (count==3 && !event.player.hasGameStage("one")){
		event.player.sendMessage("§oyou feel the sudden urge to look in your quest book");
	}
	else if (count == 0 && event.player.hasGameStage("firstcontact")){
		event.player.sendMessage("§bTo get started, open the questbook by clicking §6` §bor by clicking the §6icon in the top left of your inventory screen §band read the welcome page!");
	}
		

	// separated loop from eye count bc i need the count to be completed BEFORE the command starts spitting out your eye count
	for eye in eyesArray {
	if(event.stage == eye)
		if (count!=16)
			event.player.sendMessage("§dYou have collected §b" + count + "§d of the Eyes.");
		else
			event.player.sendMessage("§dYou have collected §ball§d of the Eyes.");
	}
});
// shittily coded arrays and loops courtesy of yours truly guyperson1 



// --------------------------------------------------- ITEM STAGE ONE ------------------------------------------------------------------//
var itemsStageOne = [
	<item:aquaculture:neptunium_axe>,
	<item:aquaculture:neptunium_block>,
	<item:aquaculture:neptunium_boots>,
	<item:aquaculture:neptunium_bow>,
	<item:aquaculture:neptunium_chestplate>,
	<item:aquaculture:neptunium_fillet_knife>,
	<item:aquaculture:neptunium_fishing_rod>,
	<item:aquaculture:neptunium_helmet>,
	<item:aquaculture:neptunium_hoe>,
	<item:aquaculture:neptunium_ingot>,
	<item:aquaculture:neptunium_leggings>,
	<item:aquaculture:neptunium_nugget>,
	<item:aquaculture:neptunium_pickaxe>,
	<item:aquaculture:neptunium_shovel>,
	<item:aquaculture:neptunium_sword>,
	<item:predators:earthbreaker>,
	<item:predators:wave_of_abyss>,
	<item:predators:weathering>,
	<item:predators:prisblade>,
	<item:predators:sultan_of_fegefeuer>,
	<item:predators:huntsmans_spear>,
	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:copper_backpack>,
	<item:sophisticatedbackpacks:iron_backpack>,
	<item:sophisticatedbackpacks:stack_upgrade_starter_tier>,
	<item:sophisticatedbackpacks:anvil_upgrade>,
	<item:sophisticatedbackpacks:filter_upgrade>,
	<item:sophisticatedbackpacks:advanced_filter_upgrade>,
	<item:sophisticatedbackpacks:restock_upgrade>,
	<item:sophisticatedbackpacks:refill_upgrade>,
	<item:sophisticatedbackpacks:advanced_refill_upgrade>,
	<item:sophisticatedbackpacks:smelting_upgrade>,	
	<item:sophisticatedbackpacks:auto_smelting_upgrade>,	
	<item:sophisticatedbackpacks:smoking_upgrade>,	
	<item:sophisticatedbackpacks:auto_smoking_upgrade>,	
	<item:sophisticatedbackpacks:blasting_upgrade>,	
	<item:sophisticatedbackpacks:auto_blasting_upgrade>,

	//--//---------------------------------------------------- create automation --------------------------------------------------------------//--//
	<item:create:mechanical_drill>,
	<item:create:mechanical_harvester>,
	<item:create:mechanical_saw>,
	<item:create:portable_storage_interface>,
	<item:create:cart_assembler>,
	<item:create:linked_controller>,
	<item:create:redstone_link>,

	//--//---------------------------------------------------- tetra scrolls --------------------------------------------------------------//--//
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:single/head/mace_head/mace_head"], ribbon: "560060", glyphs: [9, 3, 6, 2], details: "art_of_forging", key: "single/head/mace_head/mace_head"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:utilize/hammer"], ribbon: "fa97e9", details: "art_of_forging", glyphs: [1, 15, 12, 8], key: "utilize/hammer"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:bow/string/compound_string", "tetra:crossbow/string/compound_cross_string"], ribbon: "19e588", glyphs: [15, 13, 12, 14], details: "art_of_forging", key: "bow/string/compound_string"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/key_guard"], ribbon: "fae409", glyphs: [0, 1, 9, 4], details: "art_of_forging", key: "sword/key_guard"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:bow/stave/dreadnought_stave", "tetra:bow/stave/dreadnought_cross_stave"], ribbon: "f3b31f", glyphs: [8, 1, 9, 5], details: "art_of_forging", key: "bow/stave/dreadnought_stave"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:single/head/halberd_head/halberd_head"], ribbon: "444aff", glyphs: [8, 1, 4, 5], details: "art_of_forging", key: "single/head/halberd_head/halberd_head"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/howling"], ribbon: "faf396", glyphs: [8, 9, 10, 5], key: "sword/howling"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/throwing_knife"], ribbon: "b8ced9", glyphs: [4, 1, 0, 5], key: "sword/throwing_knife"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/sturdy_guard"], ribbon: "bcb8b5", glyphs: [3, 2, 2, 1], key: "sword/sturdy_guard"}]}}),
];


// --------------------------------------------------- ITEM STAGE TW0 ------------------------------------------------------------------//
var itemsStageTwo = [
	<item:wstweaks:blaze_blade>,
	<item:wstweaks:lava_blade>,
	<item:minecraft:wither_skeleton_skull>,
	<item:minecraft:netherite_axe>,
	<item:minecraft:netherite_block>,
	<item:minecraft:netherite_boots>,
	<item:minecraft:netherite_chestplate>,
	<item:minecraft:netherite_helmet>,
	<item:minecraft:netherite_hoe>,
	<item:minecraft:netherite_ingot>,
	<item:minecraft:netherite_leggings>,
	<item:epicsamurai:netherite_samurai_boots>,
	<item:epicsamurai:netherite_samurai_chestplate>,
	<item:epicsamurai:netherite_samurai_helmet>,
	<item:epicsamurai:netherite_samurai_leggings>,
	<item:farmersdelight:netherite_knife>,
	<item:minecraft:netherite_pickaxe>,
	<item:minecraft:netherite_scrap>,
	<item:minecraft:netherite_shovel>,
	<item:minecraft:netherite_sword>,
	<item:create:netherite_backtank>,
	<item:create:netherite_diving_boots>,
	<item:create:netherite_diving_helmet>,
	<item:iter_rpg:netherite_flail>,
	<item:iter_rpg:netherite_scythe>,
	<item:meetyourfight:bone_raker>,
	<item:meetyourfight:cocktail_cutlass>,
	<item:meetyourfight:blossoming_mind>,
	<item:meetyourfight:spectres_grasp>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_boots>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_leggings>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_chestplate>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_helmet>,

	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:gold_backpack>,
	<item:sophisticatedbackpacks:compacting_upgrade>,
	<item:sophisticatedbackpacks:advanced_compacting_upgrade>,
	<item:sophisticatedbackpacks:tool_swapper_upgrade>,
	<item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>,
	<item:sophisticatedbackpacks:magnet_upgrade>,
	<item:sophisticatedbackpacks:advanced_magnet_upgrade>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_1>,
	//--//---------------------------------------------------- tetra scrolls --------------------------------------------------------------//--//
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/katana/katana_blade"], ribbon: "dbff10", details: "art_of_forging", glyphs: [5, 10, 13, 2], key: "sword/katana/katana_blade"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/crucible_blade"], ribbon: "ff1e00", glyphs: [8, 7, 9, 2], details: "art_of_forging", key: "tetra/crucible_blade"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/flamberge_blade"], ribbon: "ff9612", details: "art_of_forging", glyphs: [6, 15, 4, 7], key: "tetra/flamberge_blade"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/rending_scissor_red", "tetra:sword/rending_scissor_purple"], ribbon: "e32182", details: "otherworldly", glyphs: [1, 15, 2, 13], key: "tetra/rending_scissor_purple"}]}}),
];



// --------------------------------------------------- ITEM STAGE THREE ------------------------------------------------------------------//
var itemsStageThree = [
	<item:infusion_table:infusion_table>,
	<item:born_in_chaos_v1:dark_metal_armor_helmet>,
	<item:born_in_chaos_v1:dark_metal_armor_chestplate>,
	<item:born_in_chaos_v1:dark_metal_armor_leggings>,
	<item:born_in_chaos_v1:dark_metal_armor_boots>,
	<item:born_in_chaos_v1:sharpened_dark_metal_sword>,
	<item:born_in_chaos_v1:soul_cutlass>,
	<item:born_in_chaos_v1:intoxicating_dagger>,
	<item:born_in_chaos_v1:great_reaper_axe>,
	<item:born_in_chaos_v1:darkwarblade>,
	<item:born_in_chaos_v1:spiritual_sword>,
	<item:born_in_chaos_v1:nightmare_scythe>,
	<item:born_in_chaos_v1:skullbreaker_hammer>,
	<item:born_in_chaos_v1:trident_hayfork>,
	<item:born_in_chaos_v1:dark_ritual_dagger>,
	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:diamond_backpack>,
	<item:sophisticatedbackpacks:feeding_upgrade>,
	<item:sophisticatedbackpacks:advanced_feeding_upgrade>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_2>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_3>,
	
	//--//---------------------------------------------------- tetra scrolls --------------------------------------------------------------//--//
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/katana/murasama_blade"], ribbon: "c52323", details: "otherworldly", glyphs: [6, 7, 13, 15], key: "sword/katana/murasama_blade"}]}}),
];



// --------------------------------------------------- ITEM STAGE FOUR ------------------------------------------------------------------//
var itemsStageFour = [
	<item:cataclysm:infernal_forge>,
	<item:cataclysm:tidal_claws>,
	<item:cataclysm:monstrous_helm>,
	<item:cataclysm:gauntlet_of_guard>,
	<item:cataclysm:wither_assault_shoulder_weapon>,
	<item:aquamirae:poseidons_breakfast>,
	<item:aquamirae:coral_lance>.withTag({Enchantments: [{lvl: 4, id: "minecraft:unbreaking"}]}),
	<item:aquamirae:whisper_of_the_abyss>,
	<item:aquamirae:divider>,
	<item:aquamirae:abyssal_amethyst>,
	<item:aquamirae:abyssal_boots>,
	<item:aquamirae:abyssal_brigantine>,
	<item:aquamirae:abyssal_heaume>,
	<item:aquamirae:abyssal_leggings>,
	<item:aquamirae:abyssal_tiara>,
	<item:aquamirae:maze_rose>,
	<item:aquamirae:abyssal_leggings>,
	<item:mutantmonsters:endersoul_hand>,
	<item:enlightened_end:adamantite_armor_boots>,
	<item:enlightened_end:adamantite_armor_chestplate>,
	<item:enlightened_end:adamantite_armor_helmet>,
	<item:enlightened_end:adamantite_armor_leggings>,
	<item:enlightened_end:adamantite_axe>,
	<item:enlightened_end:adamantite_hoe>,
	<item:enlightened_end:adamantite_ingot>,
	<item:enlightened_end:adamantite_pickaxe>,
	<item:enlightened_end:adamantite_shovel>,
	<item:enlightened_end:adamantite_sword>,
	<item:majruszsdifficulty:enderium_sword>,
	<item:majruszsdifficulty:enderium_hoe>,
	<item:majruszsdifficulty:enderium_shovel>,
	<item:majruszsdifficulty:enderium_pickaxe>,
	<item:majruszsdifficulty:enderium_axe>,
	<item:majruszsdifficulty:enderium_helmet>,
	<item:majruszsdifficulty:enderium_chestplate>,
	<item:majruszsdifficulty:enderium_leggings>,
	<item:majruszsdifficulty:enderium_boots>,
	<item:meetyourfight:passages_toll>,
	<item:meetyourfight:ace_of_iron>,
	<item:meetyourfight:caged_heart>,
	<item:meetyourfight:twilights_thorn>,
	<item:enigmaticlegacy:etherium_helmet>,
	<item:enigmaticlegacy:etherium_chestplate>,
	<item:enigmaticlegacy:etherium_leggings>,
	<item:enigmaticlegacy:etherium_boots>,
	<item:enigmaticlegacy:etherium_ingot>,
	<item:enigmaticlegacy:etherium_pickaxe>,
	<item:enigmaticlegacy:etherium_axe>,
	<item:enigmaticlegacy:etherium_shovel>,
	<item:enigmaticlegacy:etherium_sword>,
	<item:enigmaticlegacy:etherium_scythe>,
	<item:graveyard:cyan_bone_staff>,
	<item:graveyard:red_bone_staff>,
	<item:graveyard:white_bone_staff>,
	<item:graveyard:black_bone_staff>,
	<item:graveyard:purple_bone_staff>,
	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:netherite_backpack>,
	<item:sophisticatedbackpacks:xp_pump_upgrade>,
	<item:sophisticatedbackpacks:everlasting_upgrade>,
	<item:sophisticatedbackpacks:inception_upgrade>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_4>,
];



// --------------------------------------------------- ITEM STAGE FIVE ------------------------------------------------------------------//
var itemsStageFive = [
	<item:cataclysm:meat_shredder>,
	<item:cataclysm:laser_gatling>,
	<item:cataclysm:ignitium_elytra_chestplate>,
	<item:cataclysm:ignitium_boots>,
	<item:cataclysm:ignitium_helmet>,
	<item:cataclysm:ignitium_leggings>,
	<item:cataclysm:ignitium_chestplate>,
	<item:alexsmobs:tarantula_hawk_elytra>,
	<item:cataclysm:the_incinerator>,
	<item:cataclysm:bulwark_of_the_flame>,
	<item:cataclysm:gauntlet_of_bulwark>,
	<item:cataclysm:void_assault_shoulder_weapon>,
	<item:cataclysm:void_forge>,
	<item:cataclysm:ignitium_ingot>,
	<item:cataclysm:witherite_ingot>,
	<item:celestisynth:rainfall_serenity>,
	<item:celestisynth:solaris>,
	<item:celestisynth:crescentia>,
	<item:celestisynth:aquaflora>,
	<item:celestisynth:poltergeist>,
	<item:celestisynth:breezebreaker>,
	<item:alexsmobs:dimensional_carver>
];

// --------------------------------------------------- CURSED (DISABLED) ITEMS ------------------------------------------------------------------//

var itemsCursed = [
	<item:enigmaticlegacy:cursed_ring>,
	<item:enigmaticlegacy:recall_potion>,
	<item:enigmaticlegacy:end_anchor>,
	<item:enigmaticlegacy:the_infinitum>,
	<item:enigmaticlegacy:avarice_scroll>,
	<item:enigmaticlegacy:cursed_scroll>,
	<item:enigmaticlegacy:darkest_scroll>,
	<item:enigmaticlegacy:cosmic_scroll>,
	<item:enigmaticlegacy:evil_essence>,
	<item:enigmaticlegacy:evil_ingot>,
	<item:enigmaticlegacy:eldritch_amulet>,
	<item:enigmaticlegacy:soul_compass>,
	<item:enigmaticlegacy:astral_fruit>,
	<item:enigmaticlegacy:ender_slayer>,
	<item:enigmaticlegacy:cursed_stone>,
	<item:enigmaticlegacy:twisted_heart>,
	<item:enigmaticlegacy:guardian_heart>,
	<item:enigmaticlegacy:berserk_charm>,
	<item:enigmaticlegacy:twisted_mirror>,
	<item:enigmaticlegacy:curse_transposer>,
	<item:enigmaticlegacy:twisted_potion>,
	<item:enigmaticlegacy:infernal_shield>,
	<item:enigmaticlegacy:enchanter_pearl>,
	<item:enigmaticlegacy:abyssal_heart>,
	<item:enigmaticlegacy:desolation_ring>,
	<item:enigmaticlegacy:the_twist>,
	<item:enigmaticlegacy:soul_crystal>
];


//Eye gates


//Stage gates
for item in itemsStageOne {
	ItemStages.restrict(item.anyDamage(), "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§4You need at least 3 eyes to use this item");
	<tag:items:chocolate:stage_one_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("one", item);
}

for item in itemsStageTwo {
	ItemStages.restrict(item.anyDamage(), "two").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§4You need at least 6 eyes to use this item");
	<tag:items:chocolate:stage_two_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("two", item);
}

for item in itemsStageThree {
	ItemStages.restrict(item.anyDamage(), "three").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§4You need at least 9 eyes to use this item");
	<tag:items:chocolate:stage_three_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("three", item);
}

for item in itemsStageFour {
	ItemStages.restrict(item.anyDamage(), "four").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§4You need at least 12 eyes to use this item");
	<tag:items:chocolate:stage_four_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("four", item);
}

for item in itemsStageFive {
	ItemStages.restrict(item.anyDamage(), "five").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§4You need all 16 eyes to use this item");
	<tag:items:chocolate:stage_five_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("five", item);
}

for item in itemsCursed {
	ItemStages.restrict(item.anyDamage(), "enigma").preventInventory(false).preventPickup(false).hiddenName("§cEnigmatic Item");
	craftingTable.remove(item);
}

/* gotta figure this out for later
var stages = ["one", "two", "three", "four", "five"] as string[];
var stagedItemArrays = [itemsStageOne, itemsStageTwo, itemsStageThree, itemsStageFour, itemsStageFive];

for index, itemArray in stagedItemArrays {
	for item in itemArray {
		ItemStages.restrict(item.anyDamage(), stages[index]).preventInventory(false).preventPickup(false).setHiddenInJEI(false);
		mods.recipestages.Recipes.setRecipeStage(stages[index], item);
	}
}
*/


ItemStages.createModRestriction("witherstormmod", "five").preventInventory(false).preventPickup(false).hiddenName("§cUnsettling Item");
Jei.hideModIngredients("witherstormmod", path => false);
mods.recipestages.Recipes.setRecipeStageByMod("five", "witherstormmod");
for item in loadedMods["witherstormmod"].getItemStacks() {
	<tag:items:chocolate:stage_five_item>.add(item);
}

DimensionStages.stageDimensionWithMessage("minecraft:the_nether","The Nether requires 3 eyes worth of power to enter...", "one");
DimensionStages.stageDimensionWithMessage("blue_skies:everbright","The Everbright requires 6 eyes worth of power to enter...", "two");
DimensionStages.stageDimensionWithMessage("blue_skies:everdawn","The Everdawn requires 6 eyes worth of power to enter...", "two");
DimensionStages.stageDimensionWithMessage("minecraft:the_end", "The End requires 12 eyes worth of power, come back later...", "four");
DimensionStages.stageDimensionWithMessage("javd:void", "The Nexus requires 16 eyes worth of power, come back n e v e r...", "four");


ItemStages.restrict(<item:luphieclutteredmod:luphie_ancient_codex>, "disabled").preventInventory(false).preventPickup(false).setHiddenInJEI(true).hiddenName("§cDisabled Item");
ItemStages.restrict(<item:unusualprehistory:encyclopedia>, "disabled").preventInventory(false).preventPickup(false).setHiddenInJEI(true).hiddenName("§cDisabled Item");
ItemStages.restrict(<item:supplementaries:sack>, "disabled").preventInventory(false).preventPickup(false).setHiddenInJEI(true).hiddenName("§cDisabled Item");
ItemStages.restrict(<item:iter_rpg:nightfall>, "disabled").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§cDisabled Item");
ItemStages.restrict(<item:alexsmobs:transmutation_table>, "disabled").preventInventory(false).preventPickup(false).setHiddenInJEI(true).hiddenName("§cDisabled Item");

// hide create automated shaped crafting from jei so people dont think they can make gated items using mechanical crafters
Jei.hideCategory(<resource:create:automatic_shaped>);

// allow crafting of gated items using the crafting terminal
mods.recipestages.Recipes.setPackageStages("com.tom.storagemod", ["one","two", "three", "four", "five"]);
