import crafttweaker.api.entity.attribute.AttributeOperation;

<item:enlightened_end:adamantite_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:enlightened_end:adamantite_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Chest", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:enlightened_end:adamantite_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Leggings", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:enlightened_end:adamantite_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:enlightened_end:adamantite_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "Buff_Enderium_Helmet", -0.15, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:enlightened_end:adamantite_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "Buff_Enderium_Chest", -0.15, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:enlightened_end:adamantite_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "Buff_Enderium_Leggings", -0.15, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:enlightened_end:adamantite_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "Buff_Enderium_Helmet", -0.15, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);

