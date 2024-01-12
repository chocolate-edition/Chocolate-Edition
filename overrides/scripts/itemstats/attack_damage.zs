import crafttweaker.api.entity.attribute.AttributeOperation;

// ----------------- ALL THESE VALUES ARE ONE (1) LESS THAN THEY APPEAR IN GAME ----------------//
// ---------------------MAKE SURE TO SUBTRACT ONE (1) FROM YOUR INTENDED VALUE ----------------//
// -------------------------- IF IT'S 13 HERE IT WILL BE 14 IN GAME ---------------------------//
<item:predators:earthbreaker>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Nerf_EarthBreaker_Damage", 15, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:predators:sultan_of_fegefeuer>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Nerf_Sultan_Damage", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:predators:prisblade>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Nerf_Prisblade_Damage", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:epicsamurai:nagamaki>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Nerf_Nagamki_Damage", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:alexsmobs:skelewag_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Nerf_Skelewag_Damage", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:epicsamurai:naginata>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Nerf_Naginata_Damage", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:graveyard:bone_dagger>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Nerf_Bone_Dagger_Damage", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);


<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Buff_Forbidden_Axe_Damage", 15, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:witherstormmod:command_block_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, AttributeIds.swordAttack, "Buff_Command_Axe_Damage", 13, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);