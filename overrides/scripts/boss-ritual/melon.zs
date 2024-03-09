<recipetype:summoningrituals:altar>.addJsonRecipe("melon", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "farmersdelight:melon_popsicle" },
        { "mob": "predators:melon_goliath", "offset": { "x": -3, "y":0, "z": -3 } },
	{ 
		"mob": "predators:melon_walker", 
		"count": 3,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
	{ 
		"mob": "predators:melon_vine", 
		"count": 10, 
		"offset": { "x": -3, "y": -1, "z": -3 },
		"spread": { "x": 6, "y": 0, "z": 6 }
	}
    ],
    "inputs": [
        { "ingredient": { "item": "create:tree_fertilizer" }, "count": 8 }, 
	{ "ingredient": { "item": "farmersdelight:melon_juice" }, "count": 8 },
	{ "ingredient": { "item": "delightful:mini_melon" }, "count": 16 },
	{ "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	{ "ingredient": { "item": "minecraft:melon_slice" }, "count": 8 },
        { "ingredient": { "item": "minecraft:glistering_melon_slice" }, "count": 8 }
    ],  
    	"recipe_time": 200,
    	"block_below": { "block": "minecraft:melon" },
	"day_time": "NIGHT",
	"weather": "RAIN"
}
);

<recipetype:summoningrituals:altar>.addJsonRecipe("melon-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "farmersdelight:melon_popsicle" },
        { "mob": "predators:melon_goliath", "offset": { "x": -3, "y":0, "z": -3 } },
	{ 
		"mob": "predators:melon_walker", 
		"count": 3,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
	{ 
		"mob": "predators:melon_vine", 
		"count": 10, 
		"offset": { "x": -3, "y": -1, "z": -3 },
		"spread": { "x": 6, "y": 0, "z": 6 }
	}
    ],
    "inputs": [
       { "item": "farmersdelight:melon_popsicle" }
    ],  
    	"recipe_time": 200,
    	"block_below": { "block": "minecraft:melon" },
	"day_time": "NIGHT",
	"weather": "RAIN"
}
);