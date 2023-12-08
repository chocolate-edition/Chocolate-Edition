import crafttweaker.api.recipe.BlastFurnaceRecipeManager;

var raw_items = [
<item:minecraft:raw_copper_block>,
<item:minecraft:raw_gold_block>,
<item:minecraft:raw_iron_block>,
<item:blue_skies:raw_aquite_block>,
<item:blue_skies:raw_charoite_block>,
<item:blue_skies:raw_falsite_block>,
<item:blue_skies:raw_horizonite_block>,
<item:blue_skies:raw_ventium_block>,
<item:create:raw_zinc_block>,
<item:enlightened_end:raw_bismuth_block>,
<item:enlightened_end:raw_irradium_block>,
<item:galosphere:raw_silver_block>
];

var blasted_items = [
<item:minecraft:copper_block>,
<item:minecraft:gold_block>,
<item:minecraft:iron_block>,
<item:blue_skies:aquite_block>,
<item:blue_skies:charoite_block>,
<item:blue_skies:falsite_block>,
<item:blue_skies:horizonite_block>,
<item:blue_skies:ventium_block>,
<item:create:zinc_block>,
<item:enlightened_end:bismuth_block>,
<item:enlightened_end:irradium_block>,
<item:galosphere:silver_block>
];

var index = 0;
//for all the blocks that need smelting
for item in raw_items{
var recipe_name = item.toString();

//sets the boundaries for recipe name string
var x as usize = recipe_name.lastIndexOf(":") + 1;
var y as usize = recipe_name.length-1;

//adds the item recipe
blastFurnace.addRecipe(recipe_name[x..y], blasted_items[index], item, 10, 300);
index ++;
}
