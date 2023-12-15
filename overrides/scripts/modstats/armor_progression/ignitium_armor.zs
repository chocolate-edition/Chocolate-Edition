import crafttweaker.api.entity.attribute.AttributeOperation;

<item:cataclysm:ignitium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:cataclysm:ignitium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Chest", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:cataclysm:ignitium_elytra_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Leggings", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:cataclysm:ignitium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:cataclysm:ignitium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Buff_Enderium_Helmet", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:cataclysm:ignitium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Helmet", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:cataclysm:ignitium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Chest", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:cataclysm:ignitium_elytra_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Leggings", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:cataclysm:ignitium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Helmet", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:cataclysm:ignitium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Buff_Enderium_Helmet", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
