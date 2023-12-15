import crafttweaker.api.entity.attribute.AttributeOperation;

<item:majruszsdifficulty:enderium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet_Armor", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:majruszsdifficulty:enderium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Chest_Armor", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:majruszsdifficulty:enderium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Leggings_Armor", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:majruszsdifficulty:enderium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet_Armor", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:majruszsdifficulty:enderium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Helmet_Tough", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:majruszsdifficulty:enderium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Chest_Tough", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:majruszsdifficulty:enderium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Leggings_Tough", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:majruszsdifficulty:enderium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Helmet_Tough", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
