import crafttweaker.api.entity.attribute.AttributeOperation;

<item:born_in_chaos_v1:dark_metal_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.chestplate, "Nerf_Dark_Metal_Chest_armor", 10, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:born_in_chaos_v1:dark_metal_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.helmet, "Nerf_Dark_Metal_Helmet_Toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:born_in_chaos_v1:dark_metal_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.chestplate, "Nerf_Dark_Metal_Chest_Toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:born_in_chaos_v1:dark_metal_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.leggings, "Nerf_Dark_Metal_Leggings_Toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:born_in_chaos_v1:dark_metal_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.boots, "Nerf_Dark_Metal_Boots_Toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);


