import crafttweaker.api.loot.table.LootTableManager;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.DamageSourceLootCondition;
import crafttweaker.api.predicate.DamageSourcePredicate;
import crafttweaker.api.loot.condition.KilledByPlayerLootCondition;
import crafttweaker.api.loot.condition.WeatherCheckLootCondition;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.predicate.EntityPredicate;
import crafttweaker.api.predicate.EntityEquipmentPredicate;
import crafttweaker.api.predicate.ItemPredicate;
import crafttweaker.api.entity.Entity;

import stdlib.List;

// <entity>.addLootModifier("name", CommonLootModifiers.remove(<item>));
<entitytype:minecraft:iron_golem>.addLootModifier("remove", CommonLootModifiers.remove(<item:minecraft:iron_block>));
<entitytype:naturalist:deer>.addLootModifier("remove3", CommonLootModifiers.remove(<item:naturalist:venison>));
<entitytype:predators:rock_boss>.addLootModifier("remove4", CommonLootModifiers.remove(<item:minecraft:enchanted_golden_apple>));








