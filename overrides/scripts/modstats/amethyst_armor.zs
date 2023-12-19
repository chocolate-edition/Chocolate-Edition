import crafttweaker.api.entity.attribute.AttributeOperation;

<item:predators:amethyst_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.helmet, "Nerf_Amethyst_Helmet", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:predators:amethyst_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.chestplate, "Nerf_Amethyst_Chest", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:predators:amethyst_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.leggings, "Nerf_Amethyst_Leggings", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:predators:amethyst_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.boots, "Nerf_Amethyst_Boots", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:predators:amethyst_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.helmet, "Nerf_Amethyst_Helmet_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:predators:amethyst_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.chestplate, "Nerf_Amethyst_Chest_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:predators:amethyst_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.leggings, "Nerf_Amethyst_Leggins_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:predators:amethyst_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.boots, "Nerf_Amethyst_Boots_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
