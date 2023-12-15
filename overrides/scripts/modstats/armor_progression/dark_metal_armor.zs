import crafttweaker.api.entity.attribute.AttributeOperation;

<item:born_in_chaos_v1:dark_metal_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf_Dark_Metal_Chest_armor", -1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:born_in_chaos_v1:dark_metal_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf_Dark_Metal_Helmet_Toughness", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:born_in_chaos_v1:dark_metal_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf_Dark_Metal_Chest_Toughness", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:born_in_chaos_v1:dark_metal_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf_Dark_Metal_Leggings_Toughness", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:born_in_chaos_v1:dark_metal_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf_Dark_Metal_Boots_Toughness", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
