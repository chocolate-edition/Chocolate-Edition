import crafttweaker.api.entity.attribute.AttributeOperation;

<item:aquaculture:neptunium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.helmet, "Buff_Neptunium_Helmet_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:aquaculture:neptunium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.chestplate, "Buff_Neptunium_Chest_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:aquaculture:neptunium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.leggings, "Buff_Neptunium_Leggings_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:aquaculture:neptunium_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, AttributeIds.boots, "Buff_Neptunium_Boots_Toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
