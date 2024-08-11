<recipetype:summoningrituals:altar>.addJsonRecipe("scarab", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
       // { "item": "minecraft:suspicious_sand" }, 
        { "mob": "predators:scarab" }
    ],
    "inputs": [	
	{ "ingredient": { "item": "alexsmobs:pocket_sand" }, "count": 1 },
	{ "ingredient": { "item": "minecraft:red_sand" }, "count": 16 },
	{ "ingredient": { "item": "minecraft:sand" }, "count": 16 },
	{ "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	{ "ingredient": { "item": "alexsmobs:tarantula_hawk_wing_fragment" }, "count": 2 },
        { "ingredient": { "item": "alexsmobs:cockroach_wing_fragment" }, "count": 2 }
    ],  
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:sandstone" },
	"day_time": "NIGHT"
}
);

/*
<recipetype:summoningrituals:altar>.addJsonRecipe("scarab-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
        { "item": "minecraft:suspicious_sand" }, 
        { "mob": "predators:scarab" }
    ],
    "inputs": [	
	{ "item": "minecraft:suspicious_sand" }, 
    ],  
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:sandstone" },
	"day_time": "NIGHT"
}
);
*/