import crafttweaker.api.entity.attribute.AttributeOperation;

<item:cataclysm:bone_reptile_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.helmet, "Buff_Bone_Reptile_Helmet_Armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:cataclysm:bone_reptile_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, AttributeIds.chestplate, "Buff_Bone_Reptile_Chest_Armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);