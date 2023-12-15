import crafttweaker.api.entity.attribute.AttributeOperation;

<item:minecraft:iron_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff_Enderium_Helmet", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:minecraft:iron_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:forge:attack_range>, "Buff_Enderium_Helmet", 10, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:minecraft:iron_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:forge:swim_speed>, "Buff_Enderium_Helmet", 10, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:minecraft:iron_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:dungeons_libraries:life_steal>, "Buff_Enderium_Helmet", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:minecraft:iron_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:diet:natural_regeneration>, "Buff_Enderium_Helmet", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
//<item:minecraft:iron_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Buff_Enderium_Helmet", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

/*
<attribute:minecraft:generic.armor>
<attribute:minecraft:generic.armor_toughness>

<attribute:minecraft:generic.attack_damage>
<attribute:minecraft:generic.attack_knockback>
<attribute:minecraft:generic.attack_speed>

<attribute:minecraft:generic.knockback_resistance>
<attribute:minecraft:generic.max_health>
<attribute:minecraft:generic.movement_speed>

<attribute:forge:attack_range>
<attribute:forge:reach_distance>
<attribute:forge:swim_speed>
<attribute:dungeons_libraries:life_steal>
<attribute:diet:natural_regeneration>
*/