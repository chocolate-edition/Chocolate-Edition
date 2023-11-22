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
