import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;
#priority -11


function i(m as IItemStack, s as string) as void {
	Jei.addIngredientInformation(m, Component.literal(s));	
}
// =============== Stage Notes ===============
for element in <tag:items:chocolate:stage_one_item>
	i(element, "This item is gated to 3 eyes of power");
for element in <tag:items:chocolate:stage_two_item> 
	i(element, "This item is gated to 6 eyes of power");
for element in <tag:items:chocolate:stage_three_item> 
	i(element, "This item is gated to 9 eyes of power");
for element in <tag:items:chocolate:stage_four_item>
	i(element, "This item is gated to 12 eyes of power");
for element in <tag:items:chocolate:stage_five_item>
	i(element, "This item is gated to 16 eyes of power");
// =============== Tutorials ===============


// Chemical X
i(<item:minecraft:potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "Brew a Hulk Hammer, Endersoul Hand, Mutant Skeleton Skull, or Creeper Shard into a Think Potion");
i(<item:minecraft:splash_potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "Brew a Hulk Hammer, Endersoul Hand, Mutant Skeleton Skull, or Creeper Shard into a Think Potion");
i(<item:minecraft:lingering_potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "Brew a Hulk Hammer, Endersoul Hand, Mutant Skeleton Skull, or Creeper Shard into a Think Potion");

// Cataclysm
i(<item:cataclysm:burning_ashes>, "Use this item on the Alter of Fire to summon Ignis");
i(<item:cataclysm:altar_of_fire>, "Use Burning Ashes on this item to summon Ignis");
i(<item:cataclysm:abyssal_sacrifice>, "Use this item on the Alter of Abyss to summon the Leviathan");
i(<item:cataclysm:altar_of_abyss>, "Use an Abyssal Sacrifice on this item to summon the Leviathan");
i(<item:cataclysm:mech_eye>, "This eye will lead you to the location of The Harbinger, A long forgotten Mechanical Monster");
i(<item:cataclysm:flame_eye>, "This eye will lead you to the location of Ignis, The Smith God ");
i(<item:cataclysm:void_eye>, "This eye will lead you to the location of the Ender Guardian");
i(<item:cataclysm:monstrous_eye>, "This eye will lead you to the location of the Netherite Monstrosity");
i(<item:cataclysm:abyss_eye>, "This eye will lead you to the location of the Leviathan");

// Artifact Repair Dust
for element in <tag:items:artifacts:artifacts>
	i(element, "This item can be repaired in an anvil with Dubious Dust");
i(<item:nameless_trinkets:dubious_dust>, "This item can be use to repair artifacts in an anvil");


// =============== Misc ===============
i(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:mending"}]}), "Mending can now be crafted!");

// Backpacks
i(<item:sophisticatedbackpacks:backpack>, "Wearing more than one backpack will encumber you, reducing your speed");
//i(<item:sophisticatedbackpacks:iron_backpack>, "Wearing more than one backpack will encumber you, reducing your speed");
i(<item:sophisticatedbackpacks:gold_backpack>, "Wearing more than one backpack will encumber you, reducing your speed");
i(<item:sophisticatedbackpacks:diamond_backpack>, "Wearing more than one backpack will encumber you, reducing your speed");
i(<item:sophisticatedbackpacks:netherite_backpack>, "Wearing more than one backpack will encumber you, reducing your speed");

// ----- Vanilla -----

i(<item:minecraft:white_candle>, "Placing these around an enchantment table increases the chances of Unbreaking enchants");
i(<item:minecraft:orange_candle>, "Placing these around an enchantment table increases the chances of Fire Protection enchants");
i(<item:minecraft:magenta_candle>, "Placing these around an enchantment table increases the chances of Knockback and Punch enchants");
i(<item:minecraft:light_blue_candle>, "Placing these around an enchantment table increases the chances of Feather Falling enchants");
i(<item:minecraft:yellow_candle>, "Placing these around an enchantment table increases the chances of Looting, Fortune, and Luck of the Sea enchants");
i(<item:minecraft:lime_candle>, "Placing these around an enchantment table increases the chances of Blast Protection enchants");
i(<item:minecraft:pink_candle>, "Placing these around an enchantment table increases the chances of Silk Touch and Channeling enchants");
i(<item:minecraft:gray_candle>, "Placing these around an enchantment table increases the chances of Bane of Arthropods enchants");
i(<item:minecraft:light_gray_candle>, "Placing these around an enchantment table increases the chances of Protection enchants");
i(<item:minecraft:cyan_candle>, "Placing these around an enchantment table increases the chances of Respiration, Loyalty, and Infinity enchants");
i(<item:minecraft:purple_candle>, "Placing these around an enchantment table increases the chances of Sweeping Edge and Multishot enchants");
i(<item:minecraft:blue_candle>, "Placing these around an enchantment table increases the chances of Efficiency, Sharpness, Lure, Power, Impaling, and Quick Charge enchants");
i(<item:minecraft:brown_candle>, "Placing these around an enchantment table increases the chances of Aqua Affinity, Depth Strider, and Riptide enchants");
i(<item:minecraft:green_candle>, "Placing these around an enchantment table increases the chances of Thorns and Piercing enchants");
i(<item:minecraft:red_candle>, "Placing these around an enchantment table increases the chances of Fire Aspect and Flame enchants");
i(<item:minecraft:black_candle>, "Placing these around an enchantment table increases the chances of Smite and Projectile Protection enchants");


  






/*
// Astral Dust Brewing
i(<item:enigmaticlegacy:astral_dust>, "astral_dust_1");
i(<item:enigmaticlegacy:astral_dust>, "astral_dust_2");

// Prismarine to Elder Prismarine conversion
i(<item:upgrade_aquatic:prismarine_coral_block>, "prismarine_to_elder");
i(<item:upgrade_aquatic:prismarine_coral>, "prismarine_to_elder");
i(<item:upgrade_aquatic:prismarine_coral_fan>, "prismarine_to_elder");
i(<item:upgrade_aquatic:prismarine_coral_shower>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral_block>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral_fan>, "prismarine_to_elder");
i(<item:upgrade_aquatic:elder_prismarine_coral_shower>, "prismarine_to_elder");

// Infusion Table
i(<item:infusion_table:infusion_table>, "infusion_table_1");
i(<item:infusion_table:infusion_table>, "infusion_table_2");

//Other
i(<item:cataclysm:altar_of_amethyst>, "crab_meat_blessing");
i(<item:cataclysm:amethyst_crab_meat>, "crab_meat_blessing");
i(<item:cataclysm:blessed_amethyst_crab_meat>, "crab_meat_blessing");

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
*/