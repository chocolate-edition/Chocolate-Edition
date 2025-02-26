import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;
#priority -11
function i(m as IItemStack, s as string) as void {
	Jei.addIngredientInformation(m, Component.translatable("jei_desc.chocolate." + s));	
}
// =============== Stage Notes ===============
for element in <tag:items:chocolate:stage_one_item>
	i(element, "stage_one");
for element in <tag:items:chocolate:stage_two_item> 
	i(element, "stage_two");
for element in <tag:items:chocolate:stage_three_item> 
	i(element, "stage_three");
for element in <tag:items:chocolate:stage_four_item>
	i(element, "stage_four");
for element in <tag:items:chocolate:stage_five_item>
	i(element, "stage_five");
// =============== Tutorials ===============
// Chemical X
i(<item:minecraft:potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "chemical_x");
i(<item:minecraft:splash_potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "chemical_x");
i(<item:minecraft:lingering_potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "chemical_x");
// Cataclysm
i(<item:cataclysm:burning_ashes>, "ignis_summon");
i(<item:cataclysm:altar_of_fire>, "ignis_summon");
i(<item:cataclysm:abyssal_sacrifice>, "leviathan_summon");
i(<item:cataclysm:altar_of_abyss>, "leviathan_summon");
i(<item:cataclysm:altar_of_amethyst>, "crab_meat_blessing");
i(<item:cataclysm:amethyst_crab_meat>, "crab_meat_blessing");
i(<item:cataclysm:blessed_amethyst_crab_meat>, "crab_meat_blessing");
i(<item:cataclysm:mech_eye>, "mech_eye");
i(<item:cataclysm:flame_eye>, "flame_eye");
i(<item:cataclysm:void_eye>, "void_eye");
i(<item:cataclysm:monstrous_eye>, "monstrous_eye");
i(<item:cataclysm:abyss_eye>, "abyss_eye");
// Prismarine to Elder Prismarine conversion
i(<item:upgrade_aquatic:prismarine_coral_block>, "prismarine_to_elder");
i(<item:upgrade_aquatic:prismarine_coral>, "prismarine_to_elder");
i(<item:upgrade_aquatic:prismarine_coral_fan>, "prismarine_to_elder");
i(<item:upgrade_aquatic:prismarine_coral_shower>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral_block>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral_fan>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral_shower>, "prismarine_to_elder");
// Astral Dust Brewing
i(<item:enigmaticlegacy:astral_dust>, "astral_dust_1");
i(<item:enigmaticlegacy:astral_dust>, "astral_dust_2");
// Infusion Table
i(<item:infusion_table:infusion_table>, "infusion_table_1");
i(<item:infusion_table:infusion_table>, "infusion_table_2");
// Backpacks
i(<item:sophisticatedbackpacks:backpack>, "backpack_encumbering");
i(<item:sophisticatedbackpacks:iron_backpack>, "backpack_encumbering");
i(<item:sophisticatedbackpacks:gold_backpack>, "backpack_encumbering");
i(<item:sophisticatedbackpacks:diamond_backpack>, "backpack_encumbering");
i(<item:sophisticatedbackpacks:netherite_backpack>, "backpack_encumbering");
// Artifact Repair Dust
for element in <tag:items:artifacts:artifacts>
	i(element, "artifact_repair");
i(<item:nameless_trinkets:dubious_dust>, "artifact_repair");
// =============== Misc ===============
i(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:mending"}]}), "mending");









// ----- Ores -----


i(<item:minecraft:coal_ore>, "coal_ore");
i(<item:minecraft:iron_ore>, "iron_ore");
i(<item:minecraft:copper_ore>, "copper_ore");
i(<item:minecraft:gold_ore>, "gold_ore");
i(<item:minecraft:emerald_ore>, "emerald_ore");
i(<item:minecraft:lapis_ore>, "lapis_ore");
i(<item:minecraft:redstone_ore>, "redstone_ore");
i(<item:minecraft:diamond_ore>, "diamond_ore");
i(<item:minecraft:nether_quartz_ore>, "nether_quartz_ore");
i(<item:minecraft:nether_gold_ore>, "nether_gold_ore");
i(<item:minecraft:ancient_debris>, "ancient_debris");
i(<item:create:zinc_ore>, "zinc_ore");
i(<item:epicsamurai:silver_ore>, "epicsamurai_ore");
i(<item:epicsamurai:ruby_ore>, "epicsamurai_ore");
i(<item:epicsamurai:jade_ore>, "epicsamurai_ore");
i(<item:epicsamurai:aquamarine_ore>, "epicsamurai_ore");
i(<item:epicsamurai:onyx_ore>, "epicsamurai_ore");

// ----- Vanilla -----


i(<item:minecraft:sponge>, "sponge");
//i(<tag:items:forge:bookshelves>, "bookshelves");
//i(<tag:blocks:minecraft:candles>, "candles");
i(<item:minecraft:white_candle>, "white_candle");
i(<item:minecraft:orange_candle>, "orange_candle");
i(<item:minecraft:magenta_candle>, "magenta_candle");
i(<item:minecraft:light_blue_candle>, "light_blue_candle");
i(<item:minecraft:yellow_candle>, "yellow_candle");
i(<item:minecraft:lime_candle>, "lime_candle");
i(<item:minecraft:pink_candle>, "pink_candle");
i(<item:minecraft:gray_candle>, "gray_candle");
i(<item:minecraft:light_gray_candle>, "light_gray_candle");
i(<item:minecraft:cyan_candle>, "cyan_candle");
i(<item:minecraft:purple_candle>, "purple_candle");
i(<item:minecraft:blue_candle>, "blue_candle");
i(<item:minecraft:brown_candle>, "brown_candle");
i(<item:minecraft:green_candle>, "green_candle");
i(<item:minecraft:red_candle>, "red_candle");
i(<item:minecraft:black_candle>, "black_candle");

// ----- Artifacts -----

i(<item:artifacts:umbrella>, "umbrella");

// ----- Blue Skies -----


i(<item:blue_skies:turquoise_stonebrick>, "everbright_portal");
i(<item:blue_skies:brewberry_bush>, "brewberry_bush");
i(<item:blue_skies:snowcap_mushroom>, "snowcap_mushroom");
i(<item:blue_skies:snowcap_pinhead>, "snowcap_pinhead");
i(<item:blue_skies:snowcap_oven>, "snowcap_oven");
i(<item:blue_skies:brumble>, "brumble");
i(<item:blue_skies:taratite>, "taratite");
i(<item:blue_skies:rimestone>, "rimestone");
i(<item:blue_skies:ventium_ingot>, "ventium");
i(<item:blue_skies:falsite_ingot>, "falsite");
i(<item:blue_skies:pearl>, "pearl");
i(<item:blue_skies:warding_pearl>, "warding_pearl");
i(<item:blue_skies:soul_fragment>, "soul_fragment");
i(<item:blue_skies:azulfo_horn>, "azulfo_horn");
i(<item:blue_skies:summoning_table>, "summoning_table");
i(<item:blue_skies:soulbound_spear>, "soulbound_spear");
i(<item:blue_skies:summoning_tome>, "summoning_tome");
i(<item:blue_skies:nature_key>, "nature_dungeon");
i(<item:blue_skies:crushing_hammer>, "crushing_hammer");
i(<item:blue_skies:lunar_stonebrick>, "everdawn_portal");
i(<item:blue_skies:baneful_mushroom>, "baneful_mushroom");
i(<item:blue_skies:crystal_flower>, "crystal_flower");
i(<item:blue_skies:spider_webbing>, "spider_webbing");
i(<item:blue_skies:crescent_fruit>, "crescent_fruit");
i(<item:blue_skies:sunstone_crystal>, "sunstone_crystal");
i(<item:blue_skies:horizonite_forge>, "horizonite_forge");
i(<item:blue_skies:cinderstone>, "cinderstone");
i(<item:blue_skies:umber>, "umber");
i(<item:blue_skies:crystallized_log>, "crystallized_tree");
i(<item:blue_skies:horizonite_ingot>, "horizonite");
i(<item:blue_skies:moonstone_shield>, "moonstone_shield");
i(<item:blue_skies:fox_pelt>, "fox_pelt");
i(<item:blue_skies:spike_shield>, "spike_shield");
i(<item:blue_skies:alchemy_table>, "alchemy_table");
i(<item:blue_skies:alchemy_scroll>, "alchemy_scroll");
i(<item:blue_skies:poison_key>, "poison_dungeon");
i(<item:blue_skies:venom_sac>, "venom_sac");
i(<item:blue_skies:different_sword>, "different_sword");
i(<item:blue_skies:blinding_key>, "blinding_dungeon");
i(<item:blue_skies:moonstone>, "moonstone");
i(<item:blue_skies:pyrope_gem>, "pyrope");
i(<item:blue_skies:aquite>, "aquite");
i(<item:blue_skies:diopside_gem>, "diopside");
i(<item:blue_skies:charoite>, "charoite");
i(<item:blue_skies:star_emitter>, "star_emitter");
i(<item:blue_skies:trough>, "trough");
i(<item:blue_skies:tool_box>, "tool_box");
i(<item:blue_skies:bag_of_spoils>, "bag_of_spoils");
i(<item:blue_skies:food_prep_table>, "food_prep_table");
i(<item:blue_skies:astrolabe>, "astrolabe");
i(<item:blue_skies:moonstone_shard>, "spears");
 
//i(<tag:items:blue_skies:tools>, "stick_variations");
//i(<tag:items:blue_skies:arcs>, "arcs");
i(<item:blue_skies:falsite_ingot>, "enchanting");
i(<item:minecraft:enchanting_table>, "enchanting");
i(<item:blue_skies:azulfo_spawn_egg>, "azulfo");
i(<item:blue_skies:stardust_ram_spawn_egg>, "stardust_ram");
i(<item:blue_skies:reindeer_spawn_egg>, "reindeer");
i(<item:blue_skies:snow_owl_spawn_egg>, "snow_owl");
i(<item:blue_skies:grittle_flatfish_spawn_egg>, "grittle_flatfish");
i(<item:blue_skies:armored_frost_spirit_spawn_egg>, "armored_frost_spirit");
i(<item:blue_skies:crynocerous_spawn_egg>, "crynocerous");
i(<item:blue_skies:polargeist_spawn_egg>, "polargeist");
i(<item:blue_skies:whistleshell_crab_spawn_egg>, "whistleshell_crab");
i(<item:blue_skies:shrumpty_spawn_egg>, "shrumpty");
i(<item:blue_skies:diophyde_prowler_spawn_egg>, "diophyde_prowler");
i(<item:blue_skies:seclam_spawn_egg>, "seclam");
i(<item:blue_skies:stonelet_spawn_egg>, "stonelet");
i(<item:blue_skies:spewter_spawn_egg>, "spewter");
i(<item:blue_skies:summoner_spawn_egg>, "summoner_pre");
i(<item:blue_skies:loot_bag_summoner>, "summoner_post");
i(<item:blue_skies:starlit_crusher_spawn_egg>, "starlit_crusher_pre");
i(<item:blue_skies:loot_bag_starlit_crusher>, "starlit_crusher_post");
i(<item:blue_skies:cosmic_fox_spawn_egg>, "cosmic_fox");
i(<item:blue_skies:crystal_camel_spawn_egg>, "crystal_camel");
i(<item:blue_skies:shade_monitor_spawn_egg>, "shade_monitor");
i(<item:blue_skies:crogre_spawn_egg>, "crogre");
i(<item:blue_skies:nyctofly_spawn_egg>, "nyctofly");
i(<item:blue_skies:venom_spider_spawn_egg>, "venom_spider");
i(<item:blue_skies:emberback_spawn_egg>, "emberback");
i(<item:blue_skies:infested_swarmer_spawn_egg>, "infested_swarmer");
i(<item:blue_skies:nested_spider_spawn_egg>, "nested_spider");
i(<item:blue_skies:alchemist_spawn_egg>, "alchemist_pre");
i(<item:blue_skies:loot_bag_alchemist>, "alchemist_post");
i(<item:blue_skies:arachnarch_spawn_egg>, "arachnarch_pre");
i(<item:blue_skies:loot_bag_arachnarch>, "arachnarch_post");

// ----- Unusual Prehistory -----

/*
i(<item:oddorganisms:leptictidium_spawn_egg>, "leptictidium");
i(<item:oddorganisms:eolactoria_spawn_egg>, "eolactoria");
i(<item:oddorganisms:doedicurus_spawn_egg>, "doedicurus");
i(<item:oddorganisms:dawn_horse_spawn_egg>, "dawn_horse");
i(<item:oddorganisms:apthoroblattina_spawn_egg>, "apthoroblattina");
i(<item:unusualprehistory:ulugh_spawn_egg>, "ulugh");
i(<item:unusualprehistory:trike_spawn_egg>, "trike");
i(<item:unusualprehistory:talpanas_spawn_egg>, "talpanas");
i(<item:unusualprehistory:stetha_spawn_egg>, "stetha");
i(<item:unusualprehistory:smilodon_spawn_egg>, "smilodon");
i(<item:unusualprehistory:sludge_spawn_egg>, "sludge");
i(<item:unusualprehistory:scau_spawn_egg>, "scau");
i(<item:unusualprehistory:sarracenia>, "sarracenia");
i(<item:unusualprehistory:rex_spawn_egg>, "rex");
i(<item:unusualprehistory:veloci_spawn_egg>, "raptor");
i(<item:unusualprehistory:raiguenrayun>, "raiguenrayun");
i(<item:unusualprehistory:quereuxia>, "quereuxia");
i(<item:unusualprehistory:paraceratherium_spawn_egg>, "paraceratherium");
i(<item:unusualprehistory:palaophis_spawn_egg>, "paleophis");
i(<item:unusualprehistory:pachy_spawn_egg>, "pachy");
i(<item:unusualprehistory:nelumbites>, "nelumbites");
i(<item:unusualprehistory:megatherium_spawn_egg>, "megatherium");
i(<item:unusualprehistory:megalania_spawn_egg>, "megalania");
i(<item:unusualprehistory:mammoth_spawn_egg>, "mammoth");
i(<item:unusualprehistory:majunga_spawn_egg>, "majungasaurus");
i(<item:unusualprehistory:leefructus>, "leefructus");
i(<item:unusualprehistory:kentro_spawn_egg>, "kentro");
i(<item:unusualprehistory:hwacha_spawn_egg>, "hwacha");
i(<item:unusualprehistory:ginkgo_sapling>, "gingko");
i(<item:unusualprehistory:fruit_loot_box>, "fruit_box");
i(<item:unusualprehistory:giganto_spawn_egg>, "gigantopithicus");
i(<item:unusualprehistory:foxii_sapling>, "foxii");
i(<item:unusualprehistory:eryon_spawn_egg>, "eryon");
i(<item:unusualprehistory:encrusted_spawn_egg>, "encrusted");
i(<item:unusualprehistory:dunk_spawn_egg>, "dunk");
i(<item:unusualprehistory:dryo_sapling>, "dryophyllum");
i(<item:unusualprehistory:coty_spawn_egg>, "coty");
i(<item:unusualprehistory:clathrodictyon>, "clathrodictyon");
i(<item:unusualprehistory:brachi_spawn_egg>, "brachi");
i(<item:unusualprehistory:bennett>, "bennet");
i(<item:unusualprehistory:beelz_spawn_egg>, "beelz");
i(<item:unusualprehistory:barinasuchus_spawn_egg>, "barinasuchus");
i(<item:unusualprehistory:austroraptor_spawn_egg>, "austro");
i(<item:unusualprehistory:archaeos>, "archaeos");
i(<item:unusualprehistory:archaefructus>, "archaefructus");
i(<item:unusualprehistory:anuro_spawn_egg>, "anuro");
i(<item:unusualprehistory:antarcto_spawn_egg>, "antarcto");
i(<item:unusualprehistory:ammon_spawn_egg>, "ammon");

*/





    
  
  
