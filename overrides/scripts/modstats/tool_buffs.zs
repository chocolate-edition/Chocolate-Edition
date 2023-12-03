import crafttweaker.api.entity.attribute.AttributeOperation;

<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff_Forbidden_Axe_Damage", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:witherstormmod:command_block_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff_Command_Axe_Damage", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:witherstormmod:command_block_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Buff_Command_Sword_Damage", 0.4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
