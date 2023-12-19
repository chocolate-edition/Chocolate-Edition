import crafttweaker.api.entity.attribute.AttributeOperation;

<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, AttributeIds.swordSpeed, "Nerf_Forbidden_Axe_Speed", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:alexsmobs:skelewag_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, AttributeIds.swordSpeed, "Nerf_Skelewag_Speed", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:dungeons_gear:bee_stinger>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, AttributeIds.swordSpeed, "Nerf_Bee_Stinger_Speed", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

<item:witherstormmod:command_block_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, AttributeIds.swordSpeed, "Buff_Command_Sword_Damage", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);