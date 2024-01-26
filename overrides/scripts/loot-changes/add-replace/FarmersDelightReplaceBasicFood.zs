/*
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.item.IItemStack;


//loot.modifiers.register("replace_iron_nugget",/* name */
//LootConditions.none(), /* condition -- global */
//CommonLootModifiers.replaceStackWith( <item:minecraft:iron_nugget> as IIngredient, <item:minecraft:dirt> )); /* modifier */

loot.modifiers.register(
    "farmers_delight_replace_basic_food",
    LootConditions.none(),
    (stacks, context) => {

        
        val newList = new stdlib.List<IItemStack>();
        val random = context.random;
         // Change range to include 2


        var lvl2Food =
        [
        <item:farmersdelight:barbecue_stick>,
        <item:farmersdelight:baked_cod_stew>,
        <item:farmersdelight:beef_stew>,
        <item:farmersdelight:bone_broth>,
        <item:farmersdelight:cabbage_rolls>,
        <item:farmersdelight:chicken_soup>,
        <item:farmersdelight:cod_roll>,
        <item:farmersdelight:dog_food>,
        <item:farmersdelight:egg_sandwich>,
        <item:farmersdelight:fish_stew>,
        <item:farmersdelight:fruit_salad>,
        <item:farmersdelight:kelp_roll>,
        <item:farmersdelight:kelp_roll_slice>,
        <item:farmersdelight:shepherds_pie>,
        <item:farmersdelight:pumpkin_soup>,
        <item:farmersdelight:salmon_roll>,
        <item:farmersdelight:stuffed_potato>,
        <item:farmersdelight:vegetable_noodles>,
        <item:farmersdelight:vegetable_soup>
        ];
        var lvl2Count = lvl2Food.length;


        var lvl3Food = 
        [
        <item:farmersdelight:bacon_and_eggs>,
        <item:farmersdelight:bacon_sandwich>,
        <item:farmersdelight:stuffed_pumpkin>,
        <item:farmersdelight:chicken_sandwich>,
        <item:farmersdelight:dumplings>,
        <item:farmersdelight:fried_rice>,
        <item:farmersdelight:glow_berry_custard>,
        <item:farmersdelight:grilled_salmon>,
        <item:farmersdelight:hamburger>,
        <item:farmersdelight:mutton_wrap>,
        <item:farmersdelight:noodle_soup>,
        <item:farmersdelight:pasta_with_meatballs>,
        <item:farmersdelight:pasta_with_mutton_chop>,
        <item:farmersdelight:roast_chicken>,
        <item:farmersdelight:roasted_mutton_chops>,
        <item:farmersdelight:squid_ink_pasta>,
        <item:farmersdelight:steak_and_potatoes>
        ];
        var lvl3Count = lvl3Food.length;


        var lvl4Food = 
        [
        <item:farmersdelight:honey_glazed_ham>
        ];
        var lvl4Count = lvl4Food.length;


        var didMatch = false;
        
        var toReplace =
        [
        <item:minecraft:glow_berries>,
        <item:minecraft:wheat>,
        <item:minecraft:wheat_seeds>,
        <item:minecraft:beetroot_seeds>,
        <item:minecraft:pumpkin_seeds>,
        <item:minecraft:melon_seeds>,
        <item:minecraft:potato>,
        <item:minecraft:carrot>,
        
        <item:farmersdelight:rice>,
        <item:farmersdelight:onion>,
        <item:farmersdelight:tomato_seeds>,
        <item:farmersdelight:cabbage_seeds>,

        <item:supplementaries:flax_seeds>
        
        
        ];

        for item in stacks 
       {
        var levelChoice = random.nextInt(100)+1; // gives numb 1 - 100
       
       for replace in toReplace 
       {
       if(replace.matches(item)) {didMatch = true;}
       
       }


            if (didMatch && levelChoice <= 75) 
            {
            newList.add(lvl2Food[random.nextInt(lvl2Count as int)] * item.amount); // gives random item from array, rolls 0 - array max
            }

            else if (didMatch && levelChoice <= 95 && levelChoice > 75) 
            {
            newList.add(lvl3Food[random.nextInt(lvl3Count as int)] * item.amount); // gives random item from array, rolls 0 - array max
            }

            else if (didMatch && levelChoice <= 100 && levelChoice > 95)
            {
            newList.add(lvl4Food[random.nextInt(lvl4Count as int)] * item.amount); // gives random item from array, rolls 0 - array max
            }
            
            else
            {
            newList.add(item);
            }
            didMatch = false;
        }

        return newList; // Return the modified list after the loop
    }
);

*/