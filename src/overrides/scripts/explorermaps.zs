#priority -1
import crafttweaker.api.recipe.type.BlastingRecipe;
import crafttweaker.api.entity.attribute.AttributeOperation;
import mods.jeitweaker.Jei;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;
import mods.create.DeployerApplicationManager;
import crafttweaker.api.recipe.type.BlastingRecipe;
import crafttweaker.api.entity.attribute.AttributeOperation;
import mods.jeitweaker.Jei;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;
import mods.create.DeployerApplicationManager;
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
import crafttweaker.api.entity.attribute.AttributeInstance;

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;

recipes.removeByName("structurecompassfix:structure_compass");
// <item:structurecompassfix:structure_compass>.removeTooltip("can not be located");
// <item:structurecompassfix:structure_compass>.removeTooltip("has been located");
craftingTable.addShaped("deepdarkexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:ancient_city"],  display: {Lore: ["[{\"text\":\"★★★ - Finds a rare \",\"bold\":true,\"italic\":false,\"color\":\"yellow\"},{\"text\":\"askdflsajfl\",\"bold\":true,\"italic\":false,\"color\":\"yellow\",\"obfuscated\":true},{\"text\":\" structure.\",\"bold\":true,\"italic\":false,\"color\":\"yellow\"}]"], Name: "[{\"text\":\"Deep Dark Explorer Compass\",\"bold\":true,\"italic\":false,\"color\":\"dark_blue\"}]"}}), 
[[<item:minecraft:sculk>,<item:minecraft:compass>,<item:minecraft:sculk>],
[<item:galosphere:allurite_shard>,<item:unusualend:gilded_pearl>,<item:galosphere:lumiere_shard>],
[<item:minecraft:sculk>,<item:minecraft:amethyst_shard>,<item:minecraft:sculk>]]);

craftingTable.addShaped("banditexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:bandit_towers"], display:{Name:'[{"text":"Bandit Explorer Compass","bold":true,"color":"gold"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:cataclysm:ancient_metal_ingot>,<item:minecraft:compass>,<item:unusualprehistory:opalescent_pearl>],
[<item:minecraft:enchanted_golden_apple>,<item:unusualend:gilded_pearl>,<item:supplementaries:goblet>],
[<item:unusualprehistory:opalescent_pearl>,<item:meetyourfight:devils_ante>,<item:cataclysm:ancient_metal_ingot>]]);

<tag:items:chocolate:waterlilies>.add(<item:cnb:pink_waterlily>);
<tag:items:chocolate:waterlilies>.add(<item:cnb:light_pink_waterlily>);
<tag:items:chocolate:waterlilies>.add(<item:cnb:yellow_waterlily>);
<tag:items:chocolate:catfishies>.add(<item:alexsmobs:small_catfish_bucket>);
<tag:items:chocolate:catfishies>.add(<item:alexsmobs:medium_catfish_bucket>);
<tag:items:chocolate:catfishies>.add(<item:alexsmobs:large_catfish_bucket>);


craftingTable.addShaped("thornbornexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:thornborn_towers"], display:{Name:'[{"text":"Thornborn Explorer Compass","bold":true,"color":"dark_green"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<tag:items:chocolate:waterlilies>,<item:minecraft:compass>,<tag:items:chocolate:waterlilies>],
[<item:supplementaries:slingshot>.anyDamage(),<item:unusualend:gilded_pearl>,<tag:items:chocolate:catfishies>],
[<item:alexsmobs:spiked_scute>,<item:meetyourfight:fossil_bait>.reuse(),<item:naturalist:reptile_hide>]]);

<tag:items:chocolate:geckos>.add(<item:cnb:lizard_item_mushroom>);
<tag:items:chocolate:geckos>.add(<item:cnb:lizard_item_desert>);
<tag:items:chocolate:geckos>.add(<item:cnb:lizard_item_desert_2>);
<tag:items:chocolate:geckos>.add(<item:cnb:lizard_item_jungle>);
<tag:items:chocolate:geckos>.add(<item:cnb:lizard_item_jungle_2>);


craftingTable.addShaped("kayraexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:keep_kayra"], display:{Name:'[{"text":"Kayra Explorer Compass","bold":true,"color":"green"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:epicsamurai:ruby>,<item:minecraft:compass>,<item:epicsamurai:aquamarine>],
[<item:quark:ancient_tome>,<item:unusualend:gilded_pearl>,<item:quark:ancient_tome>],
[<item:epicsamurai:jade>,<tag:items:chocolate:geckos>,<item:epicsamurai:onyx>]]);


craftingTable.addShaped("scorchedminesexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:scorched_mines"], display:{Name:'[{"text":"Scorched Mines Explorer Compass","bold":true,"color":"red"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:epicsamurai:ruby>,<item:minecraft:compass>,<item:epicsamurai:aquamarine>],
[<item:iter_rpg:magmanum_chunk>,<item:unusualend:gilded_pearl>,<item:iter_rpg:magmanum_chunk>],
[<item:epicsamurai:jade>,<item:minecraft:netherite_scrap>,<item:epicsamurai:onyx>]]);

craftingTable.addShaped("conjurerexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["conjurer_illager:theatre"], display:{Name:'[{"text":"Conjurer Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:emerald>,<item:minecraft:compass>,<item:minecraft:emerald>],
[<item:atmospheric:watchful_aspen_log>,<item:unusualend:gilded_pearl>,<item:atmospheric:watchful_aspen_log>],
[<item:minecraft:emerald>,<item:minecraft:diamond>,<item:minecraft:emerald>]]);

craftingTable.addShaped("deserttempleexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["betterdeserttemples:desert_temple"], display:{Name:'[{"text":"Desert Temple Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:gold_ingot>,<item:minecraft:compass>,<item:minecraft:gold_ingot>],
[<item:quark:cactus_block>,<item:unusualend:gilded_pearl>,<item:atmospheric:barrel_cactus_batch>],
[<item:minecraft:gold_ingot>,<item:alexsmobs:roadrunner_feather>,<item:minecraft:gold_ingot>]]);

craftingTable.addShaped("jungletempleexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["betterjungletemples:jungle_temple"], display:{Name:'[{"text":"Jungle Temple Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:galosphere:silver_ingot>,<item:minecraft:compass>,<item:galosphere:silver_ingot>],
[<item:atmospheric:passion_vine_coil>,<item:unusualend:gilded_pearl>,<tag:items:forge:rope>],
[<item:galosphere:silver_ingot>,<item:minecraft:redstone_block>,<item:galosphere:silver_ingot>]]);

craftingTable.addShaped("plainsvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:plains_v"], display:{Name:'[{"text":"Plains Village Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:allium>,<item:minecraft:compass>,<item:minecraft:cornflower>],
[<item:minecraft:poppy>,<item:unusualend:gilded_pearl>,<item:minecraft:dandelion>],
[<item:minecraft:azure_bluet>,<item:bakery:strawberry>,<item:minecraft:oxeye_daisy>]]);

<tag:items:chocolate:blossoms>.add(<item:quark:blue_blossom_sapling>);
<tag:items:chocolate:blossoms>.add(<item:quark:lavender_blossom_sapling>);
<tag:items:chocolate:blossoms>.add(<item:quark:orange_blossom_sapling>);
<tag:items:chocolate:blossoms>.add(<item:quark:pink_blossom_sapling>);
<tag:items:chocolate:blossoms>.add(<item:quark:yellow_blossom_sapling>);
<tag:items:chocolate:blossoms>.add(<item:quark:red_blossom_sapling>);

craftingTable.addShaped("forestvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:forest_v"], display:{Name:'[{"text":"Forest Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:autumnity:maple_sapling>,<item:minecraft:compass>,<tag:items:chocolate:blossoms>],
[<item:minecraft:apple>,<item:unusualend:gilded_pearl>,<item:atmospheric:orange>],
[<item:minecraft:birch_sapling>,<item:delightful:acorn>,<item:minecraft:oak_sapling>]]);

craftingTable.addShaped("desertvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:desert_v"], display:{Name:'[{"text":"Desert Village Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:sand>,<item:minecraft:compass>,<item:atmospheric:arid_sand>],
[<item:unusualprehistory:petrified_wood_log>,<item:unusualend:gilded_pearl>,<item:unusualprehistory:petrified_wood_log>],
[<item:atmospheric:yucca_fruit>,<item:minecraft:cactus>,<item:ecologics:prickly_pear>]]);

craftingTable.addShaped("swampvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:swamp_v"], display:{Name:'[{"text":"Swamp Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:mud>,<item:minecraft:compass>,<item:minecraft:mud>],
[<item:crittersandcompanions:dragonfly_wing>,<item:unusualend:gilded_pearl>,<item:alexsmobs:crocodile_scute>],
[<item:environmental:willow_sapling>,<item:environmental:cattail>,<item:minecraft:mangrove_propagule>]]);

craftingTable.addShaped("icevillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:snowy_v"], display:{Name:'[{"text":"Snowy Village Explorer Compass","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:blue_ice>,<item:minecraft:compass>,<item:minecraft:blue_ice>],
[<item:alexsmobs:moose_antler>,<item:unusualend:gilded_pearl>,<item:aquamirae:wisteria_niveis>],
[<item:minecraft:powder_snow_bucket>.reuse(),<item:minecraft:campfire>,<item:minecraft:powder_snow_bucket>.reuse()]]);

craftingTable.addShaped("junglevillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:jungle_v"], display:{Name:'[{"text":"Jungle Village Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:cocoa_beans>,<item:minecraft:compass>,<item:minecraft:cocoa_beans>],
[<item:minecraft:jungle_sapling>,<item:unusualend:gilded_pearl>,<item:atmospheric:rosewood_sapling>],
[<item:minecraft:vine>,<item:atmospheric:currant>,<item:atmospheric:passion_vine>]]);

craftingTable.addShaped("mesavillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mesa_v"], display:{Name:'[{"text":"Mesa Village Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:red_sand>,<item:minecraft:compass>,<item:atmospheric:red_arid_sand>],
[<item:alexsmobs:frontier_cap>,<item:unusualend:gilded_pearl>,<item:alexsmobs:maraca>],
[<item:minecraft:gunpowder>,<item:alexsmobs:kangaroo_burger>,<item:minecraft:gunpowder>]]);

<tag:items:chocolate:sigma>.add(<item:minecraft:waxed_weathered_cut_copper_slab>);
<tag:items:chocolate:sigma>.add(<item:cataclysm:final_fractal>);


craftingTable.addShaped("mushroomvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mushroom_v"], display:{Name:'[{"text":"Mushroom Village(heaven) Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★★★★★★★★★★ - Hoi. Best Overworld villaje. Infinite free mushrooms if you come heer. Pleez come visit.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:dirt>,<item:minecraft:compass>,<item:minecraft:dirt>],
[<item:farmersdelight:red_mushroom_colony>,<tag:items:chocolate:sigma>,<item:farmersdelight:brown_mushroom_colony>],
[<item:minecraft:dirt>,<item:quark:glow_shroom>,<item:minecraft:dirt>]]);

craftingTable.addShaped("mountainvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mountain_v"], display:{Name:'[{"text":"Mountain Village Explorer Compass","bold":true,"italic":false,"color":"gray"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:quark:permafrost>,<item:minecraft:compass>,<item:quark:permafrost>],
[<item:environmental:yak_hair>,<item:unusualend:gilded_pearl>,<item:minecraft:feather>],
[<item:minecraft:saddle>,<item:minecraft:goat_horn>,<item:minecraft:lead>]]);

craftingTable.addShaped("taigavillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:taiga_v"], display:{Name:'[{"text":"Taiga Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:rabbit_hide>,<item:minecraft:compass>,<item:minecraft:leather>],
[<item:minecraft:spruce_sapling>,<item:unusualend:gilded_pearl>,<item:environmental:pine_sapling>],
[<item:minecraft:large_fern>,<item:minecraft:sweet_berries>,<item:minecraft:large_fern>]]);

craftingTable.addShaped("darkforestvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:dark_forest_v"], display:{Name:'[{"text":"Dark Forest Village Explorer Compass","bold":true,"italic":false,"color":"gray"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:born_in_chaos_v1:smoked_flesh>,<item:minecraft:compass>,<item:minecraft:fermented_spider_eye>],
[<item:minecraft:dark_oak_sapling>,<item:unusualend:gilded_pearl>,<item:atmospheric:aspen_sapling>],
[<item:minecraft:bone_block>,<item:majruszsdifficulty:cloth>,<item:minecraft:carved_pumpkin>]]);

craftingTable.addShaped("savannavillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:savanna_v"], display:{Name:'[{"text":"Savanna Village Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:acacia_sapling>,<item:minecraft:compass>,<item:minecraft:acacia_sapling>],
[<item:alexsmobs:acacia_blossom>,<item:unusualend:gilded_pearl>,<item:minecraft:dead_bush>],
[<item:alexsmobs:gazelle_horn>,<item:minecraft:fire_charge>,<item:whatareyouvotingfor2023:armadillo_scute>]]);

craftingTable.addShaped("scrublandvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["atmospheric:village_scrubland"], display:{Name:'[{"text":"Scrubland Village Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:atmospheric:dragon_fruit>,<item:minecraft:compass>,<item:creeperoverhaul:tiny_cactus>.anyDamage()],
[<item:atmospheric:aloe_leaves>,<item:unusualend:gilded_pearl>,<item:atmospheric:aloe_leaves>],
[<item:creeperoverhaul:tiny_cactus>.anyDamage(),<item:atmospheric:carmine_husk>,<item:atmospheric:dragon_fruit>]]);


craftingTable.addShaped("beachvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:beach_v"], display:{Name:'[{"text":"Beach Village Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<tag:items:minecraft:boats>,<item:minecraft:compass>,<tag:items:minecraft:boats>],
[<item:ecologics:coconut_seedling>,<item:unusualend:gilded_pearl>,<item:farmersrespite:tea_seeds>],
[<item:farmersdelight:fish_stew>,<item:ecologics:sandcastle>,<item:farmersdelight:fish_stew>]]);

craftingTable.addShaped("oceanvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:ocean_v"], display:{Name:'[{"text":"Ocean Village Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<tag:items:minecraft:boats>,<item:minecraft:compass>,<tag:items:minecraft:boats>],
[<item:minecraft:ink_sac>,<item:unusualend:gilded_pearl>,<item:minecraft:spyglass>],
[<item:farmersdelight:fish_stew>,<item:create:white_sail>,<item:farmersdelight:fish_stew>]]);

craftingTable.addShaped("brightlandsvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_brightlands"], display:{Name:'[{"text":"Brightlands Village Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★ - Finds a common Everbright village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:carabeef>,<item:minecraft:compass>,<item:blue_skies:venison>],
[<item:blue_skies:bluebright_sapling>,<item:unusualend:gilded_pearl>,<item:blue_skies:starlit_sapling>],
[<item:blue_skies:aquite>,<item:blue_skies:azulfo_horn>,<item:blue_skies:aquite>]]);

craftingTable.addShaped("slushlandsvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_slushlands"], display:{Name:'[{"text":"Slushlands Village Explorer Compass","bold":true,"italic":false,"color":"white"}]',Lore:['[{"text":"★ - Finds a common Everbright village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:soul_fragment>,<item:minecraft:compass>,<item:blue_skies:soul_fragment>],
[<item:blue_skies:snowcap_mushroom>,<item:unusualend:gilded_pearl>,<item:blue_skies:snowcap_mushroom>],
[<item:unusualprehistory:golden_scau>,<item:unusualprehistory:frog_saliva>,<item:unusualprehistory:golden_scau>]]);

craftingTable.addShaped("calmingskiesvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_calming_skies"], display:{Name:'[{"text":"Calming Skies Village Explorer Compass","bold":true,"italic":false,"color":"light_blue"}]',Lore:['[{"text":"★ - Finds a common Everbright village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:pyrope_gem>,<item:minecraft:compass>,<item:blue_skies:pyrope_gem>],
[<item:blue_skies:frose>,<item:unusualend:gilded_pearl>,<item:blue_skies:snowbloom>],
[<item:blue_skies:camellia>,<item:unusualprehistory:antarcto_plate>,<item:blue_skies:polar_posy>]]);

craftingTable.addShaped("crystaldunesvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_crystal_dunes"], display:{Name:'[{"text":"Crystal Dunes Village Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★ - Finds a common Everdawn village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:moonstone_crystal>,<item:minecraft:compass>,<item:blue_skies:moonstone_crystal>],
[<item:blue_skies:crystal_glass>,<item:unusualend:gilded_pearl>,<item:blue_skies:midnight_glass>],
[<item:unusualprehistory:trike_horn>,<item:unusualprehistory:tar_bucket>,<item:unusualprehistory:amber_shard>]]);

craftingTable.addShaped("shadedwoodlandsvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_shaded_woodlands"], display:{Name:'[{"text":"Shaded Woodlands Village Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★ - Finds a common Everdawn village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:baneful_mushroom>,<item:minecraft:compass>,<item:blue_skies:nightcress>],
[<item:blue_skies:lunar_sapling>,<item:unusualend:gilded_pearl>,<item:blue_skies:dusk_sapling>],
[<item:blue_skies:bug_guts>,<item:blue_skies:crescent_fruit>,<item:blue_skies:bug_guts>]]);

craftingTable.addShaped("sunsetmapleforestvillageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_sunset_maple_forest"], display:{Name:'[{"text":"Sunset Maple Village Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★ - Finds a common Everdawn village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:maple_vine>,<item:minecraft:compass>,<item:blue_skies:lucentroot>],
[<item:blue_skies:maple_sapling>,<item:unusualend:gilded_pearl>,<item:blue_skies:maple_sapling>],
[<item:blue_skies:blaze_bud>,<item:unusualprehistory:raptor_feathers>,<item:blue_skies:flare_floret>]]);




craftingTable.addShaped("villageexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:random_v"], display:{Name:'[{"text":"Random Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a random common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:emerald>,<item:minecraft:compass>,<item:minecraft:emerald_block>],
[<item:minecraft:lantern>,<item:unusualend:gilded_pearl>,<item:minecraft:bell>],
[<item:minecraft:emerald_block>,<tag:items:minecraft:beds>,<item:minecraft:emerald>]]);


craftingTable.addShaped("heavenlyshipexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:heavenly_ship"], display:{Name:'[{"text":"Heavenly Ship Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare End dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:infernalexp:glowsilk_bow>,<item:minecraft:compass>,<item:enlightened_end:stardust>],
[<item:celestisynth:starstruck_scrap>,<item:unusualend:gilded_pearl>,<item:endermanoverhaul:ancient_pearl>],
[<item:enlightened_end:stardust>,<item:infernalexp:shroomlight_fungus>,<item:minecraft:blaze_powder>]]);



craftingTable.addShaped("whitepalaceexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["chocolate:white_palace"], display:{Name:'[{"text":"White Palace Explorer Compass","bold":true,"italic":false,"color":"white"}]',Lore:['[{"text":"★★★★ - Finds a very rare Everbright puzzle structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:azulfo_horn>,<item:minecraft:compass>,<item:blue_skies:moonstone>],
[<item:unusualprehistory:opal_fossil>,<item:unusualend:gilded_pearl>,<item:unusualprehistory:opal_fossil>],
[<item:blue_skies:pearl>,<item:blue_skies:astrolabe>,<item:blue_skies:star_flare>]]);

craftingTable.addShaped("shadedcitadelexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["chocolate:shaded_citadel"], display:{Name:'[{"text":"Shaded Citadel Explorer Compass","bold":true,"italic":false,"color":"black"}]',Lore:['[{"text":"★★★★ - Finds a very rare Everdawn boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:oddorganisms:apthoroblattina_ootheca>,<item:minecraft:compass>,<item:iter_rpg:magmanum_chunk>],
[<item:unusualprehistory:tar_fossil_item>,<item:unusualend:gilded_pearl>,<item:unusualprehistory:tar_fossil_item>],
[<item:blue_skies:horizonite_ingot>,<item:blue_skies:astrolabe>,<item:iter_rpg:demonbone>]]);

craftingTable.addShaped("sunkensubmarineexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:sunken_sub"], display:{Name:'[{"text":"Sunken Submarine Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★ - Finds an uncommon Everbright structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:aquite>,<item:minecraft:compass>,<item:blue_skies:aquite>],
[<item:minecraft:spyglass>,<item:unusualend:gilded_pearl>,<item:unusualprehistory:insulator>],
[<item:blue_skies:aquite>,<item:blue_skies:brumble_vine_top>,<item:blue_skies:aquite>]]);


craftingTable.addShaped("asteroidsexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:asteroids"], display:{Name:'[{"text":"Asteroids Explorer Compass","bold":true,"italic":false,"color":"dark_blue"}]',Lore:['[{"text":"★★★ - Finds a rare Everdawn structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:pyrope_gem>,<item:minecraft:compass>,<item:blue_skies:pyrope_gem>],
[<item:blue_skies:charoite>,<item:unusualend:gilded_pearl>,<item:unusualprehistory:permafrost>],
[<item:blue_skies:pyrope_gem>,<item:unusualprehistory:rex_scale>,<item:blue_skies:pyrope_gem>]]);

craftingTable.addShaped("summonerexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:everbright_blinding_dungeon"], display:{Name:'[{"text":"Summoner Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★★ - Finds a rare Everbright boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:endermanoverhaul:summoner_pearl>,<item:minecraft:compass>,<item:endermanoverhaul:summoner_pearl>],
[<item:blue_skies:moonstone>,<item:unusualend:gilded_pearl>,<item:blue_skies:moonstone>],
[<item:iter_rpg:arcane_powder>,<item:blue_skies:soul_fragment>,<item:iter_rpg:arcane_powder>]]);

craftingTable.addShaped("alchemistexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:everdawn_blinding_dungeon"], display:{Name:'[{"text":"Alchemist Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★ - Finds a rare Everdawn boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:born_in_chaos_v1:bottle_of_magical_energy>,<item:minecraft:compass>,<item:born_in_chaos_v1:bottle_of_magical_energy>],
[<item:blue_skies:pyrope_gem>,<item:unusualend:gilded_pearl>,<item:blue_skies:pyrope_gem>],
[<item:iter_rpg:arcane_powder>,<item:blue_skies:bug_guts>,<item:iter_rpg:arcane_powder>]]);

craftingTable.addShaped("naturedungeonexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:nature_dungeon"], display:{Name:'[{"text":"Nature Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★★★ - Finds a rare Everbright boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:snowcap_mushroom>,<item:minecraft:compass>,<item:blue_skies:polar_posy>],
[<item:blue_skies:diopside_gem>,<item:unusualend:gilded_pearl>,<item:blue_skies:diopside_gem>],
[<item:blue_skies:cryo_root>,<item:blue_skies:ethereal_arc>.reuse(),<item:blue_skies:winter_leaves>]]);

craftingTable.addShaped("poisondungeonexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:poison_dungeon"], display:{Name:'[{"text":"Poison Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★★ - Finds a rare Everdawn boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:blue_skies:crescent_fruit>,<item:minecraft:compass>,<item:blue_skies:fiery_beans>],
[<item:blue_skies:charoite>,<item:unusualend:gilded_pearl>,<item:blue_skies:charoite>],
[<item:unusualprehistory:encrusted_organ>,<item:blue_skies:dusk_arc>.reuse(),<item:unusualprehistory:majunga_scute>]]);

craftingTable.addShaped("bastionexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:bastion_remnant"], display:{Name:'[{"text":"Bastion Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★★ - Finds an uncommon Nether dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:gold_block>,<item:minecraft:compass>,<item:minecraft:gold_block>],
[<item:minecraft:netherite_scrap>,<item:unusualend:gilded_pearl>,<item:minecraft:netherite_scrap>],
[<item:minecraft:gold_block>,<item:minecraft:chiseled_polished_blackstone>,<item:minecraft:gold_block>]]);


craftingTable.addShaped("aviaryexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:aviary"], display:{Name:'[{"text":"Aviary Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare End dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:iter_rpg:end_ingot>,<item:minecraft:compass>,<item:iter_rpg:end_ingot>],
[<item:celestisynth:starstruck_feather>,<item:unusualend:gilded_pearl>,<item:celestisynth:starstruck_feather>],
[<item:endergetic:portaplasm>,<item:majruszsdifficulty:enderium_ingot>,<item:born_in_chaos_v1:phantom_powder>]]);


craftingTable.addShaped("ancientminesexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:ancient_mines"], display:{Name:'[{"text":"Ancient Mines Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:diamond_pickaxe>.anyDamage(),<item:minecraft:compass>,<item:alexsmobs:centipede_leg>],
[<item:iter_rpg:the_rock>,<item:unusualend:gilded_pearl>,<item:minecraft:stone>],
[<item:iter_rpg:spider_silk>,<item:toms_storage:ts.wireless_terminal>.reuse(),<item:minecraft:gold_block>]]);


craftingTable.addShaped("ruinsofthedeepexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:ruins_of_the_deep"], display:{Name:'[{"text":"Ruins of the Deep Explorer Compass","bold":true,"italic":false,"color":"light_blue"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:tetra:pristine_diamond>,<item:minecraft:compass>,<item:tetra:pristine_emerald>],
[<item:upgrade_aquatic:elder_prismarine_coral_block>,<item:unusualend:gilded_pearl>,<item:upgrade_aquatic:elder_prismarine_coral_block>],
[<item:tetra:pristine_emerald>,<item:iter_rpg:pearl>.reuse(),<item:tetra:pristine_diamond>]]);


craftingTable.addShaped("lichexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["graveyard:lich_prison"], display:{Name:'[{"text":"Lich Explorer Compass","bold":true,"italic":false,"color":"white"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:enlightened_end:adamantite_ingot>,<item:minecraft:compass>,<item:enlightened_end:adamantite_ingot>],
[<item:born_in_chaos_v1:dark_metal_block>.reuse(),<item:unusualend:gilded_pearl>,<item:born_in_chaos_v1:dark_metal_block>.reuse()],
[<item:enlightened_end:adamantite_ingot>,<item:mutantmore:mutant_wither_skeleton_skull>.reuse(),<item:enlightened_end:adamantite_ingot>]]);


craftingTable.addShaped("foundryexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:foundry"], display:{Name:'[{"text":"Foundry Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:cataclysm:infernal_forge>.reuse(),<item:minecraft:compass>,<item:iter_rpg:magmanum_chunk>],
[<item:born_in_chaos_v1:dark_metal_block>.reuse(),<item:unusualend:gilded_pearl>,<item:born_in_chaos_v1:dark_metal_block>.reuse()],
[<item:nourished_nether:necronium_ingot>,<item:mutantmore:mutant_blaze_core>.reuse(),<item:minecraft:netherite_ingot>]]);


craftingTable.addShaped("shirazpalaceexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:shiraz_palace"], display:{Name:'[{"text":"Shiraz Palace Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:epicsamurai:ruby_block>,<item:minecraft:compass>,<item:epicsamurai:jade_block>],
[<item:infernalexp:glowsilk>,<item:unusualend:gilded_pearl>,<item:infernalexp:glowsilk>],
[<item:cataclysm:ancient_metal_block>,<item:unusualprehistory:opalescent_pearl>,<item:cataclysm:ancient_metal_block>]]);


craftingTable.addShaped("pillageroutpostexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:pillager_outpost"], display:{Name:'[{"text":"Pillager Outpost Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:emerald>,<item:minecraft:compass>,<item:minecraft:emerald>],
[<item:minecraft:feather>,<item:unusualend:gilded_pearl>,<item:minecraft:crossbow>.anyDamage()],
[<item:minecraft:emerald>,<item:minecraft:spyglass>,<item:minecraft:emerald>]]);


craftingTable.addShaped("infestedtempleexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:infested_temple"], display:{Name:'[{"text":"Infested Temple Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:unusualprehistory:amber_shard>,<item:minecraft:compass>,<item:iter_rpg:spider_silk>],
[<item:minecraft:diamond>,<item:unusualend:gilded_pearl>,<item:minecraft:diamond>],
[<item:iter_rpg:spider_silk>,<item:infernalexp:glowsilk>,<item:unusualprehistory:amber_shard>]]);


craftingTable.addShaped("icemazeexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["aquamirae:shelter"], display:{Name:'[{"text":"Ice Maze Explorer Compass","bold":true,"italic":false,"color":"light_blue"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:aquamirae:esca>,<item:minecraft:compass>,<item:aquamirae:esca>],
[<item:upgrade_aquatic:thrasher_tooth>,<item:unusualend:gilded_pearl>,<item:upgrade_aquatic:thrasher_tooth>],
[<item:aquamirae:fin>,<item:aquamirae:anglers_fang>,<item:aquamirae:fin>]]);


craftingTable.addShaped("plagueasylumexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:plague_asylum"], display:{Name:'[{"text":"Plague Asylum Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:enlightened_end:irradium_bar>,<item:minecraft:compass>,<item:enlightened_end:depleted_irradium_bar>],
[<item:minecraft:potion>.withTag({Potion: "unusualend:end_infection"}),<item:unusualend:gilded_pearl>,<item:minecraft:potion>.withTag({Potion: "unusualend:end_infection"})],
[<item:enlightened_end:depleted_irradium_bar>,<item:mutantmore:compound_z>,<item:enlightened_end:irradium_bar>]]);


craftingTable.addShaped("mushroomminesexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:mushroom_mines"], display:{Name:'[{"text":"Mushroom Mines Explorer Compass","bold":true,"italic":false,"color":"dark_gray"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:farmersdelight:red_mushroom_colony>,<item:minecraft:compass>,<item:farmersdelight:brown_mushroom_colony>],
[<item:galosphere:golden_lichen_cordyceps>,<item:unusualend:gilded_pearl>,<item:galosphere:golden_lichen_cordyceps>],
[<item:cnb:lizard_item_mushroom>,<item:enigmaticlegacy:earth_heart>.reuse(),<item:infernalexp:ascus_bomb>]]);


craftingTable.addShaped("endcityexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:end_city"], display:{Name:'[{"text":"End City Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★★★ - Finds a rare End dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:enlightened_end:stardust>,<item:minecraft:compass>,<item:enlightened_end:stardust>],
[<item:enlightened_end:adamantite_ingot>,<item:unusualend:gilded_pearl>,<item:enlightened_end:adamantite_ingot>],
[<item:enlightened_end:stardust>,<item:unusualend:shiny_crystal>,<item:enlightened_end:stardust>]]);


craftingTable.addShaped("mineshaftexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mineshaft"], display:{Name:'[{"text":"Mineshaft Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:iter_rpg:voidquartz_shard>,<item:minecraft:compass>,<item:iter_rpg:voidquartz_shard>],
[<item:galosphere:silver_ingot>,<item:unusualend:gilded_pearl>,<item:galosphere:silver_ingot>],
[<item:iter_rpg:voidquartz_shard>,<item:quark:diamond_heart>.reuse(),<item:iter_rpg:voidquartz_shard>]]);


craftingTable.addShaped("dungeonexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:dungeon"], display:{Name:'[{"text":"Dungeon Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:iter_rpg:voidquartz_shard>,<item:minecraft:compass>,<item:iter_rpg:voidquartz_shard>],
[<item:galosphere:silver_ingot>,<item:unusualend:gilded_pearl>,<item:galosphere:silver_ingot>],
[<item:iter_rpg:voidquartz_shard>,<item:quark:diamond_heart>.reuse(),<item:iter_rpg:voidquartz_shard>]]);

craftingTable.addShaped("oceanmonumentexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["betteroceanmonuments:ocean_monument"], display:{Name:'[{"text":"Ocean Monument Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:prismarine_shard>,<item:minecraft:compass>,<item:minecraft:prismarine_shard>],
[<item:minecraft:diamond>,<item:unusualend:gilded_pearl>,<item:minecraft:diamond>],
[<item:minecraft:prismarine_shard>,<item:minecraft:nautilus_shell>,<item:minecraft:prismarine_shard>]]);


craftingTable.addShaped("woodlandmansionexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:mansion"], display:{Name:'[{"text":"Woodland Mansion Explorer Compass","bold":true,"italic":false,"color":"dark_gray"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:dark_oak_log>,<item:minecraft:compass>,<item:atmospheric:aspen_log>],
[<item:galosphere:silver_ingot>,<item:unusualend:gilded_pearl>,<item:galosphere:silver_ingot>],
[<item:atmospheric:aspen_log>,<item:minecraft:fire_charge>,<item:minecraft:dark_oak_log>]]);


craftingTable.addShaped("illagerfortressexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:pillager_fortress"], display:{Name:'[{"text":"Illager Fortress Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<tag:items:chocolate:epic_samurai_gems>,<item:minecraft:compass>,<tag:items:chocolate:epic_samurai_gems>],
[<item:quark:ravager_hide>,<item:unusualend:gilded_pearl>,<item:quark:ravager_hide>],
[<item:minecraft:emerald_block>,<item:meetyourfight:haunted_bell>.reuse(),<item:minecraft:emerald_block>]]);


craftingTable.addShaped("gatekeeperexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:gatekeeper"], display:{Name:'[{"text":"Gatekeeper Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds a uncommon Overworld dimensional structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:diamond>,<item:minecraft:compass>,<item:minecraft:diamond>],
[<item:minecraft:powder_snow_bucket>.reuse(),<item:unusualend:gilded_pearl>,<item:unusualprehistory:tar_bucket>.reuse()],
[<item:minecraft:diamond>,<item:enigmaticlegacy:earth_heart>.reuse(),<item:minecraft:diamond>]]);


craftingTable.addShaped("cryptexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["graveyard:crypt"], display:{Name:'[{"text":"Crypt Explorer Compass","bold":true,"italic":false,"color":"black"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:graveyard:corruption>,<item:minecraft:compass>,<item:graveyard:corruption>],
[<item:iter_rpg:magmanum_chunk>,<item:unusualend:gilded_pearl>,<item:iter_rpg:magmanum_chunk>],
[<item:graveyard:corruption>,<item:born_in_chaos_v1:shattered_skull>,<item:graveyard:corruption>]]);


craftingTable.addShaped("labyrinthexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:labyrinth"], display:{Name:'[{"text":"Labyrinth Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:epicsamurai:onyx_block>,<item:minecraft:compass>,<item:epicsamurai:aquamarine_block>],
[<item:alexsmobs:tarantula_hawk_wing>.reuse(),<item:unusualend:gilded_pearl>,<item:alexsmobs:tarantula_hawk_wing>.reuse()],
[<item:create:brass_block>,<item:alexsmobs:rattlesnake_rattle>,<item:create:brass_block>]]);


craftingTable.addShaped("tinkersworkshopexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:tinkers_workshop"], display:{Name:'[{"text":"Tinkerers Workshop Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld puzzle structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:create:brass_ingot>,<item:minecraft:compass>,<item:create:brass_ingot>],
[<item:create:sturdy_sheet>,<item:unusualend:gilded_pearl>,<item:create:sturdy_sheet>],
[<item:create:brass_ingot>,<item:minecraft:netherite_ingot>,<item:create:brass_ingot>]]);


craftingTable.addShaped("necromancersspireexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:necromancers_spire"], display:{Name:'[{"text":"Necromancers Spire Explorer Compass","bold":true,"italic":false,"color":"dark_blue"}]',Lore:['[{"text":"★★ - Finds an uncommon Nether structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:gardens_of_the_dead:whistlecane>,<item:minecraft:compass>,<item:nourished_nether:ectoplasm>],
[<item:nourished_nether:necronium_ingot>,<item:unusualend:gilded_pearl>,<item:nourished_nether:necronium_ingot>],
[<item:nourished_nether:ectoplasm>,<item:iter_rpg:magmanum_chunk>,<item:gardens_of_the_dead:whistlecane>]]);


craftingTable.addShaped("trailruinsexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:trail_ruins"], display:{Name:'[{"text":"Trail Ruins Explorer Compass","bold":true,"italic":false,"color":"dark_gray"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld archaeology structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:bone>,<item:minecraft:compass>,<item:minecraft:flint>],
[<tag:items:unusualprehistory:fossils>,<item:unusualend:gilded_pearl>,<tag:items:unusualprehistory:fossils>],
[<item:minecraft:flint>,<item:sophisticatedbackpacks:magnet_upgrade>,<item:minecraft:bone>]]);


// craftingTable.addShaped("queenbeeexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["queen_bee:beehive"], display:{Name:'[{"text":"Queen Bee Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★★ - Finds a uncommon Overworld boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
// [[<item:minecraft:honey_bottle>.reuse(),<item:minecraft:compass>,<item:minecraft:honey_bottle>.reuse()],
// [<item:queen_bee:stinger>,<item:unusualend:gilded_pearl>,<item:queen_bee:stinger>],
// [<item:minecraft:honey_bottle>.reuse(),<item:minecraft:gold_ingot>,<item:minecraft:honey_bottle>.reuse()]]);


craftingTable.addShaped("redhornguildexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:redhorn_guild"], display:{Name:'[{"text":"Redhorn Guild Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:flower_banner_pattern>,<item:minecraft:compass>,<item:atmospheric:cochineal_banner_pattern>],
[<item:minecraft:redstone>,<tag:items:supplementaries:flags>,<item:minecraft:redstone>],
[<item:alexsmobs:banner_pattern_bear>,<item:minecraft:goat_horn>,<item:autumnity:swirl_banner_pattern>]]);


craftingTable.addShaped("nethergauntletexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["bosses_of_mass_destruction:gauntlet_arena"], display:{Name:'[{"text":"Nether Gauntlet Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★ - Finds an uncommon Nether boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:nourished_nether:glowing_obsidian>,<item:minecraft:compass>,<item:infernalexp:glowcoal>],
[<item:iter_rpg:magmanum_chunk>,<item:unusualend:gilded_pearl>,<item:iter_rpg:magmanum_chunk>],
[<item:infernalexp:glowcoal>,<item:minecraft:netherite_scrap>,<item:nourished_nether:glowing_obsidian>]]);

craftingTable.addShaped("obsidilithexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["bosses_of_mass_destruction:obsidilith_arena"], display:{Name:'[{"text":"Obsidilith Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds an uncommon End boss structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:crying_obsidian>,<item:minecraft:compass>,<item:enlightened_end:stardust>],
[<item:enlightened_end:adamantite_ingot>,<item:unusualend:gilded_pearl>,<item:enlightened_end:adamantite_ingot>],
[<item:enlightened_end:stardust>,<item:endergetic:poise_bush>,<item:minecraft:crying_obsidian>]]);




craftingTable.addShaped("waystoneexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["totw_modded:tw_mangrove", "totw_modded:nether", "totw_modded:ice", "totw_modded:derelict_grass", "totw_modded:everdawn", "totw_modded:desert", "totw_modded:derelict", "totw_modded:badlands", "totw_modded:everbright", "totw_modded:tw_canopy", "totw_modded:ocean_warm", "totw_modded:jungle", "totw_additions:nether_tower", "totw_modded:end", "totw_modded:ocean", "totw_modded:regular", "totw_modded:aether", "totw_additions:end_tower"], display:{Name:'[{"text":"Waystone Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds an uncommon waystone structure in any dimension.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:galosphere:silver_ingot>,<item:minecraft:compass>,<item:galosphere:silver_ingot>],
[<item:galosphere:silver_ingot>,<item:unusualend:gilded_pearl>,<item:galosphere:silver_ingot>],
[<item:galosphere:silver_ingot>,<item:waystones:warp_stone>,<item:galosphere:silver_ingot>]]);

craftingTable.addShaped("ruinedportalexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:ruined_portal"], display:{Name:'[{"text":"Ruined Portal Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds an uncommon ruined portal structure in any dimension.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:minecraft:gold_ingot>,<item:minecraft:compass>,<item:minecraft:gold_ingot>],
[<item:minecraft:obsidian>,<item:unusualend:gilded_pearl>,<item:minecraft:obsidian>],
[<item:minecraft:gold_ingot>,<item:minecraft:fire_charge>,<item:minecraft:gold_ingot>]]);


craftingTable.addShaped("bazaarexplorermap",<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:bazaar"], display:{Name:'[{"text":"Bazaar Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld structure.","bold":true,"italic":false,"color":"yellow"}]']}}), 
[[<item:epicsamurai:ruby>,<item:minecraft:compass>,<item:epicsamurai:jade>],
[<item:farmersdelight:basket>,<item:unusualend:gilded_pearl>,<item:farmersdelight:basket>],
[<item:epicsamurai:aquamarine>,<tag:items:create:sandpaper>,<item:epicsamurai:onyx>]]);


Jei.addIngredient(<item:quark:glow_shroom>);
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:ancient_city"], display:{Name:'[{"text":"Deep Dark Explorer Compass","bold":true,"italic":false,"color":"dark_blue"}]',Lore:['[{"text":"★★★ - Finds a rare ","bold":true,"italic":false,"color":"yellow"},{"text":"askdflsajfl","bold":true,"italic":false,"color":"yellow","obfuscated":true},{"text":" structure.","bold":true,"italic":false,"color":"yellow"}]']}}));



Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["totw_modded:tw_mangrove", "totw_modded:nether", "totw_modded:ice", "totw_modded:derelict_grass", "totw_modded:everdawn", "totw_modded:desert", "totw_modded:derelict", "totw_modded:badlands", "totw_modded:everbright", "totw_modded:tw_canopy", "totw_modded:ocean_warm", "totw_modded:jungle", "totw_additions:nether_tower", "totw_modded:end", "totw_modded:ocean", "totw_modded:regular", "totw_modded:aether", "totw_additions:end_tower"], display:{Name:'[{"text":"Waystone Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds an uncommon waystone structure in any dimension.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:ruined_portal"], display:{Name:'[{"text":"Ruined Portal Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds an uncommon ruined portal structure in any dimension.","bold":true,"italic":false,"color":"yellow"}]']}})); 

Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:bandit_towers"], display:{Name:'["",{"text"]:"Bandit Explorer Compass","bold":true,"color":"gold"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:thornborn_towers"], display:{Name:'["",{"text"]:"Thornborn Explorer Compass","bold":true,"color":"dark_green"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:keep_kayra"], display:{Name:'["",{"text"]:"Kayra Explorer Compass","bold":true,"color":"green"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:scorched_mines"], display:{Name:'["",{"text"]:"Scorched Mines Explorer Compass","bold":true,"color":"red"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["conjurer_illager:theatre"], display:{Name:'[{"text":"Conjurer Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["betterdeserttemples:desert_temple"], display:{Name:'[{"text":"Desert Temple Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["betterjungletemples:jungle_temple"], display:{Name:'[{"text":"Jungle Temple Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:plains_v"], display:{Name:'[{"text":"Plains Village Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:forest_v"], display:{Name:'[{"text":"Forest Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:desert_v"], display:{Name:'[{"text":"Desert Village Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:swamp_v"], display:{Name:'[{"text":"Swamp Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:snowy_v"], display:{Name:'[{"text":"Snowy Village Explorer Compass","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:jungle_v"], display:{Name:'[{"text":"Jungle Village Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mesa_v"], display:{Name:'[{"text":"Mesa Village Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mushroom_v"], display:{Name:'[{"text":"Mushroom Village(heaven) Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★★★★★★★★★★ - Hoi. Best Overworld villaje. Infinite free mushrooms if you come heer. Pleez come visit.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mountain_v"], display:{Name:'[{"text":"Mountain Village Explorer Compass","bold":true,"italic":false,"color":"gray"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:taiga_v"], display:{Name:'[{"text":"Taiga Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:dark_forest_v"], display:{Name:'[{"text":"Dark Forest Village Explorer Compass","bold":true,"italic":false,"color":"gray"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:savanna_v"], display:{Name:'[{"text":"Savanna Village Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["atmospheric:village_scrubland"], display:{Name:'[{"text":"Scrubland Village Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:beach_v"], display:{Name:'[{"text":"Beach Village Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:ocean_v"], display:{Name:'[{"text":"Ocean Village Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★ - Finds a common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:random_v"], display:{Name:'[{"text":"Random Village Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a random common Overworld village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:ancient_mines"], display:{Name:'[{"text":"Ancient Mines Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:ruins_of_the_deep"], display:{Name:'[{"text":"Ruins of the Deep Explorer Compass","bold":true,"italic":false,"color":"light_blue"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["graveyard:lich_prison"], display:{Name:'[{"text":"Lich Explorer Compass","bold":true,"italic":false,"color":"white"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:foundry"], display:{Name:'[{"text":"Foundry Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:shiraz_palace"], display:{Name:'[{"text":"Shiraz Palace Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:pillager_outpost"], display:{Name:'[{"text":"Pillager Outpost Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:infested_temple"], display:{Name:'[{"text":"Infested Temple Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["aquamirae:shelter"], display:{Name:'[{"text":"Ice Maze Explorer Compass","bold":true,"italic":false,"color":"light_blue"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:plague_asylum"], display:{Name:'[{"text":"Plague Asylum Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:mushroom_mines"], display:{Name:'[{"text":"Mushroom Mines Explorer Compass","bold":true,"italic":false,"color":"dark_gray"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:mineshaft"], display:{Name:'[{"text":"Mineshaft Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:dungeon"], display:{Name:'[{"text":"Dungeon Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★ - Finds a common Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["betteroceanmonuments:ocean_monument"], display:{Name:'[{"text":"Ocean Monument Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:mansion"], display:{Name:'[{"text":"Woodland Mansion Explorer Compass","bold":true,"italic":false,"color":"dark_gray"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:pillager_fortress"], display:{Name:'[{"text":"Illager Fortress Explorer Compass","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:gatekeeper"], display:{Name:'[{"text":"Gatekeeper Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds a uncommon Overworld dimensional structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["graveyard:crypt"], display:{Name:'[{"text":"Crypt Explorer Compass","bold":true,"italic":false,"color":"black"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:labyrinth"], display:{Name:'[{"text":"Labyrinth Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★★★ - Finds a very rare Overworld dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:tinkers_workshop"], display:{Name:'[{"text":"Tinkerers Workshop Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld puzzle structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:trail_ruins"], display:{Name:'[{"text":"Trail Ruins Explorer Compass","bold":true,"italic":false,"color":"dark_gray"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld archaeology structure.","bold":true,"italic":false,"color":"yellow}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:redhorn_guild"], display:{Name:'[{"text":"Redhorn Guild Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:bazaar"], display:{Name:'[{"text":"Bazaar Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★★ - Finds a rare Overworld structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 


Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:bastion_remnant"], display:{Name:'[{"text":"Bastion Explorer Compass","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":"★★ - Finds an uncommon Nether dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["idas:necromancers_spire"], display:{Name:'[{"text":"Necromancers Spire Explorer Compass","bold":true,"italic":false,"color":"dark_blue"}]',Lore:['[{"text":"★★ - Finds an uncommon Nether structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["bosses_of_mass_destruction:gauntlet_arena"], display:{Name:'[{"text":"Nether Gauntlet Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★ - Finds an uncommon Nether boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 


Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_brightlands"], display:{Name:'[{"text":"Brightlands Village Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★ - Finds a common Everbright village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_slushlands"], display:{Name:'[{"text":"Slushlands Village Explorer Compass","bold":true,"italic":false,"color":"white"}]',Lore:['[{"text":"★ - Finds a common Everbright village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_calming_skies"], display:{Name:'[{"text":"Calming Skies Village Explorer Compass","bold":true,"italic":false,"color":"light_blue"}]',Lore:['[{"text":"★ - Finds a common Everbright village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_crystal_dunes"], display:{Name:'[{"text":"Crystal Dunes Village Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★ - Finds a common Everdawn village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_shaded_woodlands"], display:{Name:'[{"text":"Shaded Woodlands Village Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★ - Finds a common Everdawn village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:village_sunset_maple_forest"], display:{Name:'[{"text":"Sunset Maple Village Explorer Compass","bold":true,"italic":false,"color":"red"}]',Lore:['[{"text":"★ - Finds a common Everdawn village structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["chocolate:white_palace"], display:{Name:'[{"text":"White Palace Explorer Compass","bold":true,"italic":false,"color":"white"}]',Lore:['[{"text":"★★★★ - Finds a very rare Everbright puzzle structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["chocolate:shaded_citadel"], display:{Name:'[{"text":"Shaded Citadel Explorer Compass","bold":true,"italic":false,"color":"black"}]',Lore:['[{"text":"★★★★ - Finds a very rare Everdawn boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:sunken_sub"], display:{Name:'[{"text":"Sunken Submarine Explorer Compass","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"★★ - Finds an uncommon Everbright structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:asteroids"], display:{Name:'[{"text":"Asteroids Explorer Compass","bold":true,"italic":false,"color":"dark_blue"}]',Lore:['[{"text":"★★★ - Finds a rare Everdawn structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:everbright_blinding_dungeon"], display:{Name:'[{"text":"Summoner Explorer Compass","bold":true,"italic":false,"color":"blue"}]',Lore:['[{"text":"★★ - Finds a rare Everbright boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:everdawn_blinding_dungeon"], display:{Name:'[{"text":"Alchemist Explorer Compass","bold":true,"italic":false,"color":"dark_red"}]',Lore:['[{"text":"★★ - Finds a rare Everdawn boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:nature_dungeon"], display:{Name:'[{"text":"Nature Explorer Compass","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"★★★ - Finds a rare Everbright boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["blue_skies:poison_dungeon"], display:{Name:'[{"text":"Poison Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★★ - Finds a rare Everdawn boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 


Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["dungeons_arise:aviary"], display:{Name:'[{"text":"Aviary Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare End dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["minecraft:end_city"], display:{Name:'[{"text":"End City Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★★★ - Finds a rare End dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["#chocolate:heavenly_ship"], display:{Name:'[{"text":"Heavenly Ship Explorer Compass","bold":true,"italic":false,"color":"light_purple"}]',Lore:['[{"text":"★★★★★ - Finds an extremely rare End dungeon structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 
Jei.addIngredient(<item:structurecompassfix:structure_compass>.withTag({scf_entries: ["bosses_of_mass_destruction:obsidilith_arena"], display:{Name:'[{"text":"Obsidilith Explorer Compass","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"text":"★★ - Finds an uncommon End boss structure.","bold":true,"italic":false,"color":"yellow"}]']}})); 