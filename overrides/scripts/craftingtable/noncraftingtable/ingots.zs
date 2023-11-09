import mods.create.CompactingManager;
import mods.create.CrushingManager;
import mods.create.PressingManager;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.data.StringData;
import mods.create.SequencedAssemblyManager;
import crafttweaker.api.data.MapData;
recipes.removeByName("art_of_forging:forged_steel_ingot_from_blasting_alloy");
recipes.removeByName("art_of_forging:forged_steel_from_blasting_alloy");
recipes.removeByName("create:sequenced_assembly/track");
// SequencedAssemblyManager.addRecipe(builder as SequencedAssemblyRecipeBuilder) as void

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("tracksteel")
                                                      .transitionTo(<item:create:incomplete_track>)
                                                      .require(<item:minecraft:stone_slab>)
                                                      .loops(1)
                                                      .addOutput(<item:create:track> * 16, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:epicsamurai:steel_ingot>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:planks>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(10)));


//addTransformRecipe("Bundle", <item:metalbundles:copper_bundle>, <item:minecraft:leather>, <item:minecraft:bundle>, <item:minecraft:copper_ingot>);// CompactingManager.addRecipe(name as string, heat as HeatCondition, outputs as Percentaged<IItemStack>[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int) as void
// CrushingManager.addRecipe(name as string, output as Percentaged<IItemStack>[], input as IIngredient, duration as int) as void
// SmithingManager.addRecipe(recipeName as string, result as IItemStack, base as IIngredient, addition as IIngredient) as void
recipes.removeByName("enlightened_end:starsteel_ingot");
recipes.removeByName("iter_rpg:ametrine_ingot_craft");
recipes.removeByName("iter_rpg:ametrine_ingot_craft_alternative");
craftingTable.addShaped("ametrine_ingot",<item:iter_rpg:ametrine_ingot>,[[<item:iter_rpg:ametrine_shard>,<item:epicsamurai:silver_ingot>,<item:iter_rpg:voidquartz_shard>],[<item:epicsamurai:silver_ingot>,<item:minecraft:amethyst_shard>,<item:epicsamurai:silver_ingot>],[<item:iter_rpg:voidquartz_shard>,<item:epicsamurai:silver_ingot>,<item:iter_rpg:ametrine_shard>]]);

craftingTable.addShaped("starsteel_ingot",<item:enlightened_end:starsteel_ingot>,[[<item:enlightened_end:stardust>,<item:enlightened_end:bismuth_ingot>,<item:enlightened_end:stardust>],[<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>],[<item:enlightened_end:glacium>,<item:enlightened_end:bismuth_ingot>,<item:enlightened_end:glacium>]]);

craftingTable.addShaped("steel_harvester",<item:create:mechanical_harvester>,[[<item:create:andesite_alloy>,<item:epicsamurai:steel_ingot>,<item:create:andesite_alloy>],[<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>],[<item:create:andesite_alloy>,<item:create:andesite_casing>,<item:create:andesite_alloy>]]);
craftingTable.addShaped("steel_roller",<item:create:mechanical_roller>,[[<item:create:andesite_alloy>,<item:epicsamurai:steel_ingot>,<item:create:andesite_alloy>],[<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>],[<item:create:andesite_alloy>,<item:create:andesite_casing>,<item:create:andesite_alloy>]]);
craftingTable.addShaped("steel_plough",<item:create:mechanical_plough>,[[<item:create:andesite_alloy>,<item:create:electron_tube>,<item:create:andesite_alloy>],[<item:epicsamurai:steel_ingot>,<item:create:andesite_casing>,<item:epicsamurai:steel_ingot>],[<item:create:andesite_alloy>,<item:create:crushing_wheel>,<item:create:andesite_alloy>]]);
craftingTable.addShaped("steel_drill",<item:create:mechanical_drill>,[[<item:minecraft:air>,<item:epicsamurai:steel_ingot>,<item:minecraft:air>],[<item:create:andesite_alloy>,<item:epicsamurai:steel_ingot>,<item:create:andesite_alloy>],[<item:epicsamurai:steel_ingot>,<item:create:andesite_casing>,<item:epicsamurai:steel_ingot>]]);
craftingTable.addShaped("steel_saw",<item:create:mechanical_saw>,[[<item:create:iron_sheet>,<item:epicsamurai:steel_ingot>,<item:create:iron_sheet>],[<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>,<item:epicsamurai:steel_ingot>],[<item:minecraft:air>,<item:create:andesite_casing>,<item:minecraft:air>]]);
craftingTable.addShaped("chute",<item:create:chute>,[[<item:minecraft:air>,<item:epicsamurai:steel_ingot>,<item:minecraft:air>],[<item:create:iron_sheet>,<item:epicsamurai:steel_ingot>,<item:create:iron_sheet>],[<item:minecraft:air>,<item:create:iron_sheet>,<item:minecraft:air>]]);
craftingTable.addShaped("port_stor_inter",<item:create:portable_storage_interface>,[[<item:create:andesite_alloy>,<item:epicsamurai:steel_ingot>,<item:create:andesite_alloy>],[<item:epicsamurai:steel_ingot>,<item:create:chute>,<item:epicsamurai:steel_ingot>],[<item:create:andesite_alloy>,<item:create:andesite_casing>,<item:create:andesite_alloy>]]);
craftingTable.addShaped("schematicannon",<item:create:schematicannon>,[[<item:create:andesite_alloy>,<item:epicsamurai:steel_block>,<item:create:andesite_alloy>],[<tag:items:forge:stripped_logs>,<item:epicsamurai:steel_block>,<tag:items:forge:stripped_logs>],[<item:create:andesite_alloy_block>,<item:minecraft:dispenser>,<item:create:andesite_alloy_block>]]);

<recipetype:create:compacting>.addRecipe("forged_steel",<constant:create:heat_condition:superheated>, [<item:art_of_forging:forged_steel_ingot>], [<item:epicsamurai:steel_ingot> * 4, <item:art_of_forging:resonant_alloy> * 2], [<fluid:minecraft:lava>], 250);
smithing.addRecipe("samuraih", <item:majruszsdifficulty:enderium_helmet>, <item:epicsamurai:netherite_samurai_helmet>, <item:majruszsdifficulty:enderium_ingot>);
smithing.addRecipe("samuraic", <item:majruszsdifficulty:enderium_chestplate>, <item:epicsamurai:netherite_samurai_chestplate>, <item:majruszsdifficulty:enderium_ingot>);
smithing.addRecipe("samurail", <item:majruszsdifficulty:enderium_leggings>, <item:epicsamurai:netherite_samurai_leggings>, <item:majruszsdifficulty:enderium_ingot>);
smithing.addRecipe("samuraib", <item:majruszsdifficulty:enderium_boots>, <item:epicsamurai:netherite_samurai_boots>, <item:majruszsdifficulty:enderium_ingot>);
smithing.addRecipe("darkmetalh", <item:born_in_chaos_v1:dark_metal_armor_helmet>, <item:epicsamurai:netherite_samurai_helmet>, <item:born_in_chaos_v1:armor_plate_from_dark_metal>);
smithing.addRecipe("darkmetalc", <item:born_in_chaos_v1:dark_metal_armor_chestplate>, <item:epicsamurai:netherite_samurai_chestplate>, <item:born_in_chaos_v1:armor_plate_from_dark_metal>);
smithing.addRecipe("darkmetall", <item:born_in_chaos_v1:dark_metal_armor_leggings>, <item:epicsamurai:netherite_samurai_leggings>, <item:born_in_chaos_v1:armor_plate_from_dark_metal>);
smithing.addRecipe("darkmetalb", <item:born_in_chaos_v1:dark_metal_armor_boots>, <item:epicsamurai:netherite_samurai_boots>, <item:born_in_chaos_v1:armor_plate_from_dark_metal>);
smithing.addRecipe("ignitiumh", <item:cataclysm:ignitium_helmet>, <item:epicsamurai:netherite_samurai_helmet>, <item:cataclysm:ignitium_ingot>);
smithing.addRecipe("ignitiumc", <item:cataclysm:ignitium_chestplate>, <item:epicsamurai:netherite_samurai_chestplate>, <item:cataclysm:ignitium_ingot>);
smithing.addRecipe("ignitiuml", <item:cataclysm:ignitium_leggings>, <item:epicsamurai:netherite_samurai_leggings>, <item:cataclysm:ignitium_ingot>);
smithing.addRecipe("ignitiumb", <item:cataclysm:ignitium_boots>, <item:epicsamurai:netherite_samurai_boots>, <item:cataclysm:ignitium_ingot>);

smithing.addRecipe("supernalnetherite", <item:celestisynth:supernal_netherite_ingot>, <item:minecraft:netherite_ingot>, <item:celestisynth:celestial_core_heated>);
<recipetype:create:crushing>.addRecipe("lunarscrap", [<item:celestisynth:lunar_scrap> % 50, <item:celestisynth:lunar_scrap>, (<item:minecraft:lapis_lazuli> * 4) % 75, (<item:blue_skies:moonstone_shard> * 2) % 12], <item:celestisynth:lunar_stone> * 3, 1000);
craftingTable.addShaped("celestialnetherite",<item:celestisynth:celestial_netherite_ingot>,[[<item:epicsamurai:ruby>,<item:enigmaticlegacy:etherium_ingot>,<item:epicsamurai:aquamarine>],[<item:celestisynth:solar_crystal>,<item:celestisynth:supernal_netherite_ingot>,<item:celestisynth:lunar_scrap>],[<item:epicsamurai:jade>,<item:minecraft:diamond>,<item:epicsamurai:onyx>]]);
<recipetype:create:compacting>.addRecipe("superheating_core", <constant:create:heat_condition:superheated>, [<item:celestisynth:celestial_core_heated>], [<item:celestisynth:celestial_core>, <item:celestisynth:solar_crystal> * 4, <item:celestisynth:zephyr_deposit> * 16], [<fluid:minecraft:lava>], 1000);
<recipetype:create:mixing>.addRecipe("steel_from_iron", <constant:create:heat_condition:heated>, [<item:epicsamurai:steel_ingot> * 2], [<item:minecraft:iron_ingot> * 2, <item:minecraft:coal> * 2], [], 200);
<recipetype:create:mixing>.addRecipe("steel_from_gobsteel", <constant:create:heat_condition:heated>, [<item:epicsamurai:steel_ingot> * 3], [<item:iter_rpg:gobsteel_scrap> * 2, <item:minecraft:coal> * 2], [], 200);
<recipetype:create:mixing>.addRecipe("steel_from_ventium", <constant:create:heat_condition:heated>, [<item:epicsamurai:steel_ingot> * 3], [<item:blue_skies:ventium_ingot> * 2, <item:minecraft:coal> * 2], [], 200);

