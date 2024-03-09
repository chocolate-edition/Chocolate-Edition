<recipetype:summoningrituals:altar>.addJsonRecipe("amethyst", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
        { "mob": "predators:rock_boss" },
        { "item": "predators:amethyst_geode" }
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
    	"block_below": { "block": "minecraft:budding_amethyst" },
	"day_time": "NIGHT"
}
);

<recipetype:summoningrituals:altar>.addJsonRecipe("amethyst-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
        { "mob": "predators:rock_boss" },
        { "item": "predators:amethyst_geode" }
    ],
    "inputs": [
     { "item": "predators:amethyst_geode" }
    ],  
   	"recipe_time": 200,
    	"block_below": { "block": "minecraft:budding_amethyst" },
	"day_time": "NIGHT"
}
);