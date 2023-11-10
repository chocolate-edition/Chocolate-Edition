import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;

function i(m as IItemStack, s as string) as void {
	Jei.addIngredientInformation(m, Component.translatable("jei_desc.chocolate." + s));	
}

// ----- Mechanic Changes -----


// ----- Item Uses -----
i(<item:minecraft:potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "chemical_x");
i(<item:minecraft:splash_potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "chemical_x");
i(<item:minecraft:lingering_potion>.withTag({Potion: "mutantmonsters:chemical_x"}), "chemical_x");
i(<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:mending"}]}), "mending");
i(<item:cataclysm:burning_ashes>, "burning_ashes");
i(<item:cataclysm:abyssal_sacrifice>, "abyssal_sacrifice");
i(<item:enigmaticlegacy:astral_dust>, "astral_dust_1");
i(<item:enigmaticlegacy:astral_dust>, "astral_dust_2");