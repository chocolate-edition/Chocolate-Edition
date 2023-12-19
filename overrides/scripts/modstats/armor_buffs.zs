import crafttweaker.api.entity.attribute.AttributeOperation;

<item:majruszsdifficulty:enderium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:majruszsdifficulty:enderium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Chest", 1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:majruszsdifficulty:enderium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Leggings", 1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);