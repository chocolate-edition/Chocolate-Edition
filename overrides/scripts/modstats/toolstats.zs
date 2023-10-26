import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.item.ItemCooldowns;
import crafttweaker.api.world.ServerLevel;

// IItemStack.addGlobalAttributeModifier(attribute as Attribute, name as string, value as double, operation as AttributeOperation, slotTypes as EquipmentSlot[])

<item:predators:earthbreaker>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:predators:sultan_of_fegefeuer>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:predators:prisblade>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:enigmaticlegacy:forbidden_axe>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:enigmaticlegacy:forbidden_axe>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Nerf", -0.6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:alexsmobs:skelewag_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:dungeons_gear:bee_stinger>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Nerf", -0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:epicsamurai:nagamaki>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:alexsmobs:skelewag_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:epicsamurai:naginata>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

<item:witherstormmod:command_block_axe>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

<item:witherstormmod:command_block_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Buff", 0.4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:graveyard:bone_dagger>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);


// crafttweaker.api.item.ItemCooldowns.addCooldown(<item:predators:weathering>.definition, 200);
// crafttweaker.api.item.ItemCooldowns.addCooldown(<item:predators:wave_of_abyss>.definition, 400);


  #event boilerplate here...

// event.player.cooldowns.addCooldown(<item:predators:weathering>.definition, 200);

  #event boilerplate here...