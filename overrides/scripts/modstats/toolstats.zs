import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.item.ItemCooldowns;
import crafttweaker.api.world.ServerLevel;
// IItemStack.addGlobalAttributeModifier(attribute as Attribute, name as string, value as double, operation as AttributeOperation, slotTypes as EquipmentSlot[])

<item:predators:earthbreaker>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:predators:sultan_of_fegefeuer>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:predators:prisblade>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:enigmaticlegacy:forbidden_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Nerf", -0.6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:alexsmobs:skelewag_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:dungeons_gear:bee_stinger>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Nerf", -0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:epicsamurai:nagamaki>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:alexsmobs:skelewag_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:epicsamurai:naginata>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

<item:witherstormmod:command_block_axe>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

<item:witherstormmod:command_block_sword>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Buff", 0.4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:graveyard:bone_dagger>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Nerf", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

<item:born_in_chaos_v1:dark_metal_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", -1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:born_in_chaos_v1:dark_metal_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:born_in_chaos_v1:dark_metal_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", -0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:born_in_chaos_v1:dark_metal_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:born_in_chaos_v1:dark_metal_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:born_in_chaos_v1:dark_metal_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", -0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:born_in_chaos_v1:dark_metal_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:majruszsdifficulty:enderium_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", 1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:majruszsdifficulty:enderium_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", 1.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:majruszsdifficulty:enderium_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:predators:amethyst_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", -3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:predators:amethyst_armor_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:predators:amethyst_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:predators:amethyst_armor_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -4.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:predators:amethyst_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:predators:amethyst_armor_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:predators:amethyst_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Nerf", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:predators:amethyst_armor_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Nerf", -4.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);



// use shift alt f 


// crafttweaker.api.item.ItemCooldowns.addCooldown(<item:predators:weathering>.definition, 200);
// crafttweaker.api.item.ItemCooldowns.addCooldown(<item:predators:wave_of_abyss>.definition, 400);


  #event boilerplate here...

// event.player.cooldowns.addCooldown(<item:predators:weathering>.definition, 200);

  #event boilerplate here...