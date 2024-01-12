import crafttweaker.api.recipe.BlastFurnaceRecipeManager;

var blastingConversions = {
    <item:minecraft:raw_copper_block> : <item:minecraft:copper_block>,
    <item:minecraft:raw_gold_block> : <item:minecraft:gold_block>,
    <item:minecraft:raw_iron_block> : <item:minecraft:iron_block>,
    <item:blue_skies:raw_aquite_block> : <item:blue_skies:aquite_block>,
    <item:blue_skies:raw_charoite_block> : <item:blue_skies:charoite_block>,
    <item:blue_skies:raw_falsite_block> : <item:blue_skies:falsite_block>,
    <item:blue_skies:raw_horizonite_block> : <item:blue_skies:horizonite_block>,
    <item:blue_skies:raw_ventium_block> : <item:blue_skies:ventium_block>,
    <item:create:raw_zinc_block> : <item:create:zinc_block>,
    <item:enlightened_end:raw_bismuth_block> : <item:enlightened_end:bismuth_block>,
    <item:enlightened_end:raw_irradium_block> : <item:enlightened_end:irradium_block>,
    <item:galosphere:raw_silver_block> : <item:galosphere:silver_block>
};

//for all the blocks that need smelting
for raw, blasted in blastingConversions //'raw' is the key/first value in the map, blasted is the second value in the map
{
    var itemString = raw.toString();

    //sets the boundaries for recipe name string
    var itemStringStart as usize = itemString.lastIndexOf(":") + 1;
    var itemStringEnd as usize = itemString.length-1;
    var recipeName = "blasted_" + raw.toString()[itemStringStart..itemStringEnd];

    //adds the item recipe
    blastFurnace.addRecipe(recipeName, blasted, raw, 10, 800);
   
} 