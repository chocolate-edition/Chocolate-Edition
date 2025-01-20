import crafttweaker.api.entity.attribute.AttributeOperation;

<item:majruszsdifficulty:enderium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.helmet, "Buff_Enderium_Helmet_Armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:majruszsdifficulty:enderium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.chestplate, "Buff_Enderium_Chest_Armor", 10, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:majruszsdifficulty:enderium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.leggings, "Buff_Enderium_Leggings_Armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:majruszsdifficulty:enderium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.boots, "Buff_Enderium_Helmet_Armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:majruszsdifficulty:enderium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.helmet, "Buff_Enderium_Helmet_Tough", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:majruszsdifficulty:enderium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.chestplate, "Buff_Enderium_Chest_Tough", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:majruszsdifficulty:enderium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.leggings, "Buff_Enderium_Leggings_Tough", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:majruszsdifficulty:enderium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.boots, "Buff_Enderium_Helmet_Tough", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
