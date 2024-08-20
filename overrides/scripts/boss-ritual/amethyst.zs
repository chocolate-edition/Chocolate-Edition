<recipetype:summoningrituals:altar>.addJsonRecipe("amethyst", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
        { "mob": "predators:rock_boss" },
        { "item": "contenttweaker:amethyst_summoner" }
    ],
    "inputs": [
        { "ingredient": { "item": "epicsamurai:amethyst_ingot" }, "count": 8 }, 
	{ "ingredient": { "item": "minecraft:deepslate" }, "count": 16 },
	{ "ingredient": { "item": "minecraft:amethyst_block" }, "count": 16 },
	{ "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	{ "ingredient": { "item": "iter_rpg:ametrine_shard" }, "count": 8 },
        { "ingredient": { "item": "minecraft:amethyst_shard" }, "count": 8 }
    ],  
   	"recipe_time": 200,
    	"block_below": { "block": "contenttweaker:amethyst_core" },
	"day_time": "NIGHT"
}
);

<recipetype:summoningrituals:altar>.addJsonRecipe("amethyst-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
        { "mob": "predators:rock_boss" },
        { "item": "contenttweaker:amethyst_summoner" }
    ],
    "inputs": [
     { "item": "contenttweaker:amethyst_summoner" }
    ],  
   	"recipe_time": 200,
    	"block_below": { "block": "contenttweaker:amethyst_core" },
	"day_time": "NIGHT"
}
);
