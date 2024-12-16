import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import mods.create.SplashingManager;

furnace.addRecipe("crushed_silver_to_silver_ingot", <item:galosphere:silver_ingot>, <item:create:crushed_raw_silver>, 0.1, 200);
blastFurnace.addRecipe("crushed_silver_to_silver_ingot_blast", <item:galosphere:silver_ingot>, <item:create:crushed_raw_silver>, 0.1, 100);

<recipetype:create:splashing>.addRecipe("crushed_silver_wash", [(<item:galosphere:silver_nugget> * 9) % 100, <item:minecraft:gunpowder> % 25], <item:create:crushed_raw_silver>, 200);